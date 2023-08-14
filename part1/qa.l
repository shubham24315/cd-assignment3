%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>

    
%}

%option noyywrap

pattern (1*01*0)*

%%

{pattern} {printf("Pattern Matched\n");}

%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}