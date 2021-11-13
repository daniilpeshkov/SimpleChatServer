#ifndef _FRAME_H_
#define _FRAME_H_

typedef struct __attribute__((packed)) {
    unsigned char ctl;
    unsigned char dlc;
    unsigned char data[255];
} frame_t;




#endif