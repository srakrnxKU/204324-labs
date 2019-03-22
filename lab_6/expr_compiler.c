/*
    Expression Compiler for Lab.6
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

// Print Tree
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
        case mod:
            printf("%%\n");
            break;
        case number:
            printf("%d\n", root->val);
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
static Node Expr();

// Factorisation (parenthesis)
static Node Factor()
{
    Node result;
    assert((sym == number) || (sym == lparen));
    if (sym == number)
    {
        // Creating node value
        result = malloc(sizeof(NodeDesc));
        result->kind = number;
        result->val = val;
        result->left = NULL;
        result->right = NULL;
        sym = SGet();
    }
    else
    {
        sym = SGet();
        result = malloc(sizeof(NodeDesc));
        result = Expr();
        assert(sym == rparen);
        sym = SGet();
    }
    return result;
}

// Termination character
static Node Term()
{
    Node result;
    // Creating node value
    result = malloc(sizeof(NodeDesc));
    result = Factor();
    while ((sym == times) || (sym == divide) || (sym == mod))
    {
        if (sym == times)
        {
            sym = SGet();
            Node newNode;
            newNode = malloc(sizeof(NodeDesc));
            newNode->kind = times;
            newNode->left = result;
            newNode->right = Factor();
            result = newNode;
        }
        else if (sym == divide)
        {
            sym = SGet();
            Node newNode;
            newNode = malloc(sizeof(NodeDesc));
            newNode->kind = divide;
            newNode->left = result;
            newNode->right = Factor();
            result = newNode;
        }
        else if (sym == mod)
        {
            sym = SGet();
            Node newNode;
            newNode = malloc(sizeof(NodeDesc));
            newNode->kind = mod;
            newNode->left = result;
            newNode->right = Factor();
            result = newNode;
        }
    }
    return result;
}

// Expression (top form)
static Node Expr()
{
    Node result;
    // Creating node value
    result = malloc(sizeof(NodeDesc));
    result = Term();
    // Unary operators
    /*
    if ((sym == minus) || (sym == plus))
    {
        sym = SGet();
    }
    */
    while ((sym == plus) || (sym == minus))
    {
        if (sym == plus)
        {
            sym = SGet();
            Node newNode;
            newNode = malloc(sizeof(NodeDesc));
            newNode->kind = plus;
            newNode->left = result;
            newNode->right = Term();
            result = newNode;
        }
        else if (sym == minus)
        {
            sym = SGet();
            Node newNode;
            newNode = malloc(sizeof(NodeDesc));
            newNode->kind = minus;
            newNode->left = result;
            newNode->right = Term();
            result = newNode;
        }
    }
    return result;
}

FILE *output;
void codeProduce(Node root)
{
    if (root != NULL)
    {
        codeProduce(root->left);
        codeProduce(root->right);
        switch (root->kind)
        {
        case plus:
            fputs("add\n", output);
            break;
        case minus:
            fputs("minus\n", output);
            break;
        case times:
            fputs("times\n", output);
            break;
        case divide:
            fputs("divide\n", output);
            break;
        case mod:
            fputs("mod\n", output);
            break;
        case number:
            fprintf(output, "push\t%d\n", root->val);
            break;
        }
    }
}

// Main function
int main(int argc, char *argv[])
{
    Node result;
    if (argc == 2)
    {
        // Initialise a filesystem read
        SInit(argv[1]);
        sym = SGet();
        result = Expr();
        output = fopen("mipseval.asm", "w+");
        codeProduce(result);
        assert(sym == eof);
        fclose(output);
    }
    else
    {
        printf("usage: expreval <filename>\n");
    }
    return 0;
}
