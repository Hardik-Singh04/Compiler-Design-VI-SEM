%{
%}
space [ \t]
emptyline \n
%%
{space}+ printf(" ");
{emptyline}+ printf("\n");
. ECHO;
%%
int main()
{
extern FILE *yyin;
yyin = fopen("Input.txt","r");
yylex();
return 0;
}

