%{
    int a=0;
    int b=0;
    int c=0;
    int d=0;
%}

DIGIT [0-9]
%%

\+?{DIGIT}+  {a++;}
-{DIGIT}+    {b++;}

\+?{DIGIT}*\.{DIGIT}+   {c++;}
-{DIGIT}*\.{DIGIT}+     {d++;}
   
%%

main()
{
	printf("enter the digit:");
    yylex();
    printf("\nNo. of positive numbers: %d",a);
    printf("\nNo. of Negative numbers: %d",b);
    printf("\nNo. of Positive fractions: %d",c);
    printf("\nNo. of Negative fractions: %d\n",d);
}