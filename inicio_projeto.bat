@echo off
color 0A
set /p nome=Digite seu nome:
echo Ola %nome%, seja bem-vindo.
echo Criando pastas do projeto Burger Tech...
mkdir SA_BURGER_TECH
cd SA_BURGER_TECH
mkdir 01_FLUXOGRAMAS
mkdir 02_LOGICA
mkdir 03_TESTES
echo LINHA 1: Nome: > equipe.txt
echo LINHA 2: %nome% >> equipe.txt
echo Ambiente configurado com sucesso!
pause