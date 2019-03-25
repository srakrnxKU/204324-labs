#include <stdio.h>

int main()
{
    /* 
     * if a >= 0 mask = 00...000 | 1 = 00...001 = 1
     * if a < 0 mask = 11...111 | 1 = 11...111 = -1
     */
    int x = 1234;
    int a = 3;
    int mask = a >> 31 | 1;
    x = x + mask;
}