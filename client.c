#include "client.h"
#include <stdio.h>
#include <sys/socket.h>

void event_new_data_process(client_t *client) {
    char buf[100];
    int size = recv(client->sock_fd, buf, sizeof(buf), 0);
    printf("new data from client");
    for (int i = 0; i < size; i++) {
        printf("%4x", buf[i]);
    }
    printf("\n");
}