-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06/09/2024 às 01:23
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
-- Banco de dados: `eventos.sql`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `senha` varchar(40) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `genero`, `data_nascimento`, `cidade`, `estado`, `endereco`, `senha`, `foto`) VALUES
(1, 'Clodoaldo', 'julia22@gmail.com', '8422261893', 'feminino', '1990-11-08', 'Natal', 'RN', 'Rua Natal', '123', ''),
(2, 'Clodoaldo', 'Clodoaldo@gmail.com', '8422268888', 'masculino', '1965-04-10', 'Natal', 'RN', 'Rua do Graul', '123', ''),
(3, 'marco', 'marcos@.gmail', '8422261893', 'masculino', '1992-02-10', 'Natal', 'RN', 'Rua amores', '111', ''),
(4, 'paula', 'paula14@gmail.com', '22235-5689', 'feminino', '1988-12-14', 'Natal', 'RN', 'Zona norte', '789', ''),
(5, 'pedro', 'pedro@gmail.com', '123456', 'masculino', '2000-12-02', 'Natal', 'RN', 'Rua Natal', '789', ''),
(6, 'Alan', 'alanvidal17@hotmail.com', '8422261893', 'masculino', '1111-11-08', 'Natal', 'RN', 'Rua Natal', '111', ''),
(7, 'Paula', 'paula19@gmail.com', '22232525', 'feminino', '1990-12-12', 'Campina Grande', 'Paraíba', 'rua do amor', '777', ''),
(8, 'Lucas', 'lucas14@gmail.com', '22232522', 'masculino', '1994-12-12', 'Campina Grande', 'Paraíba', 'rua do amor', '456', ''),
(9, 'Maicon', 'Maico@hotmail.com', '456789', 'masculino', '1995-12-17', 'Natal', 'RN', 'Rua Natal', '999', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `responsavel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `valor_compra` decimal(10,2) NOT NULL,
  `pagamento_pix` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `numero_cartao` varchar(20) NOT NULL,
  `nome_cartao` varchar(255) NOT NULL,
  `codigo_seguranca` varchar(5) NOT NULL,
  `data_validade` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `compras`
--

INSERT INTO `compras` (`id`, `responsavel`, `email`, `valor_compra`, `pagamento_pix`, `telefone`, `cpf`, `cnpj`, `numero_cartao`, `nome_cartao`, `codigo_seguranca`, `data_validade`) VALUES
(1, 'Julia', 'julia22@gmail.com', 100.00, '0', '8422261893', '087.270.66-88', '12345679', '456', 'Visa', '789', '25/12'),
(2, 'Clodoaldo', 'Clodoaldo22@gmail.com', 200.00, '0', '8422261893', '087.270.66-88', '12345679', '456', 'Visa', '789', '25/12'),
(3, 'marcos', 'marco02@gmail.com', 500.00, '0', '8422261893', '087.270.66-88', '12345679', '456', 'Visa', '789', '25/12'),
(4, 'marcos', 'marco02@gmail.com', 500.00, '0', '8422261893', '087.270.66-88', '12345679', '456', 'Visa', '789', '25/12'),
(5, 'pedro', 'pedro@12@gmail.com', 500.00, '0', '8422261893', '122548', '12345679', '123', 'mastercard', '45987', '12/12'),
(6, 'bruno', 'bruno24@gmail.com', 500.00, '0', '8422261893', '087.270.66-88', '12345679', '4174', 'mastercard', '963', '12/26'),
(7, 'kleilton', 'kleilton456', 8000.00, '0', '8422261893', '087.270.330-87', '456123', '456987', 'Hipercard', '456', '17/28'),
(8, 'kleilton', 'kleilton456', 8000.00, '0', '8422261893', '087.270.330-87', '456123', '456987', 'Hipercard', '456', '17/28'),
(9, 'Alan', 'alan22@gmail.com', 100.00, '0', '8422261893', '122548', '456123', '56321', 'Hipercard', '4561', '12/29'),
(10, 'julia', 'julia22@gmail.com', 8000.00, '0', '8422261893', '087.270.66-88', '12345679', '789456', 'Visa', '456', '12/25'),
(11, 'pedro', 'pedro@gmail.com', 200.00, '0', '8422261893', '087.270.330-41', '12345679', '12134', 'Hipercard', '242', '12/24'),
(12, 'bruno', 'bruno24@gmail.com', 500.00, '0', '8422261893', '087.270.330-41', '12345679', '456', 'Hipercard', '646', '17/28'),
(13, 'pedro', 'pedro@gmail.com', 200.00, '0', '8422261893', '087.270.66-88', '12345679', '1247', 'Hipercard', '1256', '12/28'),
(14, 'julia', 'julia22@gmail.com', 100.00, '0', '8422261893', '087.270.66-88', '12345679', '1456', 'Visa', '456', '12/25'),
(15, 'junior', 'junior22@gmail.com', 5000.00, '0', '8422261893', '122548', '12345679', '123456', 'Visa', '7856', '12/28'),
(16, 'Aline', 'aline@gmail.com', 200.00, '0', '8422261893', '087.270.66-88', '12345679', '1456', 'Hipercard', '4569', '12/28'),
(17, 'Julia', 'julialover22@gmail.com', 5000.00, '0', '8422261893', '122548', '12345679', '124568', 'Hipercard', '45698', '12/27');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `email`, `mensagem`) VALUES
(1, 'julia', 'julialover22@gmail.com', 'não acesso'),
(2, 'Clodoaldo', 'Clodoaldo22@gmail.com', 'Não conseguir marcar a viagem '),
(3, 'pedro', 'pedro@gmail.com', 'preciso de ajuda'),
(4, 'Clodoaldo', 'Clodoaldo@gmail.com', 'programa deu erro'),
(5, 'Miriã ', 'miria@gmail.com', 'falhou na compra'),
(6, 'Alan', 'alanvidal17@hotmail.com', 'ajuda-me'),
(7, 'júnior', 'junior22@gmail.com', 'Preciso de ajuda no aplicativo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `formulario_eventos`
--

CREATE TABLE `formulario_eventos` (
  `id` int(11) NOT NULL,
  `responsavel` varchar(255) NOT NULL,
  `evento` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `local` varchar(255) NOT NULL,
  `hora` time NOT NULL,
  `duracao` varchar(255) NOT NULL,
  `seguranca` varchar(255) NOT NULL,
  `preco` varchar(255) NOT NULL,
  `atracoes` varchar(255) NOT NULL,
  `observacao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `formulario_eventos`
--

INSERT INTO `formulario_eventos` (`id`, `responsavel`, `evento`, `categoria`, `data`, `local`, `hora`, `duracao`, `seguranca`, `preco`, `atracoes`, `observacao`) VALUES
(1, '', 'corrida', 'esportes', '2024-10-10', 'Centro', '11:11:00', '1 hora', 'polícia', '30,00', 'Volei', ''),
(2, '', 'corrida', 'esportes', '2024-01-10', 'Centro', '10:10:00', '1 hora', 'polícia', '30,00', 'Volei', ''),
(3, '', 'casamento ', 'eventos_religiosos', '2025-10-10', 'cidade da esperança', '21:00:00', '3 horas', 'menbros', '5,00', 'casamento', ''),
(4, '', 'casamento ', 'eventos_religiosos', '2024-09-14', 'Centro', '19:00:00', '3 horas', 'menbros', '4000', 'casamento', ''),
(5, '', 'casamento ', 'eventos_religiosos', '2024-09-14', 'Centro', '19:00:00', '3 horas', 'menbros', '4000', 'casamento', ''),
(6, '', 'corrida', 'esportes', '0024-12-12', 'Centro', '12:00:00', '1 hora', 'menbros', '30,00', 'corrida', ''),
(7, '', 'festa', 'passeios_e_tours', '2025-12-12', 'cidade da esperança', '19:00:00', '3 horas', 'menbros', '8000', 'festa privada', ''),
(8, '', 'casamento ', 'esportes', '2024-12-12', 'Centro', '12:30:00', '3 horas', 'menbros', '4000', 'corrida', ''),
(9, 'Julia', 'casamento ', 'eventos_religiosos', '2024-12-12', 'cidade da esperança', '19:30:00', '1 hora', 'menbros', '5,00', 'casamento', ''),
(10, 'Marcos', 'corrida', 'esportes', '2024-12-10', 'Centro', '12:30:00', '3 horas', 'menbros', '5,00', 'corrida', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ratings`
--

INSERT INTO `ratings` (`id`, `rating`, `created_at`) VALUES
(1, 3, '2024-09-02 12:18:39'),
(2, 3, '2024-09-05 22:21:55'),
(3, 5, '2024-09-05 22:54:11');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `formulario_eventos`
--
ALTER TABLE `formulario_eventos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `formulario_eventos`
--
ALTER TABLE `formulario_eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
