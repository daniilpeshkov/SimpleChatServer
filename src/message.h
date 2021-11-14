#ifndef _MESSAGE_H_
#define _MESSAGE_H_

#include <stddef.h>

#include "frame.h"
#include "vector.h"

#define TAG_N   TAG_MASK + 1

typedef struct {
    int         tag_exist[TAG_N];
    vector      tag_data_vec[TAG_N];
} message_t;

void message_init(message_t *msg);

void message_append(message_t *msg, frame_data_t *f);

void message_reset(message_t *msg);

/* returns size of tag data and places pointer to first element via tag_data_ptr if it is not NULL */
/* if return val is 0 tag doesn't exist */
size_t message_get_tag(message_t *msg, unsigned char tag, unsigned char **tag_data_ptr);

#endif