#ifndef _VECTOR_H_
#define _VECTOR_H_

#include <stddef.h>

typedef void* vector;

vector vector_new(unsigned int base_size, unsigned int initial_cap);

void* vector_get(vector self, unsigned int index);
int vector_append(vector self, void *elem);
int vector_remove(vector self, unsigned int index);
size_t vector_size(vector self);

/* doesn't free data wich can be pointed if contains pointers */
void vector_free(vector self);

#endif