#ifndef _REQUESTS_H_
#define _REQUESTS_H_

#include "message.h"

#define TAG_SYS         1
#define TAG_NAME        6

#define SYS_LOGIN_REQUEST   1
#define LOGIN_OK            1
#define NAME_USED           2
#define NAME_WRONG_FORMAT   3

int requests_is_login_request(message_t *msg);

void requests_make_login_response(message_t *msg, unsigned char login_code);


#endif