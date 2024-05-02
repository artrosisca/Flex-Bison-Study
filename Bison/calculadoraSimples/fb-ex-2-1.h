/*
 * Declarações para a calculadora
 */

/* Interface com o lexer */
extern int yylineno; /* do lexer */
void yyerror(char *s, ...);

/* Nós na AST */
struct ast {
    int nodetype;
    struct ast *l;
    struct ast *r;
};

struct numval {
    int nodetype; /* Indica constante numérica */
    double number;
};

/* Construção de uma AST */
struct ast *newast(int nodetype, struct ast *l, struct ast *r);
struct ast *newnum(double d);

/* Avaliação de uma AST */
double eval(struct ast *);

/* Remover e liberar uma AST */
void treefree(struct ast *);
