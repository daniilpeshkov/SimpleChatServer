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

#define LISTEN_SOCK_INDEX 0

#define PORT 25565
#define INITIAL_POLLFD_SIZE 255

int sock_bind_inet(int sockfd, int port) {
    struct sockaddr_in addr;

    addr.sin_addr.s_addr = INADDR_ANY;
    addr.sin_family = AF_INET;
    addr.sin_port = htons(port);

    return bind(sockfd,(struct sockaddr*)&addr, sizeof(addr));
}

void main(void) {
    int tcp_sock = socket(AF_INET, SOCK_STREAM | SOCK_NONBLOCK, IPPROTO_TCP);

    vector pollfd_vec = vector_new(sizeof(struct pollfd), INITIAL_POLLFD_SIZE);

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

            memset(&tmp_pollfd, 0, sizeof(tmp_pollfd));
            tmp_pollfd.fd = client_fd;
            tmp_pollfd.events = POLLIN;
            vector_append(pollfd_vec, &tmp_pollfd);
            printf("new client\n");
        }

        size_t size = vector_size(pollfd_vec);

        for (size_t i = 1; i < size && eventn != 0; i++) {
            struct pollfd* tmp_pollfd = vector_get(pollfd_vec, i);

            if (tmp_pollfd->revents & POLLIN) {
                char buf[100];
                int size = recv(tmp_pollfd->fd, buf, sizeof(buf), 0);
                printf("new data from client %u", i);
                for (int i = 0; i < size; i++) {
                    printf("%4x", buf[i]);
                }
                printf("\n");
            }

        }
    }
    close(tcp_sock);
    vector_free(pollfd_vec);
}