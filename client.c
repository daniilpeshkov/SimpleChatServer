#include "client.h"
#include <stdio.h>
#include <stdlib.h>




void client_free(client_t *client) {
    frame_free(client->frame);
    free(client);
};

client_t *client_new() {
    client_t *cl = malloc(sizeof(client_t));
    cl->frame = frame_new(); 
    cl->message_received = 0;
    cl->sock_fd = 228;
    return cl;
}

void client_process_data(client_t *client, char *data, size_t len) {
    char *first_unused_char = data; 
    int unused_n = len;
    frame_append(client->frame, first_unused_char, unused_n, &first_unused_char);
    do {
        if (frame_filled(client->frame)) { //frame ready
            frame_data_t f_data;
            frame_get_data(client->frame, &f_data);
            printf("received: tag = %u  len = %u\n", f_data.tag, f_data.len);
        }
    } while ((unused_n = frame_append(client->frame, first_unused_char, unused_n, &first_unused_char)) != 0);
}