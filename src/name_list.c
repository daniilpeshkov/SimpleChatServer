#include "name_list.h"

void name_list_init(name_list_t *user_list, size_t initial_cap) {
    user_list->users = vector_new(sizeof(char), initial_cap);
}