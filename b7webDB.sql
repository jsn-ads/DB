-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.24-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para bw7db
CREATE DATABASE IF NOT EXISTS `bw7db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `bw7db`;

-- Copiando estrutura para tabela bw7db.fornecedores
CREATE TABLE IF NOT EXISTS `fornecedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela bw7db.fornecedores: ~5 rows (aproximadamente)
INSERT INTO `fornecedores` (`id`, `nome`, `telefone`) VALUES
	(1, 'VENTISOL', '(11)99845-8415'),
	(2, 'LG', '(62)98454-5484'),
	(3, 'POSITIVO', '(13)97898-4598'),
	(4, 'MIDEA', '(15)95564-5948'),
	(5, 'SAMSUNG', '(27)95984-7845');

-- Copiando estrutura para tabela bw7db.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_fornecedor` int(11) DEFAULT NULL,
  `nome` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `estoque` int(11) DEFAULT NULL,
  `minestoque` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_produtos_fornecedores` (`id_fornecedor`),
  CONSTRAINT `FK_produtos_fornecedores` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela bw7db.produtos: ~6 rows (aproximadamente)
INSERT INTO `produtos` (`id`, `id_fornecedor`, `nome`, `preco`, `estoque`, `minestoque`) VALUES
	(1, 1, 'Nobille CLM10-02', 500, 7, 10),
	(2, 1, 'Clin35pro', 1677.09, 12, 10),
	(3, 2, 'Split 9000 Btus Dual Inverter Voice Frio', 2369, 15, 10),
	(4, 5, 'Digital Inverter Ultra 9.000 BTUs', 2229, 18, 10),
	(5, 4, 'Midea AKAF1', 999, 3, 10),
	(6, 3, 'PiratedOtarioEdition', 200, 0, 10);

-- Copiando estrutura para tabela bw7db.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cadastro` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela bw7db.usuarios: ~4 rows (aproximadamente)
INSERT INTO `usuarios` (`id`, `nome`, `cadastro`) VALUES
	(1, 'Jose Neto', '2023-10-27'),
	(2, 'Pedro', '2023-10-27'),
	(3, 'Joao', '0000-00-00'),
	(4, 'Jéssica', '0000-00-00'),
	(5, 'Beatriz', '0000-00-00');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
