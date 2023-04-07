%{
int inte=0,flo=0;
%}
DIGIT    [0-9]
%%
{DIGIT}*  {inte++; printf("\t Integer = %s",yytext);}
{DIGIT}*?\.{DIGIT}*  {flo++; printf("\t Float = %s",yytext);}
. ;
%%
int main()
{
yylex();
printf("\nTotal number of Integer = %d & Float = %d \n",inte,flo);
return 0;
}
