# 🍔 SENAI - Lógica da Programação: Máquina de Sanduíches Burger Tech

## 📋 Descrição do Projeto

Este projeto é uma atividade educacional da SENAI com foco em **Lógica da Programação**. O objetivo é desenvolver o design lógico completo de uma máquina automatizada de sanduíches para pontos de venda self-service, utilizando a metodologia de **pseudocódigo, fluxogramas e diagramas lógicos**.

### 🎯 Contexto do Desafio

A empresa **Burger Tech** está desenvolvendo uma máquina automatizada que deve:

- Gerenciar catálogo de ingredientes com estoque e preços
- Permitir que clientes escolham ingredientes e personalizem pedidos
- Aplicar regras de negócio (combos, descontos, restrições)
- Calcular valor total com descontos e acréscimos
- Organizar fila de pedidos por ordem de chegada
- Funcionar em rede com outros terminais

## 📁 Estrutura do Projeto

```
senai-logica-da-programacao/
├── SA-Logica-do-sanduiche.md          # Especificação completa do projeto
├── projeto_comentado.bat               # Script demonstrativo com comentários
├── regra_do_combo.bat                  # Lógica de combo e desconto
├── calculadora_burger.bat              # Calculadora de pedidos
├── somando.bat                         # Script de demonstração de soma
├── inicio_projeto.bat                  # Inicializador do ambiente
├── start.bat                           # Script de inicialização
├── obrigado.txt                        # Mensagem de finalização
├── teste.html                          # Teste em HTML
├── fluxo_principal.drawio              # Fluxograma principal do sistema
├── fluxo_do_bat.drawio                 # Fluxograma dos scripts Batch
├── fluxograma_sa.drawio                # Fluxograma da solução
├── combo.drawio                        # Diagrama do sistema de combo
└── README.md                           # Este arquivo
```

## 🔧 Componentes Desenvolvidos

### 📝 Scripts Batch (.bat)

#### **projeto_comentado.bat**

Demonstra conceitos básicos de Batch Script com:

- Limpeza de ambiente
- Formatação de cor (0A - verde no fundo preto)
- Entrada de dados do usuário
- Estruturas condicionais (if/else)
- Criação de diretórios
- Manipulação de arquivos

#### **calculadora_burger.bat**

Implementa o algoritmo básico da máquina:

1. **Entrada**: Nome do cliente, valor do lanche, valor da bebida
2. **Processamento**: Soma dos valores
3. **Saída**: Total do pedido

#### **regra_do_combo.bat**

Implementa lógica de negócio com desconto:

- Sem combo: R$ 20,00
- Com combo: R$ 25,00 (com R$ 2,00 de desconto)
- Aplica condicionais para validar desconto
- Exibe resultado formatado

#### **Scripts Auxiliares**

- `somando.bat`: Demonstração de operações aritméticas
- `inicio_projeto.bat`: Inicialização de ambiente
- `start.bat`: Ponto de entrada do sistema

### 📊 Fluxogramas (Draw.io)

- **fluxo_principal.drawio**: Fluxo geral da máquina
- **fluxo_do_bat.drawio**: Representação dos scripts Batch
- **fluxograma_sa.drawio**: Solução visual completa
- **combo.drawio**: Lógica de sistema de combo

### 📄 Documentação

- **SA-Logica-do-sanduiche.md**: Especificação detalhada do projeto com contextualização, requisitos e resultados esperados

## 🎓 Conceitos Abordados

- ✅ Pseudocódigo
- ✅ Fluxogramas
- ✅ Estruturas de Decisão (if/else)
- ✅ Estruturas de Dados
- ✅ Algoritmos
- ✅ Entrada/Saída de Dados
- ✅ Operações Aritméticas
- ✅ Controle de Fluxo

## 🚀 Como Usar

### Executar a Calculadora Burger

```batch
calculadora_burger.bat
```

Será solicitado:

1. Nome do cliente
2. Valor do lanche
3. Valor da bebida
4. Sistema calculará o total

### Executar o Sistema de Combo

```batch
regra_do_combo.bat
```

Demonstra aplicação de desconto baseado em regra de negócio.

### Inicializar o Ambiente

```batch
inicio_projeto.bat
```

Configura a estrutura de diretórios necessária para o projeto.

## 📌 Requisitos do Projeto

Conforme especificação em [SA-Logica-do-sanduiche.md](SA-Logica-do-sanduiche.md), o sistema deve contemplar:

- ✅ Catálogo de ingredientes
- ✅ Sistema de pedidos
- ✅ Validações lógicas
- ✅ Cálculo de preços
- ✅ Montagem e entrega
- ✅ Regras de negócio (combos, descontos)

## 💡 Objetivos de Aprendizado

1. Desenvolver lógica programável sem linguagem de programação
2. Representar algoritmos através de fluxogramas
3. Compreender estruturas de controle (decisões, loops)
4. Aplicar regras de negócio em algoritmos
5. Documentar soluções de forma clara e estruturada

## 📚 Referências

- **Metodologia**: Especificação de requisitos + Pseudocódigo + Fluxogramas
- **Linguagem de Prototipagem**: Batch Script (Windows)
- **Visualização**: Diagramas em Draw.io

## 👥 Público-Alvo

Alunos de Lógica da Programação - SENAI

---

**Versão**: 1.0 | **Data**: Abril de 2026 | **Escola**: SENAI
