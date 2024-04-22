%{
	/*definition section*/	
	/*declaracao de variaveis e bibliotecas */
int numPalavras = 0;

%} 

DIGITO 	[0-9]
DIGITOS	[0-9]+
PALAVRA	[a-zA-Z]+
ESPACO	" "

/*start of rule section*/
%%
	/*rule section (most important one)*/
{DIGITO}	{ printf("Digito %s\n", yytext); }
{DIGITOS} 	{ printf("Digitos: \"%s\"\n", yytext); }
{PALAVRA} 	{ printf("Palavra: \"%s\"\n", yytext); numPalavras++; }
{ESPACO}    { printf("Espaco: \"%s\"\n", yytext); }
. 			{ printf("Nao reconhecido: \"%s\"\n", yytext); }

%%

/*yywrap(){}*/

int main(int argc, char const *argv[]){
	yylex();
	printf("Numero de palavras: %d\n", numPalavras);
	printf("yytext[0]: %s\n", yytext);
	return 0;
}