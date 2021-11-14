#ifndef _CLIENT_H_
#define _CLIENT_H_

#include "frame.h"
#include "vector.h"

#include <stddef.h>

typedef struct {
    frame_t     frame; 
    int         message_received;
} client_t;

void client_init(client_t* client);

void client_process_data(client_t* client, char *data, size_t len);

void client_free(client_t* client);

#endif