%{
/* Exemplo 3: Flex
   Realização do escaneamento de tags (por exemplo, HTML) */

int linhas = 0;

%}

TAG         \<(.)*\>
WHITESPACE  [\ \t]
LINHA       [\n]

%%

{TAG}          { printf("tag: %s\n", yytext); }
{LINHA}        { linhas++; }
{WHITESPACE}   { printf("%s ", yytext); }
.              { printf("%s ", yytext); }

%%

int main(int argc, char const *argv[]) {
    yylex();
    printf("\nTotal de linhas processadas: %d\n", linhas);
    return 0;
}
