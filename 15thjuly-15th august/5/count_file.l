%{
#include <stdio.h>
int words=0;
int characters=0;
int lines=0;
int spaces=0;
%}

%%
[ ]  {spaces++;}
[\n] {lines++;}
[A-Za-z0-9]+  {words++; characters = characters + yyleng;}
[.]  {characters++;}
%%

int main(){
	printf("enter a text\n");
	yylex();
	printf("words:%d\n characters:%d\n lines: %d\n spaces: %d\n",words,characters,lines,spaces);
	return 0;
}



