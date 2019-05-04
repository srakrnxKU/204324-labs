#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>

#include "common_threads.h"
#include "sbuf.h"

sbuf_t *buffer;

void *producer(void *arg)
{
    int i = 1;
    while (1)
    {
        Pthread_mutex_lock(&(buffer->mutex));
        while (buffer->cnt >= buffer->n)
            Pthread_cond_wait(&(buffer->cond), &(buffer->mutex));
        sbuf_insert(buffer, i++);
        printf("I'm a producer, producing %d\n", i);
        printf("\tThere are now %d items in the buffer\n", buffer->cnt);
        Pthread_cond_signal(&(buffer->cond));
        Pthread_mutex_unlock(&(buffer->mutex));
    }
    return NULL;
}
void *consumer(void *arg)
{
    while (1)
    {
        Pthread_mutex_lock(&(buffer->mutex));
        while (buffer->cnt <= 0)
            Pthread_cond_wait(&(buffer->cond), &(buffer->mutex));
        int tmp = sbuf_remove(buffer);
        printf("I'm a consumer, consuming %d\n", tmp);
        printf("\tThere are now %d items in the buffer\n", buffer->cnt);
        Pthread_cond_signal(&(buffer->cond));
        Pthread_mutex_unlock(&(buffer->mutex));
    }
}

int main(int argc, char *argv[])
{

    pthread_t p1, p2, p3, p4;

    printf("size of sd = %lu\n", sizeof(sbuf_t));
    buffer = malloc(sizeof(sbuf_t));
    if (buffer == NULL)
    {
        fprintf(stderr, "Malloc unsuccessful\n");
        exit(0);
    }
    // Initialize buffer of size 1M
    sbuf_init(buffer, 10);

    Pthread_create(&p1, NULL, consumer, NULL);
    Pthread_create(&p2, NULL, producer, NULL);
    Pthread_create(&p3, NULL, consumer, NULL);
    Pthread_create(&p4, NULL, producer, NULL);

    // join waits for the threads to finish
    Pthread_join(p1, NULL);
    Pthread_join(p2, NULL);
    Pthread_join(p3, NULL);
    Pthread_join(p4, NULL);

    return 0;
}
