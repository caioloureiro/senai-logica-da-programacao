@echo off

:: INFORMAÇÕES DE CONFIGURAÇÃO E EXIBIÇÃO DO SISTEMA DE PEDIDOS BURGER TECH
title Burger Tech - Sistema de Pedidos

:: TELA 01: BOAS-VINDAS E IDENTIFICACAO
:inicio
cls
color 0B
echo =========================================
echo           BURGER TECH - LOGIN
echo =========================================
echo.
set /p cliente=Seja bem-vindo! Digite seu nome: 

:: TELA 02: CARDAPIO PRINCIPAL
:cardapio
cls
color 0E
echo =========================================
echo           CARDAPIO BURGER TECH
echo =========================================
echo Ola, %cliente%! Escolha o tipo de lanche que deseja pedir:
echo.
echo [1] Super Burger - R$ 20
echo [2] Mega Burger  - R$ 30
echo.
set /p escolha=Digite o numero da opcao: 

if "%escolha%"=="1" (
    set /a preco=20
    set lanche=Super Burger
) else if "%escolha%"=="2" (
    set /a preco=30
    set lanche=Mega Burger
) else (
    echo.
    echo [ERRO] Opcao invalida! Digite 1 ou 2.
    echo.
    pause
    goto cardapio
)

:: TELA 03: OFERTA DE COMBO (DECISAO)
:combo
cls
color 0D
echo =========================================
echo           OFERTA ESPECIAL COMBO
echo =========================================
echo.
echo %lanche% selecionado!
echo Deseja adicionar Batata e Refri por + R$ 10?
echo (Voce ganha R$ 2 de desconto no valor final!)
echo.
echo [1] SIM, eu quero o combo!
echo [2] NAO, apenas o lanche.
echo.
set /p combo_opt=Sua escolha: 

if "%combo_opt%"=="1" (
    echo debug - Combo selecionado!
    :: AQUI ESTAVA O ERRO: Adicionei aspas para proteger os parenteses
    set /a "total=(preco + 10) - 2"
    set lanche_final=%lanche% + COMBO
) else if "%combo_opt%"=="2" (
    echo debug - Combo nao selecionado!
    set /a total=preco
    set lanche_final=%lanche%
) else (
    echo.
    echo [ERRO] Opcao invalida! Digite 1 ou 2.
    echo.
    pause
    goto combo
)

goto finalizar

:: TELA 04: FINALIZACAO E NOTA FISCAL
:finalizar
cls
color 0A
echo =========================================
echo           PROCESSANDO PEDIDO...
echo =========================================
echo.

if not exist cupom_fiscal mkdir cupom_fiscal

:: Gerar numero de serie (Baseado na quantidade de arquivos + 1)
for /f %%A in ('dir /b cupom_fiscal\*.txt 2^>nul ^| find /c /v ""') do set serie=%%A
if "%serie%"=="" set serie=0
set /a serie=%serie%+1
set "arquivo=cupom_fiscal\cupom_%serie%.txt"

:: Gerando o arquivo TXT
echo ---------------------------------- > "%arquivo%"
echo         BURGER TECH FISCAL         >> "%arquivo%"
echo          SERIE: %serie%            >> "%arquivo%"
echo ---------------------------------- >> "%arquivo%"
echo CLIENTE: %cliente%                 >> "%arquivo%"
echo ITEM:    %lanche_final%            >> "%arquivo%"

if "%combo_opt%"=="1" (
    echo COMBO:   Batata + Refri            >> "%arquivo%"
    echo DESCONTO: -R$ 2,00                 >> "%arquivo%"
)

echo TOTAL:   R$ %total%,00             >> "%arquivo%"
echo ---------------------------------- >> "%arquivo%"
echo    Data: %date% - %time%           >> "%arquivo%"
echo ---------------------------------- >> "%arquivo%"

echo Pedido finalizado com sucesso, %cliente%!
echo O valor total foi de R$ %total%,00.
echo.
echo Pressione qualquer tecla para abrir sua Nota Fiscal.
pause >nul

start "" "%arquivo%"
exit