%{
int line=0,spaces,word,c;
%}
%%
[\n] {line++;}
[ \n\t] {spaces++;}
[^ \n\t]+ {word++;c=c+yyleng;}
%%
int main()
{
extern FILE *yyin;
yyin=fopen("input.txt","r");
yylex();
printf("line=%d whitespace=%d word=%d total char=%d \n",line,spaces,word,(spaces+c)-1);
return 0;
}
