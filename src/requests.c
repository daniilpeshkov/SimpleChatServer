#include "requests.h"

int requests_is_login_request(message_t *msg) {

    if (message_get_tag_cnt(msg) != 2) return 0;

    unsigned char *tag_sys;
    unsigned char *tag_name;

    size_t tag_sys_len = message_get_tag(msg, TAG_SYS, &tag_sys);
    size_t tag_name_len = message_get_tag(msg, TAG_NAME, &tag_name);

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

    return 1;
}

void requests_make_login_response(message_t *msg, unsigned char login_code) {
    message_reset(msg);
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
}

void message_append_var(message_t *msg, unsigned char tag, unsigned char *data, size_t len) {
    if (!msg->tag_exist[tag]) {
        msg->tag_data_vec[tag] = vector_new(sizeof(*data), len);
        msg->tag_exist[tag] = 1;
        msg->tag_cnt += 1;
    }
    for (size_t i = 0; i < len; i++) {
        vector_append(msg->tag_data_vec[tag], &data[i]);
    }
}