#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
static FILE *f;
static int ch;
static unsigned int val;

static void SInit(char *filename)
{
    ch = EOF;
    f = fopen(filename, "r+t");
    if (f != NULL)
        ch = getc(f);
}
// Reads and interprete the state of the lexical analysis.
// After reading, the state is then returned.
static int SGet()
{
    register int sym;

    while ((ch != EOF) && (ch <= ' '))
    {
        ch = getc(f);
    }
    switch (ch)
    {
    case EOF:
        sym = 0;
        break;
    case '(':
        sym = 1;
        ch = getc(f);
        break;
    case ')':
        sym = -1;
        ch = getc(f);
        break;
    default:
        sym = 2;
    }
    return sym;
}

// sym stores the current status.
static int sym;

// Factorisation (parenthesis)
static void Paren()
{
    if (sym == 1)
    {
        sym = SGet();
        Paren();
        assert(sym == -1);
        sym = SGet();
        Paren();
    }
}

// Main function
int main(int argc, char *argv[])
{
    register int result;

    if (argc == 2)
    {
        // Initialise a filesystem read
        SInit(argv[1]);
        sym = SGet();
        Paren();
        assert(sym == 0);
    }
    else
    {
        printf("usage: expreval <filename>\n");
    }
    return sym;
}