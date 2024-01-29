-- Criar um banco de dados (caso ainda não exista)
CREATE DATABASE IF NOT EXISTS dbpostech_pedido;

-- Usar o banco de dados criado
USE dbpostech_pedido;

CREATE TABLE `pedidos` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `data_criacao` DATETIME NOT NULL,
    `data_alteracao` DATETIME NOT NULL,
    `status` VARCHAR(20) NOT NULL,
    `cpf` VARCHAR(11) NOT NULL,
    `pagamento_status` VARCHAR(60) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE (`id`)
);

CREATE TABLE `pedidos_produtos` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `data_criacao` DATETIME NOT NULL,
    `data_alteracao` DATETIME NOT NULL,
    `pedido_id` INTEGER NOT NULL,
    `produto_id` INTEGER(11) NOT NULL,
    `produto_categoria` VARCHAR(60) NOT NULL,
    `produto_preco` DECIMAL(4,2) NOT NULL,
    `produto_nome` VARCHAR(150) NOT NULL,
    `produto_descricao` VARCHAR(150) NOT NULL,
    UNIQUE (`id`)
);





-- Criar um banco de dados (caso ainda não exista)
CREATE DATABASE IF NOT EXISTS dbpostech_produto;

-- Usar o banco de dados criado
USE dbpostech_produto;


CREATE TABLE `produtos` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `data_criacao` DATETIME NOT NULL,
    `data_alteracao` DATETIME NOT NULL,
    `nome` VARCHAR(150) NOT NULL,
    `descricao` VARCHAR(255) NOT NULL,
    `preco` DECIMAL(4,2) NOT NULL,
    `categoria` VARCHAR(60) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE (`id`, `nome`)
);