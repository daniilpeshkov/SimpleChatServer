#include "requests.h"

int requests_is_login_request(message_t *msg) {

    if (message_get_tag_cnt(msg) != 2) return 0;

    unsigned char *tag_sys;
    unsigned char *tag_name;

    size_t tag_sys_len = message_get_tag(msg, TAG_SYS, &tag_sys);
    size_t tag_name_len = message_get_tag(msg, TAG_NAME, &tag_name);

    if (tag_sys_len != 1 | *tag_sys != SYS_LOGIN_REQUEST) return 0;

    return 1;
}

void requests_make_login_response(message_t *msg, unsigned char login_code) {
    message_reset(msg);
    frame_data_t fd;
    fd.data[0] = SYS_LOGIN_REQUEST;
    fd.data[1] = login_code;
    fd.len = 2;
    fd.tag = TAG_SYS;
}