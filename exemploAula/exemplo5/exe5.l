%{
/* Exemplo 4: Flex
   Realização do escaneamento e reconhecimento de tags (por exemplo, HTML) */

int linhas = 0, qtdTags = 0;

%}

TAG         \<(.)*\>
WHITESPACE  [\ \t]
LINHA       [\n]
LETRA1      [a-z]+
LETRA2      [A-Z]+
word        [A-Z][a-z]+

%%

{word}   { printf("Wort: %s\n", yytext); }
{LETRA1} { printf("min: %s\n", yytext); }
{LETRA2} { printf("mai: %s\n", yytext); }
{TAG}    { qtdTags++; printf("Tag: %s\n", yytext); }
{LINHA}  { linhas++; }
{WHITESPACE} ;
. ;

%%

int main(int nArgs, char* szArgs[]) {
    yylex();
    printf("\nTotal de linhas processadas: %d\n", linhas);
    printf("\nQuantidade de tags reconhecidas: %d\n", qtdTags);
    return 0;
}
