#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>

#include "common_threads.h"
#include "account_multithread.h"

static struct timespec tim, tim2;

void account_init(account_info *sp, int n)
{
    int i;
    for (i = 0; i < n; i++)
    {
        sprintf(sp[i].name, "%s%d", "test_account", i);
        sp[i].id = i;
        sp[i].balance = INT_BALANCE;
        Sem_init(&sp[i].mutex, 0, 1);
    }
}

void account_deposit(account_info *sp, int tid, int amount)
{
    int temp1, temp2;

    P(&sp[tid].mutex);
    temp1 = sp[tid].balance;
    temp2 = amount + temp1;
    nanosleep(&tim, &tim2);
    sp[tid].balance = temp2;
    V(&sp[tid].mutex);
}

void account_withdraw(account_info *sp, int tid, int amount)
{
    int done = 0;
    while (!done)
    {
        P(&sp[tid].mutex);
        if (sp[tid].balance > amount)
        {
            nanosleep(&tim, &tim2);
            sp[tid].balance -= amount;
            done = 1;
        }
        V(&sp[tid].mutex);
    }
}