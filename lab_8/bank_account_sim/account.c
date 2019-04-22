#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "common_threads.h"
#include "account.h"

void account_init(account_info *sp, int n)
{
    int i;
    for (i=0; i<n; i++) {
        sprintf(sp[i].name, "%s%d", "test_account", i);
        sp[i].id = i;
        sp[i].balance = INT_BALANCE;
    }
}

void account_deposit(account_info *sp, int tid, int amount)
{
    sp[tid].balance += amount;
}

void account_withdraw(account_info *sp, int tid, int amount)
{
    if (sp[tid].balance < amount) {
        //printf("Not enough funds to withdraw!\n");
        return;
    }
    sp[tid].balance -= amount;
}


