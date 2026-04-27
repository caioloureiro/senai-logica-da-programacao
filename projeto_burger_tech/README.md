# 🍔 Burger Tech - Projeto de Lógica da Programação

## O que é este projeto?

Este é um **programa simples de um sistema de pedidos** para uma lancheria chamada Burger Tech.

O programa foi feito em **Batch** (um dos comandos básicos do Windows) e mostra como usar **lógica de programação** em um exemplo real do dia a dia.

---

## Como o programa funciona?

### 1️⃣ **Tela de Boas-vindas (LOGIN)**

```
Digite seu nome: João
```

O programa pergunta o seu nome e guarda essa informação.

### 2️⃣ **Escolher um Lanche (MENU)**

```
[1] Super Burger - R$ 20
[2] Mega Burger  - R$ 30
```

Você escolhe qual lanche quer (1 ou 2).

### 3️⃣ **Escolher Combo (SIM ou NÃO)**

```
[1] SIM - Quero batata + refrigerante (+R$ 10)
[2] NÃO - Só o lanche
```

Se disser **SIM**: desconto de R$ 2,00!
Se disser **NÃO**: só paga o lanche.

### 4️⃣ **Cupom Fiscal**

O programa cria um arquivo `.txt` com sua nota fiscal dentro da pasta `cupom_fiscal/`.

---

## Conceitos de Lógica Usados

| Conceito                | O que é                                       | Exemplo                           |
| ----------------------- | --------------------------------------------- | --------------------------------- |
| **Variável**            | Um espaço na memória que guarda um valor      | `set nome=João`                   |
| **Input**               | Pedir algo para o usuário digitar             | `set /p cliente=Digite seu nome:` |
| **Output**              | Mostrar algo na tela                          | `echo Olá João!`                  |
| **Decisão (IF)**        | Fazer algo **SE** uma condição for verdadeira | Se escolhe 1 → Super Burger       |
| **Condição**            | Uma pergunta que é verdadeira ou falsa        | `%escolha%=="1"` (é 1?)           |
| **Operação Matemática** | Somar, subtrair, multiplicar                  | `set /a total=20+10-2`            |
| **Rótulo (Label)**      | Um ponto no programa para voltar              | `:cardapio` e `goto cardapio`     |

---

## 📁 Arquivos do Projeto

```
projeto_burger_tech/
├── burger_tech.bat              ← Programa principal
├── cupom_fiscal/                ← Pasta onde os cupons são salvos
│   └── cupom_1.txt
│   └── cupom_2.txt
│   └── cupom_3.txt
└── fluxograma_burger_tech.drawio ← Desenho do programa
```

---

## 🚀 Como Rodar o Programa

1. Abra a pasta `projeto_burger_tech`
2. Clique duas vezes em **`burger_tech.bat`**
3. Digite seu nome
4. Escolha um lanche (1 ou 2)
5. Escolha se quer combo (1 ou 2)
6. Um arquivo `.txt` será criado com seu cupom!

---

## 💡 O que Aprender com Este Projeto

✅ Como **guardar informações** (variáveis)

✅ Como **pedir dados** ao usuário (input)

✅ Como **mostrar dados** na tela (output)

✅ Como usar **decisões** (if/else) para diferentes casos

✅ Como **fazer contas** (matemática)

✅ Como **criar arquivos** com resultados

✅ Como usar **rótulos** para controlar o fluxo do programa

---

## 🎯 Desafios para Aprender Mais

1. **Fácil**: Mude o preço dos lanches
2. **Fácil**: Adicione um 3º lanche
3. **Médio**: Mude o desconto do combo
4. **Médio**: Adicione mais opções (batata, bebidas diferentes)
5. **Difícil**: Crie um programa que soma múltiplos pedidos

---

## 📝 Glossário Simples

- **Variável**: Um lugar onde você guarda um valor para usar depois
- **Input**: Você digita algo no teclado
- **Output**: O programa mostra algo na tela
- **IF**: Se isso for verdade, faça aquilo
- **Set**: Comando para criar ou mudar uma variável
- **Echo**: Comando para mostrar texto na tela
- **Goto**: Comando para pular para outro lugar do programa

---

**Criado para fins educacionais - SENAI - Lógica da Programação**

_Dúvidas? Veja o arquivo `fluxograma_burger_tech.drawio` para entender melhor como o programa funciona!_
