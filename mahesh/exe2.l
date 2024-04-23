%{
#include<stdio.h>
%}

%%
[A-Z]+[ \t\n] {printf("%s\n", yytext);}
. ;
%%

int main(int argc, char const *argv[])
{
	printf("\nEnter the input: ");
	yylex();
}

int yywrap(){
	return 1;
}