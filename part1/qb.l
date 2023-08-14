%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>

    
%}

pattern (1*01*0)*

%%

{pattern} {
    printf("Pattern Matched\n");
}

(1|0)* {
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