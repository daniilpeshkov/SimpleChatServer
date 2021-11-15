#ifndef _USER_LIST_H_
#define _USER_LIST_H_

#include "vector.h"

typedef struct {
    vector users;
} name_list_t;

void name_list_init(name_list_t *name_list, size_t initial_cap);

int name_list_contains(name_list_t *name_list, unsigned char *str, size_t len);

void name_list_append_raw(name_list_t *name_list, unsigned char *str, size_t len);
void name_list_remove(name_list_t *name_list, size_t index);
char* name_list_get_name(name_list_t *name_list, size_t index);

#endif