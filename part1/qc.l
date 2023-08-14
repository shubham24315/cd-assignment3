%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>

    
%}

alphabet [a-c]

pattern ({alphabet}*"aa"{alphabet}*)|({alphabet}*"bb"{alphabet}*)

%%

{pattern} {
    if( strlen(yytext) == 8 )
        printf("Pattern Matched\n");
}

alphabet* {
    printf("Pattern Not Matched\n");
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