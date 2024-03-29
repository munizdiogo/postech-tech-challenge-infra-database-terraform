-- Criar um banco de dados (caso ainda não exista)
CREATE DATABASE IF NOT EXISTS dbpostech_cliente;

-- Usar o banco de dados criado
USE dbpostech_cliente;


CREATE TABLE IF NOT EXISTS `clientes` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `data_criacao` DATETIME NOT NULL,
    `data_alteracao` DATETIME NOT NULL,
    `nome` VARCHAR(150) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `cpf` VARCHAR(11) NOT NULL,
    `endereco` VARCHAR(255) NOT NULL,
    `telefone` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE (`id`)
);




-- Criar um banco de dados (caso ainda não exista)
CREATE DATABASE IF NOT EXISTS dbpostech_pedido;

-- Usar o banco de dados criado
USE dbpostech_pedido;


CREATE TABLE IF NOT EXISTS `pedidos` (
    `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
    `data_criacao` DATETIME NOT NULL,
    `data_alteracao` DATETIME NOT NULL,
    `status` VARCHAR(20) NOT NULL,
    `cpf` VARCHAR(11) NOT NULL,
    `pagamento_status` VARCHAR(60) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE (`id`)
);

CREATE TABLE IF NOT EXISTS `pedidos_produtos` (
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


CREATE TABLE IF NOT EXISTS `produtos` (
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