#include "client.h"
#include <stdio.h>
#include <stdlib.h>




void client_free(client_t *client) {
    frame_free(&client->frame);
    free(client);
};

void client_init(client_t* client) {
    frame_init(&client->frame);
    client->message_received = 0;
}

void client_process_data(client_t *client, char *data, size_t len) {
    char *first_unused_char = data; 
    int unused_n = len;
    // frame_append(client->frame, first_unused_char, unused_n, &first_unused_char);


    while (unused_n != 0) {
        unused_n = frame_append(&client->frame, first_unused_char, unused_n, &first_unused_char);
        if (frame_filled(&client->frame)) { //frame ready
            frame_data_t f_data;
            frame_get_data(&client->frame, &f_data);
            printf("tag = %u  len = %u  ", f_data.tag, f_data.len);
            printf("data: ");
            for (int i = 0; i < f_data.len; i++) {
                printf("%4x", f_data.data[i]);
            }
            printf("\n");
            if (!frame_has_next(&client->frame)) {
                printf("message received!\n\n");
            }
        }
    }
}