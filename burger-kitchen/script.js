// Banco de dados simulado (Massa de dados inicial)
let pedidos = [
    { id: 101, horario: "19:42", itens: ["1x Monster Burger", "1x Batata Frita", "1x Coca-Cola"], status: "pendente" },
    { id: 102, horario: "19:45", itens: ["2x Smash Burger", "1x Suco de Laranja"], status: "pendente" }
];

// Controlador para gerar os IDs dos novos pedidos incrementalmente
let proximoId = 103;

// Elementos mapeados do HTML
const containerPedidos = document.getElementById("container-pedidos");
const contadorPedidos = document.getElementById("contador-pedidos");

// Função responsável por atualizar a tela inteira
function renderizarPainel() {
    containerPedidos.innerHTML = ""; // Limpa os elementos antigos da tela
    let pendentes = 0;

    pedidos.forEach((pedido) => {
        // Ignora os pedidos "finalizados", mostrando apenas Pendentes e Preparando
        if (pedido.status !== "finalizado") {
            pendentes++;

            // Cria o container do card do pedido
            const card = document.createElement("div");
            card.classList.add("card-pedido", pedido.status);

            // Monta o cabeçalho do ticket
            const header = document.createElement("div");
            header.classList.add("card-header");
            header.innerHTML = `
                <span class="numero-pedido">PEDIDO #${pedido.id}</span>
                <span class="horario">⏱️ ${pedido.horario}</span>
            `;

            // Monta a lista com os itens selecionados
            const listaItens = document.createElement("ul");
            listaItens.classList.add("itens-pedido");
            pedido.itens.forEach(item => {
                if (item.trim() !== "") {
                    listaItens.innerHTML += `<li>📌 ${item}</li>`;
                }
            });

            // Configura o comportamento do botão dinâmico
            const botaoAcao = document.createElement("button");
            botaoAcao.classList.add("btn-status");

            if (pedido.status === "pendente") {
                botaoAcao.innerText = "👨‍🍳 INICIAR PREPARO";
                botaoAcao.classList.add("btn-preparar");
                botaoAcao.onclick = () => alterarStatus(pedido.id, "preparando");
            } else if (pedido.status === "preparando") {
                botaoAcao.innerText = "✅ CONCLUIR PEDIDO";
                botaoAcao.classList.add("btn-finalizar");
                botaoAcao.onclick = () => alterarStatus(pedido.id, "finalizado");
            }

            // Agrupa as partes criadas dentro do card estrutural
            card.appendChild(header);
            card.appendChild(listaItens);
            card.appendChild(botaoAcao);
            
            // Renderiza o conjunto completo na tela
            containerPedidos.appendChild(card);
        }
    });

    // Atualiza o contador de pedidos ativos no topo
    contadorPedidos.innerText = `Pedidos Pendentes: ${pendentes}`;
}

// Controla as mudanças de estado (Pendente -> Preparando -> Finalizado)
function alterarStatus(idPedido, novoStatus) {
    const pedidoEncontrado = pedidos.find(p => p.id === idPedido);
    if (pedidoEncontrado) {
        pedidoEncontrado.status = novoStatus;
        renderizarPainel(); // Força o redesenho da tela atualizada
    }
}

// Captura as opções selecionadas nos SELECTS e simula um envio de dados do Totem
function criarPedidoDoTotem() {
    const lanche = document.getElementById("select-lanche").value;
    const acompanhamento = document.getElementById("select-acompanhamento").value;
    const bebida = document.getElementById("select-bebida").value;

    // Se o usuário clicar sem escolher nenhum produto válido, dispara o aviso
    if (!lanche && !acompanhamento && !bebida) {
        alert("Por favor, selecione pelo menos um produto para gerar o pedido!");
        return;
    }

    // Coleta a hora real do sistema operacional
    const agora = new Date();
    const horaFormatada = String(agora.getHours()).padStart(2, '0') + ":" + String(agora.getMinutes()).padStart(2, '0');

    // Cria a estrutura padrão de objeto para inserir no array
    const novoPedido = {
        id: proximoId,
        horario: horaFormatada,
        itens: [lanche, acompanhamento, bebida].filter(item => item !== ""), // Descarta strings vazias
        status: "pendente"
    };

    // Insere no banco de dados temporário (.push)
    pedidos.push(novoPedido);
    proximoId++;

    // Toca o aviso sonoro integrado no HTML
    document.getElementById("som-notificacao").play();

    // Reseta as caixas suspensas de volta para a opção padrão inicial (-- Escolha...)
    document.getElementById("select-lanche").value = "";
    document.getElementById("select-acompanhamento").value = "";
    document.getElementById("select-bebida").value = "";

    // Atualiza a tela para processar a chegada do novo card
    renderizarPainel();
}

// Inicialização automática do monitor
renderizarPainel();