%{
#include <stdio.h>	
int number1=0;
int number2=0;
%}

%%
(.*)printf(.*)   {number1++;(fprintf(yyout,"read"));}
(.*)scanf(.*)    {number2++;(fprintf(yyout,"write"));}
[\t\n]+;
%%
int main(){
	yyin=fopen("1.c","r");
	yylex();
	fclose(yyin);
	return 0;
}
int yywrap(void){
	return 1;
}

