#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <semaphore.h>
#include <unistd.h>

#include "common_threads.h"
#include "smoker.h"

table *Table;

void *agent(void *arg)
{
    printf("Agent thread started.\n");
    int obj;
    srand((unsigned)time(NULL));
    while (1)
    {
        // Random an object
        obj = rand() % 3;
        switch (obj)
        {
        case 0:
            printf("Agent places tobacco and paper\n");
            V(&Table->match);
            break;
        case 1:
            printf("Agent places tobacco and match\n");
            V(&Table->paper);
            break;
        case 2:
            printf("Agent places paper and match\n");
            V(&Table->tobacco);
            break;
        }
        usleep(100);
        P(&Table->agent);
    }
    return NULL;
}

void *match_skomer(void *arg)
{
    printf("Match thread started.\n");
    while (1)
    {
        P(&Table->match);
        P(&Table->table);
        // Smoke
        printf("Match smoker smokes\n");
        usleep(100);
        V(&Table->table);
        V(&Table->agent);
    }
    return NULL;
}

void *paper_skomer(void *arg)
{
    printf("Paper thread started.\n");
    while (1)
    {
        P(&Table->paper);
        P(&Table->table);
        // Smoke
        printf("Paper smoker smokes\n");
        usleep(100);
        V(&Table->table);
        V(&Table->agent);
    }
    return NULL;
}

void *tobacco_smoker(void *arg)
{
    printf("Tobacco thread started.\n");
    while (1)
    {
        P(&Table->tobacco);
        P(&Table->table);
        // Smoke
        printf("Tobacco smoker smokes\n");
        usleep(100);
        V(&Table->table);
        V(&Table->agent);
    }
    return NULL;
}

int main(int argc, char *argv[])
{
    Table = malloc(sizeof(table));
    if (Table == NULL)
    {
        printf("Memory allocation failed.\n");
        return 0;
    }
    table_init(Table);
    printf("Memory allocation for table completed.\n");

    pthread_t p1,
        p2, p3, p4;

    Pthread_create(&p1, NULL, agent, 0);
    Pthread_create(&p2, NULL, match_skomer, 0);
    Pthread_create(&p3, NULL, paper_skomer, 0);
    Pthread_create(&p4, NULL, tobacco_smoker, 0);

    // join waits for the threads to finish
    Pthread_join(p1, NULL);
    Pthread_join(p2, NULL);
    Pthread_join(p3, NULL);
    Pthread_join(p4, NULL);

    return 0;
}
