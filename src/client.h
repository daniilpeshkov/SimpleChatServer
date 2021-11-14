#ifndef _CLIENT_H_
#define _CLIENT_H_

#include "frame.h"
#include "vector.h"

#include <stddef.h>

typedef struct {
    int         sock_fd;
    frame_t     *frame; 
    int         message_received;
} client_t;


client_t* client_new();

void client_process_data(client_t* client, char *data, size_t len);

void client_free(client_t* client);

#endif