-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Mar-2022 às 23:18
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `review`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(256) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `status` enum('ativo','inativo','apagado') NOT NULL DEFAULT 'ativo',
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `status`, `data`) VALUES
(1, 'Davi Silva', 'davi@silva.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ativo', '2022-03-22 21:56:52'),
(2, 'Joana Oliveira', 'jo@oli.com', '51eac6b471a284d3341d8c0c63d0f1a286262a18', 'ativo', '2022-03-22 22:00:31'),
(3, 'Joao Fernando', 'jo@fe.com', 'fc1200c7a7aa52109d762a9f005b149abef01479', 'ativo', '2022-03-22 22:00:31'),
(4, 'Leticia Farias', 'le@fa.com', '5f6955d227a320c7f1f6c7da2a6d96a851a8118f', 'ativo', '2022-03-22 22:02:20'),
(5, 'Wendel Macedo', 'we@ma.com', 'db00e4fdc8a6d8fc749a23649c9ec9343051ec47', 'ativo', '2022-03-22 22:02:20');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
