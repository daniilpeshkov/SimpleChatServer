#ifndef _FRAME_H_
#define _FRAME_H_

#include <stddef.h>
#define MAX_FRAME_LEN	257
#define TAG_MASK		0x1f

typedef struct {
	char 			tag;
	unsigned char 	len;
	char 			*data;
} frame_data_t;

typedef struct {
    size_t			cur_len;
    size_t			bytes_left;
    char 			frame[MAX_FRAME_LEN];
	int 			has_next;
	int 			filled;
} frame_t;


/* Returns number of unused chars. If it is not zero then frame is recieved fully */
/* Next append call after finished frame will switch buffers, and previous received frame will be anavaliable */
size_t frame_append(frame_t *frame, char *data, size_t len, char **first_unsused_char);

void frame_init(frame_t *frame);

void frame_free(frame_t *frame);

/* should call only when filled == true */
int frame_get_data(frame_t *frame, frame_data_t *f_data);

int frame_filled(frame_t *frame);
int frame_has_next(frame_t *frame);

#endif