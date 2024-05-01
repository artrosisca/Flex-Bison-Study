%{
	/* 
	Escreva definicoes regulares para as seguintes linguagens:
	(a) Todas as cadeias de letras minusculas que contem as cinco vogais em ordem lexicografica
	crescente.
	(b) Todas as cadeias de letras minusculas em que as letras estao em ordem lexicografica crescente.
	(c) Comentarios, consistindo em uma cadeia delimitada por /∗ e ∗/, onde a cadeia de coment´arios pode ter qualquer sequˆencia de dig´ıtos, letras e um conjunto de operadores especiais: !, ], %, &.
	(d) Todas as cadeias de a`s e b`s que nao contem a subsequencia abb.
	*/

	/* 
	C)
	\/\* como "/"" e "*" sao caracteres especiais em expressoes regulares a gente coloca a "\" antes para		demonstrar que queremos apenas o caracter e nao suas propriedades de expressoes regulares.
	estudar melhor: (\*+([^\*\/]|[\r\n])))* 
	*/

	/*
	CLASSES DE CARACTERES são conjuntos de caracteres definidos entre colchetes [].
	As expressões regulares são padrões de texto que definem um conjunto de strings. ESSE EXERCICIO
	*/
%}


%%



[."abb"]a*b* { printf("Cadeia valida D: %s\n", yytext); }

a*e*i*o*u* |
A*E*I*O*U* { printf("Cadeia valida A: %s\n", yytext); }
a*b*^abb { printf("Cadeia valida D: %s\n", yytext); }

a*b*c*d*e*f*g*h*i*j*k*l*m*n*o*p*q*r*s*t*u*v* { printf("Cadeia valida B: %s\n", yytext); }

"/*"[a-zA-Z0-9 \t \n]*"*/" { printf("Cadeia valida C: %s\n", yytext); }
"//"[a-zA-Z0-9 \t]*"\n" { printf("Cadeia valida C: %s\n", yytext); }


.|\n ;

%%

int main(int argc, char const *argv[])
{
	printf("Testa: \n");
	yylex();
	return 0;
}
int yywrap()
{
	return 1;
}