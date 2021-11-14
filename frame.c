#include "frame.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define HAS_NEXT(ctl) ((ctl & 0x80) >> 7)
#define TAG(ctl) (ctl & 0x1f)

size_t frame_append(frame_t *frame, char *data, size_t len, char **first_unsused_char) {
    *first_unsused_char = NULL;
    if (len == 0) return 0;

    if (frame->filled == 1) {
        frame->cur_len = 0;
        frame->has_next = 0;
    }

    if (frame->cur_len < 2) {
        while (frame->cur_len < 2 ) {
            frame->frame[frame->cur_len++] = *(data++);
            len--;
            if (len == 0) return 0;
        }
        frame->bytes_left = frame->frame[1];
    }
    size_t copy_n = (len <= frame->bytes_left ? len : frame->bytes_left);
    memcpy(&frame->frame[frame->cur_len], data, copy_n);
    len -= copy_n;
    frame->cur_len += copy_n;
    frame->bytes_left -= copy_n;
    data += copy_n;

    if (frame->bytes_left == 0) {
        frame->filled = 1;
        frame->has_next = HAS_NEXT(frame->frame[0]);

        if (len != 0) *first_unsused_char = data; 
        return len;
    }

    return 0;
}

frame_t* frame_new() {
    frame_t *frame = malloc(sizeof(frame_t));
    frame->cur_len = 0;
    frame->has_next = 0;
    frame->filled = 0;
    return frame;
}

int frame_get_data(frame_t *frame, frame_data_t *f_data) {
    if (!frame->filled) return 0;
    f_data->tag = TAG(frame->frame[0]);
    f_data->len = frame->frame[1];
    f_data->data = &frame->frame[2];
    return 1;
}


void frame_free(frame_t *frame) {
    free(frame);
}

inline int frame_filled(frame_t *frame) {
    return frame->filled;
}

inline int frame_has_next(frame_t *frame) {
    return frame->has_next;
}
