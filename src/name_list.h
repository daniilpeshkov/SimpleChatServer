#ifndef _USER_LIST_H_
#define _USER_LIST_H_

#include "vector.h"

typedef struct {
    vector users;
} name_list_t;

void name_list_init(name_list_t *name_list, size_t initial_cap);

void name_list_free(name_list_t *name_list);

/* search for name and add if no exist and returns 1 */
/* else returns 0 */
int name_list_append_if_not_exist(name_list_t *name_list, unsigned char *str, size_t len);

void name_list_remove(name_list_t *name_list, size_t index);
vector name_list_get_name(name_list_t *name_list, size_t index);

#endif