# 🍔 Burger Tech Web - Sistema de Pedidos v2.0

Este projeto é a evolução do sistema **Burger Tech** original (que era em terminal `.bat`) para uma interface moderna utilizando as tecnologias base da Web: **HTML5, CSS3 e JavaScript**.

## 🚀 Objetivo da Aula
Aprender a conectar a lógica de programação (JavaScript) com uma interface visual (HTML/CSS), simulando um sistema real de caixa de lanchonete.

---

## 📂 Estrutura do Projeto

O sistema é dividido em três arquivos fundamentais:

1.  **`index.html` (O Esqueleto):** Contém os campos de entrada de nome, seleção de lanches e o botão de finalizar.
2.  **`estilo.css` (A Roupa):** Define as cores (Preto e Laranja), o layout do cartão de pedido e o visual do cupom fiscal.
3.  **`script.js` (O Cérebro):** Onde a lógica acontece. Ele lê o que foi digitado, calcula o valor com base na escolha do combo e exibe o resultado na tela.

---

## 🛠️ Funcionalidades

- **Identificação:** Campo para digitar o nome do cliente.
- **Cardápio Dinâmico:** Seleção entre Super Burger (R$ 20) ou Mega Burger (R$ 30).
- **Lógica de Combo:** - Se o usuário escolher o combo: Adiciona R$ 10,00 e aplica um **desconto automático de R$ 2,00**.
  - Se não: Mantém o valor original do lanche.
- **Cupom Fiscal Virtual:** Gera uma visualização de nota fiscal diretamente na página após o clique.

---

## 💻 Como Rodar o Projeto

1. Certifica-te de que os três ficheiros (`index.html`, `estilo.css`, `script.js`) estão na **mesma pasta**.
2. Abre o ficheiro `index.html` em qualquer navegador (Chrome, Edge, Firefox).
3. Preenche os dados e clica em **"Finalizar Pedido"**.

---

## 🧠 Conceitos Aplicados (Pente Fino)

| Conceito | Descrição |
| :--- | :--- |
| **DOM** | Uso do `document.getElementById` para ligar o HTML ao JavaScript. |
| **Eventos** | Uso do `onclick` para disparar a função de cálculo. |
| **Condicionais** | O `if / else` para decidir se o desconto do combo deve ser aplicado. |
| **Conversão** | Uso do `Number()` para garantir que o preço seja tratado como número e não como texto. |

---

## 🏆 Desafios de Fixação (Nível Ninja)

1. **Visual:** Altera a cor do botão "Finalizar Pedido" para a cor da tua marca.
2. **Lógica:** Adiciona uma terceira opção de lanche no HTML e no JS.
3. **UX:** Faz com que o cupom fiscal mude a cor do texto para **Verde** se o valor total for maior que R$ 35,00.

---
**Docente:** Caio | **Disciplina:** Lógica de Programação Web