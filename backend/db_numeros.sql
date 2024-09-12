-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 11-Set-2024 às 23:12
-- Versão do servidor: 5.7.33
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_numeros`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `numeros`
--

CREATE TABLE `numeros` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(15) DEFAULT NULL,
  `numero` varchar(11) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `numero_status` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `numeros`
--

INSERT INTO `numeros` (`id`, `id_user`, `numero`, `numero_status`, `created_at`, `updated_at`) VALUES
(1, 1, '11984884568', 'novo', '2024-09-11 23:07:43', '2024-09-11 23:07:43'),
(2, 1, '11984884567', 'concluido', '2024-09-11 23:08:21', '2024-09-11 23:08:21'),
(3, 1, '11984884566', 'cancelado', '2024-09-11 23:10:20', '2024-09-11 23:10:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `passwrd` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `passwrd`, `created_at`, `update_at`) VALUES
(1, 'user1', 'abc123', '2024-09-11 23:07:01', '2024-09-11 23:07:01');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `numeros`
--
ALTER TABLE `numeros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `numeros`
--
ALTER TABLE `numeros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
