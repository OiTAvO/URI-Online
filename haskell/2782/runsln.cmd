@ECHO OFF    
ghc -O ".\hs_2782.hs" 
ERASE ".\hs_2782.hi" 
ERASE ".\hs_2782.o" 
FOR /F %%i IN ('DIR ".\in" /B') DO ( 
    ".\hs_2782.exe" < ".\in\"%%i > ".\out\"%%i    
    FC /N ".\out\"%%i ".\answer\"%%i^ 
    ECHO Proximo...^ 
    PAUSE) 
ECHO FIM DOS TESTES. 
PAUSE 
