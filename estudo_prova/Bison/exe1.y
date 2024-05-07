/* calculadora simples - parser */
%{
#include<stdio.h>
%}

/* declaração de tokens */
%token NUMBER
%token ADD SUB MUL DIV
%token EOL

%%

calclist: /* empty */
        | calclist exp EOL { printf("= %d\n", $2); } /* EOL final de uma expressão */
        ;

exp: factor /* default $$ = $1 */
        | exp ADD factor { $$ = $1 + $3; }
        | exp SUB factor { $$ = $1 - $3; }
        ;

factor: term /* default $$ = $1 */
        | factor MUL term { $$ = $1 * $3; }
        | factor DIV term { $$ = $1 / $3; }
        ;

term: NUMBER ; /* default $$ = $1 */

%%

main(int argc, char **argv) {
    yyparse();
}

yyerror(char *s) {
    fprintf(stderr, "error: %s\n", s);
}
