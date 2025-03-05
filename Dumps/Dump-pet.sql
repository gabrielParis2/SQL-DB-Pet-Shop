-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/03/2025 às 00:51
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pet_shop`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `animais`
--

CREATE TABLE `animais` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `idade` date DEFAULT NULL,
  `raca` varchar(15) DEFAULT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `id_dono` int(11) DEFAULT NULL,
  `id_servico` int(11) DEFAULT NULL,
  `cadastrado_em` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `animais`
--

INSERT INTO `animais` (`id`, `nome`, `tipo`, `idade`, `raca`, `peso`, `id_dono`, `id_servico`, `cadastrado_em`) VALUES
(1, 'Freddy', 'Cachorro', '2008-02-16', 'Vira lata <3', 1.00, 1, NULL, '2024-02-15'),
(2, 'Freddy', 'Cachorro', '2008-02-16', 'Vira-lata', 15.80, 1, NULL, '2024-01-10'),
(3, 'Luna', 'Gato', '2016-06-20', 'Persa', 4.20, 2, NULL, '2023-12-20'),
(4, 'Thor', 'Cachorro', '2019-10-05', 'Labrador', 32.50, 3, NULL, '2023-11-05'),
(5, 'Mia', 'Gato', '2018-09-12', 'Siamês', 3.80, 4, NULL, '2024-02-28'),
(6, 'Rex', 'Cachorro', '2015-07-23', 'Pastor Alemão', 42.20, 5, NULL, '2023-10-14'),
(7, 'Nina', 'Cachorro', '2021-01-30', 'Shih Tzu', 6.50, 6, NULL, '2023-09-30'),
(8, 'Bobby', 'Cachorro', '2017-11-18', 'Poodle', 8.30, 7, NULL, '2024-01-22'),
(9, 'Mel', 'Gato', '2020-05-25', 'Bengal', 5.10, 8, NULL, '2023-08-19'),
(10, 'Duke', 'Cachorro', '2013-04-08', 'Husky Siberiano', 27.70, 9, NULL, '2023-07-11'),
(11, 'Zeca', 'Cachorro', '2014-12-14', 'Golden Retrieve', 34.80, 10, NULL, '2024-02-03'),
(12, 'Freddy', 'Cachorro', '2008-02-16', 'Vira-lata', 15.80, 1, NULL, '2023-06-29'),
(13, 'Luna', 'Gato', '2016-06-20', 'Persa', 4.20, 2, NULL, '2023-05-16'),
(14, 'Thor', 'Cachorro', '2019-10-05', 'Labrador', 32.50, 3, NULL, '2023-04-07'),
(15, 'Mia', 'Gato', '2018-09-12', 'Siamês', 3.80, 4, NULL, '2023-03-25'),
(16, 'Rex', 'Cachorro', '2015-07-23', 'Pastor Alemão', 42.20, 5, NULL, '2023-12-01'),
(17, 'Nina', 'Cachorro', '2021-01-30', 'Shih Tzu', 6.50, 6, NULL, '2023-11-18'),
(18, 'Bobby', 'Cachorro', '2017-11-18', 'Poodle', 8.30, 7, NULL, '2023-10-05'),
(19, 'Mel', 'Gato', '2020-05-25', 'Bengal', 5.10, 8, NULL, '2023-09-12'),
(20, 'Duke', 'Cachorro', '2013-04-08', 'Husky Siberiano', 27.70, 9, NULL, '2023-08-01'),
(21, 'Zeca', 'Cachorro', '2014-12-14', 'Golden Retrieve', 34.80, 10, NULL, '2023-01-08');

-- --------------------------------------------------------

--
-- Estrutura para tabela `assistencia`
--

CREATE TABLE `assistencia` (
  `id` int(11) NOT NULL,
  `id_funcionario` int(11) DEFAULT NULL,
  `id_animal` int(11) DEFAULT NULL,
  `id_atendimento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `assistencia`
--

INSERT INTO `assistencia` (`id`, `id_funcionario`, `id_animal`, `id_atendimento`) VALUES
(1, 3, 1, 2),
(2, 1, 2, 4),
(3, 5, 3, 1),
(4, 2, 4, 3),
(5, 4, 5, 5),
(6, 3, 6, 6),
(7, 1, 7, 7),
(8, 5, 8, 8),
(9, 2, 9, 9),
(10, 4, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimentos`
--

CREATE TABLE `atendimentos` (
  `id_atendimento` int(11) NOT NULL,
  `data_atendimento` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `id_funcionario` int(11) DEFAULT NULL,
  `id_animal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimentos`
--

INSERT INTO `atendimentos` (`id_atendimento`, `data_atendimento`, `valor`, `id_funcionario`, `id_animal`) VALUES
(1, '2025-02-03', 235.99, 5, 1),
(2, '2025-02-03', 235.99, 5, 1),
(3, '2025-02-04', 120.00, 5, 2),
(4, '2025-02-05', 79.90, 1, 3),
(5, '2025-02-06', 150.00, 7, 4),
(6, '2025-02-07', 300.00, 2, 5),
(7, '2025-02-03', 235.99, 2, 1),
(8, '2025-02-04', 120.00, 7, 2),
(9, '2025-02-05', 79.90, 3, 3),
(10, '2025-02-06', 150.00, 7, 4),
(11, '2025-02-07', 300.00, 10, 5),
(12, NULL, NULL, 2, NULL),
(13, NULL, NULL, 4, NULL),
(14, NULL, NULL, 7, NULL),
(15, NULL, NULL, 7, NULL),
(16, NULL, NULL, 3, NULL),
(17, NULL, NULL, 8, NULL),
(18, NULL, NULL, 7, NULL),
(19, NULL, NULL, 8, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `donos`
--

CREATE TABLE `donos` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `endereco` varchar(60) DEFAULT NULL,
  `id_servico_favorito` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `donos`
--

INSERT INTO `donos` (`id`, `nome`, `telefone`, `endereco`, `id_servico_favorito`) VALUES
(1, 'Amanda Boldrini', '51099999999', 'av rodrigues da fonseca', NULL),
(2, 'Amanda Boldrini', '51099999999', 'Av. Rodrigues da Fonseca', NULL),
(3, 'Gabriel Oliveira', '51988888888', 'Rua das Palmeiras, 123', 2),
(4, 'Juliana Santos', '51977777777', 'Av. Central, 456', NULL),
(5, 'Ricardo Lima', '51966666666', 'Rua dos Pinheiros, 789', NULL),
(6, 'Mariana Souza', '51955555555', 'Rua Flor de Lis, 159', NULL),
(7, 'Carlos Pereira', '51944444444', 'Av. Independência, 753', NULL),
(8, 'Fernanda Rocha', '51933333333', 'Rua das Violetas, 321', NULL),
(9, 'Paulo Henrique', '51922222222', 'Rua Nova Esperança, 852', NULL),
(10, 'Tatiane Almeida', '51911111111', 'Av. dos Jacarandás, 963', NULL),
(11, 'Lucas Fernandes', '51900000000', 'Rua das Mangueiras, 753', NULL),
(12, 'Amanda Boldrini', '51099999999', 'Av. Rodrigues da Fonseca', NULL),
(13, 'Gabriel Oliveira', '51988888888', 'Rua das Palmeiras, 123', NULL),
(14, 'Juliana Santos', '51977777777', 'Av. Central, 456', NULL),
(15, 'Ricardo Lima', '51966666666', 'Rua dos Pinheiros, 789', NULL),
(16, 'Mariana Souza', '51955555555', 'Rua Flor de Lis, 159', NULL),
(17, 'Carlos Pereira', '51944444444', 'Av. Independência, 753', NULL),
(18, 'Fernanda Rocha', '51933333333', 'Rua das Violetas, 321', NULL),
(19, 'Paulo Henrique', '51922222222', 'Rua Nova Esperança, 852', NULL),
(20, 'Tatiane Almeida', '51911111111', 'Av. dos Jacarandás, 963', NULL),
(21, 'Lucas Fernandes', '51900000000', 'Rua das Mangueiras, 753', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionario` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cargo_funcionario` varchar(20) NOT NULL,
  `telefone_funcionario` varchar(15) NOT NULL,
  `salario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id_funcionario`, `nome`, `cargo_funcionario`, `telefone_funcionario`, `salario`) VALUES
(1, 'Marcos Silva', 'Veterinário', '51912345678', 5000.00),
(2, 'Ana Souza', 'Atendente', '51987654321', 2500.00),
(3, 'Bruno Oliveira', 'Tosador', '51965498732', 2800.00),
(4, 'Clara Mendes', 'Recepcionista', '51932165498', 2200.00),
(5, 'Diego Santos', 'Administrador', '51978945612', 4500.00),
(6, 'Marcos Silva', 'Veterinário', '51912345678', 5000.00),
(7, 'Ana Souza', 'Atendente', '51987654321', 2500.00),
(8, 'Bruno Oliveira', 'Tosador', '51965498732', 2800.00),
(9, 'Clara Mendes', 'Recepcionista', '51932165498', 2200.00),
(10, 'Diego Santos', 'Administrador', '51978945612', 4500.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` varchar(60) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `estoque` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `descricao`, `preco`, `estoque`) VALUES
(1, 'Ração Premium', 'Ração completa para cães adultos', 89.90, 50),
(2, 'Areia Higiênica', 'Areia para gatos 4kg', 29.90, 30),
(3, 'Shampoo Pet', 'Shampoo especial para pelos brilhantes', 25.90, 40),
(4, 'Coleira Antipulgas', 'Proteção contra pulgas e carrapatos', 79.90, 25),
(5, 'Petisco Natural', 'Petisco saudável para cães', 19.90, 60);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `nome_servico` varchar(25) DEFAULT NULL,
  `descricao_servico` varchar(100) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `id_dono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id`, `nome_servico`, `descricao_servico`, `preco`, `id_dono`) VALUES
(1, 'Banho e Tosa', 'Serviço completo de banho e tosa', 79.90, 3),
(2, 'Consulta Veterinária', 'Consulta com veterinário especializado', 120.00, 5),
(3, 'Vacinação', 'Vacinação completa para cães e gatos', 150.00, 12),
(4, 'Castração', 'Cirurgia de castração para cães e gatos', 300.00, 12),
(5, 'Hotel Pet', 'Hospedagem para pets com toda segurança', 200.00, 3),
(6, 'Banho e Tosa', 'Serviço completo de banho e tosa', 79.90, 12),
(7, 'Consulta Veterinária', 'Consulta com veterinário especializado', 120.00, 14),
(8, 'Vacinação', 'Vacinação completa para cães e gatos', 150.00, 11),
(9, 'Castração', 'Cirurgia de castração para cães e gatos', 300.00, 11),
(10, 'Hotel Pet', 'Hospedagem para pets com toda segurança', 200.00, 11);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `id_vendas` int(11) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `data_venda` date NOT NULL,
  `valor_total` decimal(10,2) NOT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `id_funcionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vendas`
--

INSERT INTO `vendas` (`id_vendas`, `quantidade`, `data_venda`, `valor_total`, `id_produto`, `id_funcionario`) VALUES
(6, 2, '2025-02-08', 179.80, 1, 1),
(7, 1, '2025-02-09', 29.90, 2, 2),
(8, 3, '2025-02-10', 77.70, 3, 3),
(9, 1, '2025-02-11', 79.90, 4, 4),
(10, 5, '2025-02-12', 99.50, 5, 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `animais`
--
ALTER TABLE `animais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dono` (`id_dono`),
  ADD KEY `fk_servico` (`id_servico`);

--
-- Índices de tabela `assistencia`
--
ALTER TABLE `assistencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_funcionario` (`id_funcionario`),
  ADD KEY `id_animal` (`id_animal`),
  ADD KEY `id_atendimento` (`id_atendimento`);

--
-- Índices de tabela `atendimentos`
--
ALTER TABLE `atendimentos`
  ADD PRIMARY KEY (`id_atendimento`),
  ADD KEY `fk_funcionario` (`id_funcionario`),
  ADD KEY `fk_animal` (`id_animal`);

--
-- Índices de tabela `donos`
--
ALTER TABLE `donos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_servico_favorito` (`id_servico_favorito`);

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dono` (`id_dono`);

--
-- Índices de tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id_vendas`),
  ADD KEY `fk_vendas_produto` (`id_produto`),
  ADD KEY `fk_vendas_funcionario` (`id_funcionario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `animais`
--
ALTER TABLE `animais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `assistencia`
--
ALTER TABLE `assistencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `atendimentos`
--
ALTER TABLE `atendimentos`
  MODIFY `id_atendimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `donos`
--
ALTER TABLE `donos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id_vendas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `animais`
--
ALTER TABLE `animais`
  ADD CONSTRAINT `fk_dono` FOREIGN KEY (`id_dono`) REFERENCES `donos` (`id`),
  ADD CONSTRAINT `fk_servico` FOREIGN KEY (`id_servico`) REFERENCES `servicos` (`id`);

--
-- Restrições para tabelas `assistencia`
--
ALTER TABLE `assistencia`
  ADD CONSTRAINT `assistencia_ibfk_1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id_funcionario`),
  ADD CONSTRAINT `assistencia_ibfk_2` FOREIGN KEY (`id_animal`) REFERENCES `animais` (`id`),
  ADD CONSTRAINT `assistencia_ibfk_3` FOREIGN KEY (`id_atendimento`) REFERENCES `atendimentos` (`id_atendimento`);

--
-- Restrições para tabelas `atendimentos`
--
ALTER TABLE `atendimentos`
  ADD CONSTRAINT `fk_animal` FOREIGN KEY (`id_animal`) REFERENCES `animais` (`id`),
  ADD CONSTRAINT `fk_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id_funcionario`);

--
-- Restrições para tabelas `donos`
--
ALTER TABLE `donos`
  ADD CONSTRAINT `donos_ibfk_1` FOREIGN KEY (`id_servico_favorito`) REFERENCES `servicos` (`id`);

--
-- Restrições para tabelas `servicos`
--
ALTER TABLE `servicos`
  ADD CONSTRAINT `servicos_ibfk_1` FOREIGN KEY (`id_dono`) REFERENCES `donos` (`id`);

--
-- Restrições para tabelas `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `fk_vendas_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id_funcionario`),
  ADD CONSTRAINT `fk_vendas_produto` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
