/*
    PARSE TREE PROGRAMME FOR LAB 3
    Sirakorn Lamyai         5910500023
    Korrawit Chaikangwan    5910501909
*/
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
static FILE *f;
static int ch;
static unsigned int val;
enum
{
    plus,   // 0
    minus,  // 1
    times,  // 2
    divide, // 3
    mod,    // 4
    lparen, // 5
    rparen, // 6
    number, // 7
    eof,    // 8
    illegal // 9
};

// Node structure
typedef struct NodeDesc *Node;
typedef struct NodeDesc
{
    char kind;        // plus, minus, times, divide, number
    int val;          // number: value
    Node left, right; // plus, minus, times, divide: children
} NodeDesc;

static void Print(Node root, int level)
{
    register int i;

    if (root != NULL)
    {
        Print(root->right, level + 1);
        for (i = 0; i < level; i++)
            printf(" ");
        switch (root->kind)
        {
        case plus:
            printf("+\n");
            break;
        case minus:
            printf("-\n");
            break;
        case times:
            printf("*\n");
            break;
        case divide:
            printf("/\n");
            break;
        case number:
            printf("%ld\n", root->val);
            break;
        }
        Print(root->left, level + 1);
    }
}

// Initialise filesystem read,
// the file object are stored at global variable f.
static void SInit(char *filename)
{
    ch = EOF;
    f = fopen(filename, "r+t");
    if (f != NULL)
        ch = getc(f);
}

// Numerical reading
// Reads a numerical state then stores at `val`
static void Number()
{
    val = 0;
    while (('0' <= ch) && (ch <= '9'))
    {
        val = val * 10 + ch - '0';
        ch = getc(f);
    }
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
        sym = eof;
        break;
    case '+':
        sym = plus;
        ch = getc(f);
        break;
    case '-':
        sym = minus;
        ch = getc(f);
        break;
    case '*':
        sym = times;
        ch = getc(f);
        break;
    case '/':
        sym = divide;
        ch = getc(f);
        break;
    case '%':
        sym = mod;
        ch = getc(f);
        break;
    case '(':
        sym = lparen;
        ch = getc(f);
        break;
    case ')':
        sym = rparen;
        ch = getc(f);
        break;
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
        sym = number;
        Number();
        break;
    default:
        sym = illegal;
    }
    return sym;
}

// sym stores the current status.
static int sym;

// Function prototype
static int Expr();

// Factorisation (parenthesis)
static int Factor()
{
    int result;
    assert((sym == number) || (sym == lparen));
    if (sym == number)
    {
        sym = SGet();
        return val;
    }
    else
    {
        sym = SGet();
        result = Expr();
        assert(sym == rparen);
        sym = SGet();
        return result;
    }
    return 0;
}

// Termination character
static int Term()
{
    int fa = Factor();
    int fb;
    while ((sym == times) || (sym == divide) || (sym == mod))
    {
        if (sym == times)
        {
            sym = SGet();
            fa *= Factor();
        }
        else if (sym == divide)
        {
            sym = SGet();
            fa /= Factor();
        }
        else if (sym == mod)
        {
            sym = SGet();
            fa %= Factor();
        }
    }
    return fa;
}

// Expression (top form)
static int Expr()
{
    int ta;
    // Unary operators
    /*
    if ((sym == minus) || (sym == plus))
    {
        sym = SGet();
    }
    */
    ta = Term();
    while ((sym == plus) || (sym == minus))
    {
        if (sym == plus)
        {
            sym = SGet();
            ta += Term();
        }
        else if (sym == minus)
        {
            sym = SGet();
            ta -= Term();
        }
    }
    return ta;
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
        result = Expr();
        assert(sym == eof);
        printf("%d\n", result);
    }
    else
    {
        printf("usage: expreval <filename>\n");
    }
    return 0;
}