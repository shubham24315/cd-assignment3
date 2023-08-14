%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>

    
%}

pattern (0|1)*1(0|1)*1(0|1)*1(0|1)*1(0|1)*

%%

{pattern} {
    printf("Pattern Matched\n");
}

(1|0)* {
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