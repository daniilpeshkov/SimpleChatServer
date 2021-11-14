#include "message.h"

#include <stdlib.h>
#include <string.h>
#include <stdio.h>

void message_init(message_t *msg) {
    memset(msg->tag_exist, 0, sizeof(msg->tag_exist));
}

void message_append(message_t *msg, frame_data_t *f) {
    if (f->len == 0) return;

    if (!msg->tag_exist[f->tag]) {
        msg->tag_data_vec[f->tag] = vector_new(sizeof(*f->data), f->len);
        msg->tag_exist[f->tag] = 1;
    }
    for (size_t i = 0; i < f->len; i++) {
        vector_append(msg->tag_data_vec[f->tag], &f->data[i]);
    }
}

size_t message_get_tag(message_t *msg, unsigned char tag, unsigned char **tag_data_ptr) {
    if (tag > TAG_MASK) return 0;
    if (!msg->tag_exist[tag]) return 0;
    size_t len = vector_size(msg->tag_data_vec[tag]);
    if (tag_data_ptr != NULL) {
        *tag_data_ptr = vector_get(msg->tag_data_vec[tag], 0);
    }
    return len;
}

void message_reset(message_t *msg) {
    for (int i = 0; i < TAG_MASK; i++) {
        if (msg->tag_exist[i]) {
            vector_free(msg->tag_data_vec[i]);
            msg->tag_exist[i] = 0;
        }
    }
}