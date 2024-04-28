/* Escreva definicoes regulares para as seguintes linguagens:
(a) Todas as cadeias de letras minusculas que contem as cinco vogais em ordem lexicografica
crescente.
(b) Todas as cadeias de letras minusculas em que as letras estao em ordem lexicografica crescente.
(c) Comentarios, consistindo em uma cadeia delimitada por /∗ e ∗/, onde a cadeia de coment´arios pode ter qualquer sequˆencia de dig´ıtos, letras e um conjunto de operadores especiais: !, ], %, &.
(d) Todas as cadeias de a`s e b`s qu nao contem a subsequencia abb.*/

%{

%}


%%

a*e*i*o*u* { printf("Cadeia válida: %s\n", yytext); }

. ;

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