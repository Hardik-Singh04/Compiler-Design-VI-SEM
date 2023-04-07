%{
int line=0,tabs=0,space=0,chara=0;
%}
%%
\n line++;
\t tabs++;
[ ] space++;
. chara++;
%%
int main()
{ 
yylex();
printf("Total number of\nlines=%d \ntabs=%d\nspaces=%d\nchars=%d \n",line,tabs,space,chara); 
return 0;
}
