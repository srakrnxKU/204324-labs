/* $begin sbufc */
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <semaphore.h>
#include <unistd.h>

#include "common_threads.h"
#include "smoker.h"

void table_init(table *Table)
{
    Sem_init(&Table->match, 0, 0);
    Sem_init(&Table->paper, 0, 0);
    Sem_init(&Table->tobacco, 0, 0);
    Sem_init(&Table->agent, 0, 1);
    Sem_init(&Table->table, 0, 1);
}