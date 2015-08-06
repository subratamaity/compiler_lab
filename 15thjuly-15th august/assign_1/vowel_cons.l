%{
	#include <stdio.h>
	int vcount=0,ccount=0;

%}

%%
[\t\n ]+
[aeiouAEIOU] {vcount++ ; }
[a-zA-Z] {ccount++; }
%%

 main(){
 	printf("enter text:");
 	yylex();
 	printf("\nvowels: %d\n constant: %d\n",vcount,ccount);


 }