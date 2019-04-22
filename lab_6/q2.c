#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <assert.h>
#include <sys/wait.h>

int main(void)
{
    for (int i = 0; i < 3; i++)
    {
        pid_t pid = fork();
    }
    printf("Yay\n");
}