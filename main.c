#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>
#include <sys/types.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <sys/poll.h>

#include "vector.h"
#include "client.h"

#define LISTEN_SOCK_INDEX 0

#define PORT 25565
#define INITIAL_CONN_SIZE 255

int sock_bind_inet(int sockfd, int port) {
    struct sockaddr_in addr;

    addr.sin_addr.s_addr = INADDR_ANY;
    addr.sin_family = AF_INET;
    addr.sin_port = htons(port);

    return bind(sockfd,(struct sockaddr*)&addr, sizeof(addr));
}

void main(void) {
    int tcp_sock = socket(AF_INET, SOCK_STREAM | SOCK_NONBLOCK, IPPROTO_TCP);

    vector pollfd_vec = vector_new(sizeof(struct pollfd), INITIAL_CONN_SIZE);
    vector clients_vec = vector_new(sizeof(client_t), INITIAL_CONN_SIZE);


 // empty client because pollfd_vec[i] corresponds to clients_vec[i]
 // but pollfd_vec[0] is accept socket
    vector_append(clients_vec, client_new(0));


    if (tcp_sock == -1) {
        perror("can't create socket");
        exit(EXIT_FAILURE);
    }
    if (sock_bind_inet(tcp_sock, PORT) == -1) {
        perror("error on bind() call");
        exit(EXIT_FAILURE);
    }

    if (listen(tcp_sock, SOCK_STREAM) == -1) {
        perror("error on listen() call");
        exit(EXIT_FAILURE);
    }

    struct pollfd tmp_pollfd;
    tmp_pollfd.fd = tcp_sock;
    tmp_pollfd.events = POLLIN;

    vector_append(pollfd_vec, &tmp_pollfd);

    struct sockaddr addr_in;
    socklen_t len = sizeof(addr_in);
    char frame_buf[sizeof(frame_t)];
    while (1) {
        int eventn = poll(vector_get(pollfd_vec, 0), vector_size(pollfd_vec), -1);
        if (eventn == -1) {
            perror("error on poll() call");
            exit(EXIT_FAILURE);
        } else if (eventn == 0) { // timeout is set to infinite but it is better to check 
            continue;
        }

        if (((struct pollfd*)vector_get(pollfd_vec, LISTEN_SOCK_INDEX))->revents & POLLIN) { // process new connection
            eventn -= 1;
            int client_fd = accept(tcp_sock, (struct sockaddr*)&addr_in, &len);

            if (client_fd == -1 ) {
                perror("something wrong");
                exit(EXIT_FAILURE);
            }
            client_t* tmp_client_ptr = client_new();
            vector_append(clients_vec, &tmp_client_ptr); 

            memset(&tmp_pollfd, 0, sizeof(tmp_pollfd));
            tmp_pollfd.fd = client_fd;
            tmp_pollfd.events = POLLIN | POLLERR | POLLHUP;
            vector_append(pollfd_vec, &tmp_pollfd);
            printf("new client\n");
        }

        size_t size = vector_size(pollfd_vec);

        for (size_t i = 1; i < size && eventn != 0; i++) { // in loop
            struct pollfd *tmp_pollfd_ptr = vector_get(pollfd_vec, i);
            client_t *tmp_client_ptr = *((client_t**)vector_get(clients_vec, i));

            if (tmp_pollfd_ptr->revents & POLLERR || tmp_pollfd_ptr->revents & POLLHUP) {
                //USER disconnected
                close(tmp_pollfd_ptr->fd);
                client_free(tmp_client_ptr);
                vector_remove(pollfd_vec, i);
                vector_remove(clients_vec, i);
                eventn -= 1;
                i -= 1;
                continue;
            }

            if (tmp_pollfd_ptr->revents & POLLIN) {
                int len = recv(tmp_pollfd_ptr->fd, frame_buf, sizeof(frame_buf), 0);
                client_process_data(tmp_client_ptr, frame_buf, len);
                eventn -= 1;
                continue;
            }
        }

        size = vector_size(clients_vec);
        for (int i = 1; i < size; i++) {
            client_t *tmp_client = vector_get(clients_vec, i);

        }

    }

    close(tcp_sock);
    vector_free(pollfd_vec);
}