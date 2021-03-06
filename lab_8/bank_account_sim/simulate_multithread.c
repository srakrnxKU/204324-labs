#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "common_threads.h"
#include "account_multithread.h"

account_info *account_database;

void *lender(void *arg)
{
    int tid = (int)arg;
    int i;

    printf("I am lender # %d\n", tid);
    for (i = 0; i < ROUND; i++)
    {
        account_deposit(account_database, tid, 2);
    }

    return NULL;
}

void *borrower(void *arg)
{
    int tid = (int)arg;
    int i;

    printf("I am borrower # %d\n", tid);
    for (i = 0; i < ROUND; i++)
    {
        account_withdraw(account_database, tid, 1);
    }

    return NULL;
}

int main(int argc, char *argv[])
{

    int i, num_account;

    num_account = 4;
    printf("size of account_info is %d; size of int is %d; size of void pointer is %d\n", sizeof(account_info), sizeof(int), sizeof(void *));
    account_database = (account_info *)malloc(sizeof(account_info) * num_account);
    if (account_database == NULL)
    {
        fprintf(stderr, "Malloc unsuccessful\n");
        exit(0);
    }
    // Initialize account_database
    account_init(account_database, num_account);
    for (i = 0; i < num_account; i++)
    {
        printf("Account: %d; name: %s; balance: %d\n", i, account_database[i].name, account_database[i].balance);
    }
    printf("\n");
    pthread_t *deposit_threads = calloc(num_account, sizeof(pthread_t));
    pthread_t *withdraw_threads = calloc(num_account, sizeof(pthread_t));
    for (i = 0; i < num_account; i++)
    {
        Pthread_create(&deposit_threads[i], NULL, lender, (void *)i);
        Pthread_create(&withdraw_threads[i], NULL, borrower, (void *)i);
    }
    for (i = 0; i < num_account; i++)
    {
        Pthread_join(deposit_threads[i], NULL);
        Pthread_join(withdraw_threads[i], NULL);
    }
    printf("\n");
    for (i = 0; i < num_account; i++)
    {
        printf("Account: %d; name: %s; balance: %d\n", i, account_database[i].name, account_database[i].balance);
    }
    return 0;
}