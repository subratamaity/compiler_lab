%{
    #include <stdio.h>
    int count=0;
%}

%%
((4[2-9])|([5-9][0-9])|([1-9][0-9][0-9]+))\.([0-9]*[1-9]+[0-9]*) {count++;}
((4[3-9])|([5-9][0-9])|([1-9][0-9][0-9]+))\.([0-9]+) {count++;}
(4[3-9])|([5-9][0-9])|([1-9][0-9][0-9]+) {count++;}

%%

int main()
{
    printf("enter the digit:");
    yylex();
    printf(" %d \nNo. is greater",count);
    return 0;
}
/*[ \t\n]+ */   