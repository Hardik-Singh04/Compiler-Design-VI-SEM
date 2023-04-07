%{
%}
%%
"<"[^>]*">" ;
. fprintf(yyout,"%s",yytext);
%%
int main()
{ extern FILE *yyin,*yyout;
yyin=fopen("Input.html","r");
yyout=fopen("out.txt","w");
yylex();
return 0;
}
