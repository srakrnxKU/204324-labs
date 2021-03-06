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
    var,    // 8
    eof,    // 9
    illegal // 10
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
        case var:
            printf("%c\n", root->val);
            break;
        case number:
            printf("%d\n", root->val);
            break;
        }
        Print(root->left, level + 1);
    }
}

static void PrintNode(Node node)
{
    switch (node->kind)
    {
    case plus:
        printf("+ ");
        break;
    case minus:
        printf("- ");
        break;
    case times:
        printf("* ");
        break;
    case divide:
        printf("/ ");
        break;
    case number:
        printf("%d ", node->val);
        break;
    case var:
        printf("%c ", node->val);
        break;
    }
}

static void PreOrder(Node n)
{
    PrintNode(n);
    if (n->left != NULL)
    {
        PreOrder(n->left);
    }
    if (n->right != NULL)
    {
        PreOrder(n->right);
    }
}

static void InOrder(Node n)
{
    if (n->kind != number && n->kind != var)
    {
        printf("( ");
    }
    if (n->left != NULL)
    {
        InOrder(n->left);
    }
    PrintNode(n);
    if (n->right != NULL)
    {
        InOrder(n->right);
    }
    if (n->kind != number && n->kind != var)
    {
        printf(") ");
    }
}

static void PostOrder(Node n)
{
    if (n->left != NULL)
    {
        PostOrder(n->left);
    }
    if (n->right != NULL)
    {
        PostOrder(n->right);
    }
    PrintNode(n);
}

static Node diff(Node root)
{
    Node result;
    result = malloc(sizeof(NodeDesc));
    if ((root->kind == number) || (root->kind == var))
    {
        // if root->kind is number set result->val: to 0
        // else set result->val to 1
        result->kind = number;
        if (root->kind == number)
        {
            result->val = 0;
        }
        else
        {
            result->val = 1;
        }
        // set result->left and result->right to NULL;
        result->left = NULL;
        result->right = NULL;
    }
    else if ((root->kind == plus) || (root->kind == minus))
    {
        // set root->kind to plus or minus accordingly
        result->kind = root->kind;
        // set result->left to diff(root->left)
        result->left = diff(root->left);
        // set result->right to diff(root->right);
        result->right = diff(root->right);
    }
    else if ((root->kind == times))
    {
        // declare two more nodes
        Node result_left, result_right;
        result_left = malloc(sizeof(NodeDesc));
        result_right = malloc(sizeof(NodeDesc));
        // calculates uv'
        Node u;
        u = malloc(sizeof(NodeDesc));
        u = root->left;
        result_left->kind = times;
        result_left->left = u;
        result_left->right = diff(root->right);
        // calculates u'v
        Node v;
        v = malloc(sizeof(NodeDesc));
        v = root->right;
        result_right->kind = times;
        result_right->left = diff(root->left);
        result_right->right = v;
        // d(uv) = uv' + u'v, therefore the top node
        // will be the summation of the two nodes.
        result->kind = plus;
        result->left = result_left;
        result->right = result_right;
    }
    else if (root->kind == divide)
    {
        // shit load of nodes
        Node u, v, vl, vr, timesLeft, timesRight, subtract, square;
        // d(u/v) = ((u'v)-(uv'))/(v*v)
        // we first create u'v and v'u
        timesLeft = malloc(sizeof(NodeDesc));
        timesLeft->kind = times;
        timesLeft->left = diff(root->left);
        v = malloc(sizeof(NodeDesc));
        v = root->right;
        timesLeft->right = v;
        timesRight = malloc(sizeof(NodeDesc));
        timesRight->kind = times;
        u = malloc(sizeof(NodeDesc));
        u = root->left;
        timesRight->left = u;
        timesRight->right = diff(root->right);
        // we then create the subtract node
        subtract = malloc(sizeof(NodeDesc));
        subtract->kind = minus;
        subtract->left = timesLeft;
        subtract->right = timesRight;
        // we also then create the v^2 node;
        vl = malloc(sizeof(NodeDesc));
        vl = root->right;
        vr = malloc(sizeof(NodeDesc));
        vr = root->right;
        square = malloc(sizeof(NodeDesc));
        square->kind = times;
        square->left = vl;
        square->right = vr;
        // The summary node, finally
        result->kind = divide;
        result->left = subtract;
        result->right = square;
    }
    // return result;
    return result;
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
char varChar;
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
        if (ch >= 65 && ch < 123)
        {
            varChar = (char)ch;
            sym = var;
            ch = getc(f);
        }
        else
        {
            sym = illegal;
        }
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
    assert((sym == number) || (sym == var) || (sym == lparen));
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
    else if (sym == var)
    {
        result = malloc(sizeof(NodeDesc));
        result->kind = var;
        result->val = varChar;
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

// Main function
int main(int argc, char *argv[])
{
    Node result, diffResult;
    if (argc == 2)
    {
        // Initialise a filesystem read
        SInit(argv[1]);
        sym = SGet();
        result = Expr();
        assert(sym == eof);
        // Pre-in-post
        printf("====== EXPRESSION ======\n");
        PreOrder(result);
        printf("\n");
        InOrder(result);
        printf("\n");
        PostOrder(result);
        printf("\n");
        printf("====== TREE ======\n");
        Print(result, 0);
        printf("====== DERIVED EXPRESSION ======\n");
        diffResult = diff(result);
        PreOrder(diffResult);
        printf("\n");
        InOrder(diffResult);
        printf("\n");
        PostOrder(diffResult);
        printf("\n");
        printf("====== DERIVED TREE ======\n");
        Print(diffResult, 0);
    }
    else
    {
        printf("usage: expreval <filename>\n");
    }
    return 0;
}