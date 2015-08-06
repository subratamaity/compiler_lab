%{
#include <stdio.h>	
int number1=0;
int number2=0;
%}

%%
printf  {number1++;}
scanf   {number2++;}
[\t\n ]+;
.
%%
int main(){
	yyin=fopen("1.c","r");
	yylex();
	fclose(yyin);
	printf(" total printf lines are: %d\n",number1);
	printf(" total scanf lines are: %d\n",number2);
	return 0;
}
int yywrap(void){
	return 1;
}

