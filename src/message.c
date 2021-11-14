#include "message.h"

#include <stdlib.h>
#include <string.h>

void message_init(message_t *msg) {
    memset(msg->tag_exist, 0, sizeof(msg->tag_exist));
}