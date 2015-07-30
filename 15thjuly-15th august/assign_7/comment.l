%{
#include <stdio.h>
int comment=0;
%}

%%
\/\*.*\*\/ 	{comment++;} 
\/\/.*\/\/  {comment++;}
[\t\n]+;
%%
int main(){
	yylex();
	printf(" total comment lines are: %d\n",comment);
	return 0;

}

