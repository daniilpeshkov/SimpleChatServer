#include "requests.h"

int requests_is_login_request(message_t *msg) {

    if (message_get_tag_cnt(msg) != 2) return 0;

    unsigned char *tag_sys;
    unsigned char *tag_name;

    size_t tag_sys_len = message_get_tag(msg, TAG_SYS, &tag_sys);
    size_t tag_name_len = message_get_tag(msg, TAG_NAME, &tag_name);

<<<<<<< HEAD
    if ((tag_sys_len != 1) | (*tag_sys != SYS_LOGIN_REQUEST) | (tag_name_len == 0)) return 0;

    return 1;
}

int requests_is_text_message(message_t *msg) {
    if (message_get_tag_cnt(msg) != 2) return 0;

    unsigned char *tag_sys;
    unsigned char *tag_text;

    size_t tag_sys_len = message_get_tag(msg, TAG_SYS, &tag_sys);
    size_t tag_text_len = message_get_tag(msg, TAG_TEXT, &tag_text);

    if ((tag_sys_len != 1) | (*tag_sys != SYS_TEXT_MESSAGE) | (tag_text_len == 0)) return 0;
=======
    if (tag_sys_len != 1 | *tag_sys != SYS_LOGIN_REQUEST) return 0;
>>>>>>> parent of 57b819c (added authentication and message response)

    return 1;
}

void requests_make_login_response(message_t *msg, unsigned char login_code) {
    message_reset(msg);
<<<<<<< HEAD
    unsigned char sys_data[] = {SYS_LOGIN_REQUEST, login_code};
    message_append_var(msg, TAG_SYS, sys_data, sizeof(sys_data)/sizeof(*sys_data));
}

void requests_make_text_message_response(message_t *msg, unsigned char response_code) {
    message_reset(msg);
    unsigned char sys_data[] = {SYS_TEXT_MESSAGE, response_code};
    message_append_var(msg, TAG_SYS, sys_data, sizeof(sys_data)/sizeof(*sys_data));
}

void requests_make_login_notification_response(message_t *msg, unsigned char response_code, unsigned char *name, size_t len) {
    message_reset(msg);
    unsigned char sys_data[] = {SYS_LOGIN_NOTIFICATION, response_code};
    message_append_var(msg, TAG_SYS, sys_data, sizeof(sys_data)/sizeof(*sys_data));
    message_append_var(msg, TAG_NAME, name, len);
=======
    frame_data_t fd;
    fd.data[0] = SYS_LOGIN_REQUEST;
    fd.data[1] = login_code;
    fd.len = 2;
    fd.tag = TAG_SYS;
>>>>>>> parent of 57b819c (added authentication and message response)
}