@echo off

:: MUDAR O TITULO DA JANELA
title Burger Tech

::PEDIR O NOME DO CLIENTE
set /p nome=Digite seu nome: 

:: LIMPAR A TELA
cls

:: MUDAR A COR DAS LETRAS
color 0A

:: MOSTRAR PARA O CLIENTE OS VALORES
echo Sem combo: R$ 20,00.
echo Com combo: R$ 25,00.
echo.
echo ===============================
echo.

::REGISTRAR O VALOR QUE O CLIENTE QUER PAGAR
set /p preco_base=Digite o valor: 

::SE O VALOR FOR MAIOR QUE R$ 20,00
::APLICA O DESCONTO
::SE FOR MENOR, APENAS MOSTRA O VALOR
if %preco_base% GTR 20 (

    set /a preco_final=%preco_base% - 2

    echo Desconto aplicado!

) else (

    set /a preco_final=%preco_base%

)

:: PARA PARA MOSTRAR O RESULTADO
echo.
pause

:: LIMPAR TELA
cls

:: MUDAR A COR DAS LETRAS
color 0E

::EXIBE O RESULTADO FINAL
echo Ola %nome%, seu pedido foi entregue.
echo.
echo ===============================
echo Preco a pagar: R$ %preco_final%
echo ===============================
echo.

pause

start obrigado.txt