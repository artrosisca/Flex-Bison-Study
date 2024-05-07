%{
#include<stdio.h>
int flag=0;
%}

%%
and |
or |
but |
because |
if |
then |
nevertheless {flag=1;}
. ;
\n {return 0;}
%%

int main(int argc, char const *argv[])
{
	printf("Enter the input sentence: \n");
	yylex();
	if (flag==0)
	{
		printf("Simple sentence");
	}
	else{
		printf("Compund sentence");
	}
	return 0;
}
