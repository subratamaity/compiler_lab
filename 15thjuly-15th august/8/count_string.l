%{
#include <stdio.h>
int count=0;
int count1=0;
%}

%%
[\t\n]+;
(.*)(ab)+(.*)  {count1++;}
abb+.*cdd+  {count++;}
%%
int main(){
	yylex();
	printf("string no: %d \n",count);
	printf("string no: %d \n",count1);
	return 0;
}