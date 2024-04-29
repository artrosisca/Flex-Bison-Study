%{
	/*
	Escreva classes de caracteres para os seguintes conjuntos de caracteres:
	(a) As dez primeiras letras (ate j) em maiusculas ou minusculas.
	(b) As consoantes minusculas.
	(c) Os digitos em um numero hexadecimal (escolha maiusculas ou minusculas para os dıgitos
	acima de 9).
	(d) Os caracteres que podem aparecer no fim de uma sentenca legitima em portugues (e.g.,
	ponto de exclamacao).
	*/

	/*
	CLASSES DE CARACTERES são conjuntos de caracteres definidos entre colchetes []. ESSE EXERCICIO
	As expressões regulares são padrões de texto que definem um conjunto de strings.
	*/
	/*
	D)
	[!$.$?$]
	*/
%}

%%

[!.?] { printf("Caso valido para D: %s\n", yytext); }
[a-fA-F]{-}[0-9] { printf("Caso valido para C: %s\n", yytext); }
[aeiouAEIOU] { printf("Caso valido para B: %s\n", yytext); }
[a-zA-Z]{-}[j-zJ-Z] { printf("Caso valido para A: %s\n", yytext); }

. ;

%%

int main(int argc, char const *argv[])
{
	/* code */
	printf("Teste: \n");
	yylex();
	return 0;
}