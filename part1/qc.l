%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>

    
%}

%option noyywrap

alphabet [a-c]

pattern ({alphabet}*"aa"{alphabet}*)|({alphabet}*"bb"{alphabet}*)

%%

{pattern} {
    if( strlen(yytext) == 8 )
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