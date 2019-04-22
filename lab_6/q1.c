#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <assert.h>
#include <sys/wait.h>

int main()
{
    pid_t pid = fork();
    printf("Hello World: %d\n", pid);
}