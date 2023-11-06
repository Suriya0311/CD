%option noyywrap


%{
#include<stdio.h>
int n=0;
%}

  
 
%%  
  

"while" |
"if" |
"else" {n++;printf("\t keywords : %s\n", yytext);}   
  

"int" |
"float" {n++;printf("\t keywords : %s\n", yytext);}    
  

[a-zA-Z_][a-zA-Z0-9_]* {n++;printf("\t identifier : %s\n", yytext);}  
  

"<=" |
"==" |
"=" |
"++" |
"-" |
"*" |
"+" {n++;printf("\t operator : %s\n", yytext);} 
  

[(){}|, ;]    {n++;printf("\t separator : %s\n", yytext);}  
  

[0-9]*"."[0-9]+ {n++;printf("\t float : %s\n", yytext);}   
  

[0-9]+ {n++;printf("\t integer : %s\n", yytext);}                         
  
.    ; 

\n { ;}
%%  
   
   
int main()  
  
{  
      
    yylex(); 
      
    printf("\n total no. of token = %d\n", n);    
    return 0;       
}  


