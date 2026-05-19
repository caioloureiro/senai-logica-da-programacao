// Variáveis globais para guardar o pedido (como as variáveis do bat)
let clienteNome = "";
let lancheEscolhido = "";
let valorLanche = 0;

//Definir os itens HTML como variáveis
//Para não ficar repetindo document.query[...] toda vez
let telaLogin = document.querySelector('#tela-login');
let telaCardapio = document.querySelector('#tela-cardapio');
let inputCliente = document.querySelector('#nome-cliente');
let spanNome = document.querySelector('#span-nome');
let telaCombo = document.querySelector('#tela-combo');
let resNome = document.querySelector('#res-nome');
let resItem = document.querySelector('#res-item');
let resTotal = document.querySelector('#res-total');
let telaFinal = document.querySelector('#tela-final');

function irParaCardapio() {

    clienteNome = inputCliente.value;

    if (clienteNome == "") {
        alert("Digite seu nome primeiro!");
        return;
    }

    spanNome.innerText = clienteNome;
    
    // Troca de tela
    telaLogin.style.display = "none";
    telaCardapio.style.display = "block";

}

function selecionarLanche(nome, preco) {

    lancheEscolhido = nome;
    valorLanche = preco;

    // Troca de tela
    telaCardapio.style.display = "none";
    telaCombo.style.display = "block";

}

function finalizar(querCombo) {

    let total = valorLanche;
    let itemFinal = lancheEscolhido;

    if (querCombo) {
        total = (valorLanche + 10) - 2; // Regra do Bat: Combo +10 - 2 desc.
        itemFinal += " + COMBO";
    }

    // Preenche o cupom
    resNome.innerText = "CLIENTE: " + clienteNome;
    resItem.innerText = "PEDIDO: " + itemFinal;
    resTotal.innerText = "TOTAL: R$ " + total.toFixed(2);

    // Troca de tela
    telaCombo.style.display = "none";
    telaFinal.style.display = "block";
}

function reiniciar() {
    location.reload(); // Recarrega a página para o próximo cliente
}