%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>

    
%}

%option noyywrap

pattern (0|1)*1(0|1)*1(0|1)*1(0|1)*1(0|1)*

%%

{pattern} {
    printf("Pattern Matched\n");
    return 0;
}

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