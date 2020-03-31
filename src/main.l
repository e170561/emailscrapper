%{
#include<stdio.h>
#include<string.h>
%}
Alfanum [A-Za-z0-9]
ALFANUM {Alfanum}+
SIM [\.\_\-]
SIM2 [\.\,!:?;\-@+]
OP {SIM}*{ALFANUM}
OP2 {ALFANUM}{SIM}*
ARROBA (@)
COMERCIAL (.com)

FINAL [\.\,!?\:\;]

%%

{ALFANUM}{OP}*{ARROBA}{OP2}*{ALFANUM}{COMERCIAL}* { printf("%s\n",yytext) ; }


{SIM2} ;
{ALFANUM} ; 
[[:space:]]+ ;
[[:^space:]]+ ;



%%

int main() {
  yylex();
  return 0;
}




