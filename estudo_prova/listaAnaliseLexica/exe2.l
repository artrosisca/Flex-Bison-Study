%{
#include<stdio.h>
%}

%%
if |
else |
printf {printf("%s is a keyword\n", yytext);}
WHILE {printf("%s while sim\n", yytext);}
IF {printf("%s if sim\n", yytext);}
WHILEIF {printf("%s whileiff sim\n", yytext);}
[0-9]+ {printf("%s is a number\n", yytext);}
[a-zA-Z]+ {printf("%s is a word\n", yytext);}
.

%%

int main(int argc, char const *argv[])
{
	printf("\nEnter the string: ");
	yylex();
} 

int yywrap()
{
	return 1;
}