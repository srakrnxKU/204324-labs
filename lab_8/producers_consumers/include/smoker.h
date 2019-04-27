#ifndef __SMOKER_H__
#define __SMOKER_H__

#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <semaphore.h>

typedef struct
{
    sem_t match;
    sem_t paper;
    sem_t tobacco;
    sem_t agent;
    sem_t table;
} table;

void table_init(table *Table);

#endif