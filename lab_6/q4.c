#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <assert.h>
#include <sys/wait.h>

int main(void)
{
    int *loc_var = malloc(sizeof(int) * 1);
    *loc_var = 7;
    pid_t pid = fork();
    printf("Loc_var is %d\n", *loc_var);
    if (pid == 0)
        *loc_var = 6;
}