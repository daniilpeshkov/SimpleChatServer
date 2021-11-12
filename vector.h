#ifndef _VECTOR_H_
#define _VECTOR_H_

#include <stddef.h>

typedef struct vector_t* vector;

vector vector_new(unsigned int base_size, unsigned int initial_cap);

void* vector_get(vector self, unsigned int index);
int vector_append(vector self, void *elem);
int vector_remove(vector self, unsigned int index);
size_t vector_size(vector self);
void vector_free(vector self);

#endif