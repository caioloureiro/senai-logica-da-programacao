::LIMPAR O AMBIENTE
@echo off

::MUDAR A COR DAS LETRAS
color 0A

::PEDIR PARA O USUARIO ESCREVER O SEU NOME
set /p nome=Digite seu nome:

::EXIBIR A MENSAGEM COM O NOME
echo Ola %nome%, seja bem-vindo.

::PERGUNTAR SE É CLIENTE
set /p cliente=Voce ja e cliente?

::CONDICIONAL
if %cliente%==sim (
    echo desconto ativado
) else (
    echo Gostaria de se cadastrar?
)

::EXIBIR A MENSAGEM DE CRIAÇÃO DE PASTAS
echo Criando pastas do projeto Burger Tech...

::CRIAR PASTA SA_BURGER_TECH
mkdir SA_BURGER_TECH

::IR PARA A PASTA RECÉM CRIADA
cd SA_BURGER_TECH

::CRIAR PASTA 01_FLUXOGRAMAS
mkdir 01_FLUXOGRAMAS

::CRIAR PASTA 02_LOGICA
mkdir 02_LOGICA

::CRIAR PASTA 03_TESTES
mkdir 03_TESTES

::CRIAR ARQUIVO equipe.txt E ESCREVER
echo LINHA 1: Nome: > equipe.txt

::ESCREVER NOVA LINHA NO ARQUIVO
echo LINHA 2: %nome% >> equipe.txt

::EXIBIR MENSAGEM DE CONCLUSÃO
echo Ambiente configurado com sucesso!

::PARAR O SISTEMA PARA VER O PROCESSO
pause