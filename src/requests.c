#include "requests.h"

int requests_is_login_request(message_t *msg) {

    if (message_get_tag_cnt(msg) != 2) return 0;

    unsigned char *tag_sys;
    unsigned char *tag_name;

    size_t tag_sys_len = message_get_tag(msg, TAG_SYS, &tag_sys);
    size_t tag_name_len = message_get_tag(msg, TAG_NAME, &tag_name);

    if (tag_sys_len != 1 | *tag_sys != SYS_LOGIN_REQUEST | tag_name_len == 0) return 0;

    return 1;
}

int requests_is_text_message(message_t *msg) {
    if (message_get_tag_cnt(msg) != 2) return 0;

    unsigned char *tag_sys;
    unsigned char *tag_text;

    size_t tag_sys_len = message_get_tag(msg, TAG_SYS, &tag_sys);
    size_t tag_text_len = message_get_tag(msg, TAG_TEXT, &tag_text);

    if (tag_sys_len != 1 | *tag_sys != SYS_TEXT_MESSAGE | tag_text_len == 0) return 0;

    return 1;
}

void requests_make_login_response(message_t *msg, unsigned char login_code) {
    message_reset(msg);
    frame_data_t fd;
    unsigned char sys_data[] = {SYS_LOGIN_REQUEST, login_code};
    fd.data = sys_data;
    fd.len = 2;
    fd.tag = TAG_SYS;
    message_append_var(msg, TAG_SYS, sys_data, sizeof(sys_data)/sizeof(*sys_data));
}

void requests_make_text_message_response(message_t *msg, unsigned char response_code) {
    message_reset(msg);
    unsigned char sys_data[] = {SYS_TEXT_MESSAGE, response_code};
    message_append_var(msg, TAG_SYS, sys_data, sizeof(sys_data)/sizeof(*sys_data));
}