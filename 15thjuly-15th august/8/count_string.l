%{
#include <stdio.h>
int count=0;
%}

%%
[\t\n]+;
abb+.*cdd+  {count++;}
(ab)+  {count++;}
%%
int main(){
	yylex();
	printf("string no: %d",count);
	return 0;
}