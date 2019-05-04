#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>

#include "common_threads.h"
#include "sbuf.h"

void sbuf_init(sbuf_t *sp, int n)
{
    void *p;
    assert((p = calloc(n, sizeof(int))) != NULL);
    sp->buf = p;
    sp->n = n; /* Buffer holds max of n items */
    sp->cnt = 0;
    sp->front = sp->rear = 0; /* Empty buffer iff front == rear */
}

void sbuf_deinit(sbuf_t *sp)
{
    free(sp->buf);
}

void sbuf_insert(sbuf_t *sp, int item)
{
    int index;
    index = (++sp->rear) % (sp->n);
    sp->buf[index] = item; /* Insert the item */
    sp->cnt += 1;
}

int sbuf_remove(sbuf_t *sp)
{
    int item, index;
    index = (++sp->front) % (sp->n);
    item = sp->buf[index]; /* Remove the item */
    sp->cnt -= 1;
    return item;
}
