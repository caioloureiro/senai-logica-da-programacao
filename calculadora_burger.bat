@echo off

echo --- Burger Tech System ---

:: 1. Entrada de Dados
set /p cliente=Nome do Cliente: 
set /p lanche=Valor do Lanche: 
set /p bebida=Valor da Bebida: 

:: 2. Processamento
set /a total=%lanche%+%bebida%

:: 3. Saída
echo.
echo Ola %cliente%, seu total e: %total%

pause