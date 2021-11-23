#include "name_list.h"

void name_list_init(name_list_t *user_list, size_t initial_cap) {
    user_list->users = vector_new(sizeof(vector), initial_cap);
}

void name_list_remove(name_list_t *name_list, size_t index) {
    if (index >= vector_size(name_list->users)) return;

    vector_free(*((vector*)vector_get(name_list->users, index)));
    vector_remove(name_list->users, index);
}

int name_list_append_if_not_exist(name_list_t *name_list, unsigned char *str, size_t len) {
    size_t name_cnt = vector_size(name_list->users);
    for (size_t i = 0; i < name_cnt; i++) {
        vector tmp_vec = *((vector*)vector_get(name_list->users, i));
        size_t name_len = vector_size(tmp_vec);
        if (name_len != len) continue;

        for (size_t j = 0; j < len; j++) {
            if (str[j] != *((char*)vector_get(tmp_vec, j))) break;
        }
        return 0;
    }
    vector new_name = vector_new(sizeof(char), len);
    for (size_t i = 0; i < len; i++) {
        vector_append(new_name, &str[i]);
    }
    vector_append(name_list->users, &new_name);
    return 1;
}