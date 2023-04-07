%{
%}
DIGIT [0-9]
XPO [?\-0-9]
%%
{DIGIT}*  printf("Integer");
{DIGIT}*?\.{DIGIT}* printf("Float");
{DIGIT}+E{XPO}{DIGIT}* printf("Exponential");
{XPO}{DIGIT}*?.{DIGIT}+E{XPO}{DIGIT}* printf("Exponential");
.* printf("Other");
%%
int main()
{
yylex();
return 0;
}
