%{
int n=0;
%}
KEYWORDS "while"|"if"|"else"|"int"|"float" 
DIGIT [0-9]+
IDENTIFIER [a-zA-Z_][a-zA-Z0-9_]*
OPERATORS "<="|"=="|"="|"++"|"-"|"*"|"+""("|")"|","
SEPARATORS "{"|"}"|";"
%%
{KEYWORDS} {n++; }
{IDENTIFIER}	{n++; }
{OPERATORS}	{n++; }
{SEPARATORS}	{n++; }
-?{DIGIT}"."{DIGIT}	{n++; }
-?{DIGIT}	{n++; }
.  ;
%%
int main()
{ 
yylex();
printf("\nTotal number of token = %d \n",n); 
return 0;
}
