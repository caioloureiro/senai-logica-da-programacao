@echo off
title Sistema Burger Tech - Entrada de Pedidos

:: 1. Entrada de Dados (O usuário digita os valores)
set /p precoPao=Digite o valor do pao: 
set /p precoCarne=Digite o valor da carne: 

:: 2. Processamento (O computador faz a conta)
:: Note que usamos /a aqui porque estamos tratando de Aritmetica
set /a precoFinal=%precoPao%+%precoCarne%

:: 3. Saida de Dados (O resultado aparece na tela)
echo.
echo ========================================
echo O valor total do seu pedido e: R$ %precoFinal%
echo ========================================
echo.

pause