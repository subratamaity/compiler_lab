%{
#include <stdio.h>	
int com=0;;
%}

%%
"//".*      {com++;fprintf(yyout,"");}
"/*".*"*/"  {com++;fprintf(yyout,"");}
[\t\n]+;
%%
int main(){
	yyin=fopen("1.c","r");
	yyout = fopen("rm.c","w");
	yylex();
	fclose(yyin);
	fclose(yyout);
	return 0;
}
int yywrap(void){
	return 1;
}
