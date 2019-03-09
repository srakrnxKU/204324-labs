#include <stdio.h>


int main()
{
    // If a < 0 mask = 00..000 | 1 
    int x = 1234;
    int a = 3;
    int mask = a >> 31 | 1;
    x = x + mask;
}