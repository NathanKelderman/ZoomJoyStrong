%{
        #include <stdio.h>
        #include <stdlib.h>
        #include "zoomjoystrong.tab.h"
        int iVal = 0;
        float fVal = 0;
%}

%option noyywrap

%%

[0-9]+		{ yylval.iVal = atoi(yytext); return INT; }
[0-9]*\.[0-9]+	{ yylval.fVal = atof(yytext); return FLOAT; }
end             { return END; }
point           { return POINT; }
line            { return LINE; }
circle          { return CIRCLE; }
rectangle       { return RECTANGLE; }
set_color       { return SET_COLOR; }
;   	        { return END_STATEMENT; }
[ \t]		;
\n		;
.               { printf("You messed up!"); }

%%

