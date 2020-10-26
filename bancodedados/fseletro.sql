-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Out-2020 às 03:19
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fseletro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` int(11) NOT NULL,
  `nomecliente` varchar(65) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `telefone` int(10) NOT NULL,
  `produto` varchar(45) NOT NULL,
  `preco` float NOT NULL,
  `quantidade` smallint(6) NOT NULL,
  `valortotal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`idpedido`, `nomecliente`, `endereco`, `telefone`, `produto`, `preco`, `quantidade`, `valortotal`) VALUES
(1, 'Roberto Pires', 'Rua 24 de maio 100, Centro São Paulo', 999990000, 'geladeira', 1910, 2, 3820),
(2, 'Maria Gonzales', 'R. 21 de Abril,200 - Brás São Paulo - SP', 922333444, 'geladeira', 2069, 1, 2069),
(4, 'Tiago Costa', 'Rua Mário de Andrade, 16 - Barra Funda, São Paulo - SP', 955566611, 'Lava-louça Eletrolux inox ', 2799.9, 3, 8.399),
(5, 'Sergio Nunes', 'Rua Sergipe,446 - Consolacao, São Paulo - SP', 911855500, 'microondas', 409, 2, 818),
(6, 'Maria Acapuco', 'Av. Dr. Carlos de Campos, 799 - Parque Renato Maia', 987654321, 'fogão', 1129, 2, 2.258),
(7, 'João Sanches', 'Rua Peixoto Gomide, 772 - Consolação', 888866666, 'lava louça', 2799.9, 4, 11199.6),
(8, 'Joaquina Martins Lopes', 'Alameda Min. Rocha Azevedo, 300- Jardim Paulista', 88888800, 'microondas', 436, 1, 436),
(9, 'Monica Origi', 'R. Mauá, 28 - São Paulo', 767676764, 'fogão', 1129, 2, 2258),
(10, 'Guilherme Eduardo Silva', 'R. Augusta, 1007 - Consolação\r\nSão Paulo', 657483902, 'Lava-louça ', 1730.61, 1, 1730.61),
(11, 'Junior Maranha', 'rua moises,67 São Paulo', 843210102, 'maquina de lavar', 2510, 3, 7530);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idprodutos` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idprodutos`, `categoria`, `descricao`, `preco`, `precofinal`, `imagem`) VALUES
(1, 'geladeira', 'Geladeira Frost free Brastemp Side inverse 540 litros', '6399.00', '5019.00', 'img/produtos/geladeira2.jpeg'),
(2, 'geladeira', 'Geladeira Frost free Brastemp Side inverse 540 litros', '6399.00', '5019.00', 'img/produtos/geladeira2.jpeg'),
(3, 'geladeira', 'Geladeira Frost free Brastemp branca 370 litros', '2069.60', '1910.00', 'img/produtos/geladeira3.jpeg'),
(4, 'geladeira', 'Geladeira Frost free Consul prata 340 litros', '2199.60', '2069.00', 'img/produtos/geladeira1.jpeg'),
(5, 'fogão', 'Fogão 4 bocas Consul inox com mesa de vidro', '1209.00', '1129.00', 'img/produtos/fogao2.jpeg'),
(6, 'fogão', 'Fogão 4 bocas atlas monaco com acendimento automático', '609.80', '519.00', 'img/produtos/fogao1.jpeg'),
(7, 'microondas', 'Micro-ondas 32 litros Consul Inox 220V', '580.00', '409.00', 'img/produtos/microondas1.jpeg'),
(8, 'microondas', 'Micro-ondas espelhado 220V Philco 25 litros', '6399.00', '5019.00', 'img/produtos/microondas2.jpeg'),
(9, 'microondas', 'Forno de Micro-ondas Eletrolux 20 litros branco', '459.00', '436.00', 'img/produtos/microondas3.jpeg'),
(10, 'microondas', 'Forno de Micro-ondas Eletrolux 20 litros branc', '459.00', '436.00', 'img/produtos/microondas3.jpeg'),
(11, 'maquina', 'Máquina de lavar roupas Philco 11kg branca', '2759.00', '2510.00', 'img/produtos/maquina%20de%20lavar1.jpeg'),
(12, 'maquina', 'Máquina Turbo Performance Brastemp 11kg branca', '1699.00', '1214.10', 'img/produtos/maquina%20de%20lavar2.jpeg'),
(13, 'lava louça', 'Lava-louça Eletrolux inox', '3599.90', '2799.00', 'img/produtos/lava%20lou%C3%A7as1.jpeg'),
(14, 'lava louça', 'Lava-louça Compacta e serviços branca 127V Brastemp', '1979.50', '1730.61', 'img/produtos/lava%20lou%C3%A7as2.jpeg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idprodutos`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idprodutos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
