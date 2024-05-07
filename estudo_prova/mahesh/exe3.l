%{
#include<stdio.h>
	int v=0, c=0;
%}

%%
[ \t\n]+ ;
[aeiouAEIOU] {v++;}
[^aeiouAEIOU] {c++;}
%%

int main(int argc, char const *argv[])
{
	printf("\nEnter the input string: ");
	yylex();
	printf("No of vowels are %d \n",v);
	printf("No of consonents are %d \n",c);
	return 0;
}

/*
int yywrap(){
	return 1;
}
*/