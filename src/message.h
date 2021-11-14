#ifndef _MESSAGE_H_
#define _MESSAGE_H_

#include "frame.h"
#include "vector.h"

#define TAG_N   TAG_MASK + 1

typedef struct {
    int         tag_exist[TAG_N];
    vector      tag_data[TAG_N];
} message_t;

void message_init(message_t *msg);



#endif