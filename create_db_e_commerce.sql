-- Criação do banco de dados para um modelo de negocioo E-Commerce
create database ecommerce;
use ecommerce;
-- Criacao das primeiras tabelas (evitando criar tabelas que sejam oriundas de relacionamento,estas seram criadas mais adiante)
-- Criar tabela Clientes
create table Cliente(
	idCliente int auto_increment primary key,
    FNome varchar(20),
    MNome varchar(20),
    LNome varchar(20),
    CPF char(11) not null,unique(CPF),
    Telefone1 char(11),
    Telefone2 char(11),
    Email varchar(30),
    constraint unique_cpf_cliente unique(CPF)
);
-- Criar Tabela Produto
create table Produto(
	idProduto int auto_increment primary key,
    Nome varchar(20) not null,
    Descricao varchar(30),
    Categoria enum('Eletrônico', 'Roupa e calçado', 'Papelaria', 'Alimentos', 'Cozinha', 'Móveis', 'Outros') not null,
    Codigo char(13) not null, 
    Avaliacao float,
    Valor_unitario float not null,
    constraint unique_codigo_produto unique(Codigo)
);
-- alter table Produto auto_increment=1;
-- Criar tabela Pedido
create table Pedido(
	idPedido int auto_increment primary key,
    Data_pedido datetime,
    Status_pedido enum('Pendente de pagamento', 'Cancelado', 'Confirmado'),
    idCliente int,
    idPagamento int,
    idEntrega int,
    constraint fk_cliente_pedido foreign key (idCliente) references Cliente(idCliente),
    constraint fk_pagamento_pedido foreign key (idPagamento) references Pagamento(idPagamento),
    constraint fk_entrega_pedido foreign key (idEntrega) references Entrega(idEntrega)
);
-- alter table Pedido auto_increment=1;
-- Criar tabela Forma de Pagamento
create table Pagamento(
	idPagamento int auto_increment primary key,
    PIX varchar(45),
    Boleto varchar(50),
    idCliente int,
    constraint fk_cliente_pagamento foreign key (idCliente) references Cliente(idCliente)
);
    -- Criar tabela Entrega
create table Entrega(
	idEntrega int auto_increment primary key,
    status_entrega enum('Processando', 'Em trânsito', 'Entregue'),
    codigo_rastreio varchar(20),
    valor_frete float,
    idTransportadora int,
    idEndereco int,
    constraint fk_endereco_entrega foreign key (idEndereco) references Endereco(idEndereco)
    
);
-- alter table Entrega auto_increment=1;
-- Criar tabela Endereco_cliente
create table Endereco_Cliente(
	idCliente int,
    idEndereco int,
    constraint fk_endereco_cliente foreign key (idCliente) references Cliente(idCliente),
    constraint fk_cliente_endereco foreign key (idEndereco) references Endereco(idEndereco)
);
-- Criar tabela Estoque
create table Estoque(
	idEstoque int auto_increment primary key,
    localizacao varchar(30)
);
-- alter table Estoque auto_increment=1;

-- Criar tabela Estoque disponível (Estoque_Produto)
create table Estoque_disponivel(
	idProduto int,
    idEstoque int,
    quantidade int not null default 0,
    constraint fk_produto_disponivel foreign key (idProduto) references Produto(idProduto),
    constraint fk_estoque_disponivel foreign key (idEstoque) references Estoque(idEstoque)
);




   




