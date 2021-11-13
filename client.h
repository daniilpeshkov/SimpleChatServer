#ifndef _CLIENT_H_
#define _CLIENT_H_

#include "frame.h"
#include "vector.h"

typedef struct {
    int sock_fd;
    frame_t last_frame;
    
    int message_received;
} client_t;


void event_new_data_process(client_t *client);


#endif