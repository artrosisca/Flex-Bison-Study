%{
/* Exemplo : Flex
   Reconhecimento e contagem de novas linhas, caracteres e tabulações */

int linhas = 0, caracteres = 0, tabs = 0;

%}


NOVALINHA   [\n]+
TAB         [\t]+

%%

{NOVALINHA}    { ++linhas; ++caracteres; }
{TAB}          { ++tabs; }
.              { ++caracteres; }
%%

int main(int argc, char const *argv[]) {
    yylex();
    printf("Numero linhas: %d\n", linhas);
    printf("Numero tabulacoes: %d\n", tabs);
    printf("Numero caracteres: %d\n", caracteres);
    return 0;
}