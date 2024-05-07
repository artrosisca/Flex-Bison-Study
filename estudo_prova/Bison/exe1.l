%{
#include "exe1.tab.h"
%}

%%

"+" { return ADD; }
"-" { return SUB; }
"*" { return MUL; }
"/" { return DIV; }
[0-9]+ { yylval = atoi(yytext); return NUMBER; }
\n { return EOL; }
[ \t] { /* ignora espaços em branco */ }
. { printf("Caracter não reconhecido %c\n", *yytext); }

%%
