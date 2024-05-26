CREATE DATABASE  IF NOT EXISTS `aps_helpdesk` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `aps_helpdesk`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: aps_helpdesk
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cadastro_login`
--

DROP TABLE IF EXISTS `cadastro_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_login` (
  `id_cadastro` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `senha` text NOT NULL,
  PRIMARY KEY (`id_cadastro`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro_login`
--

LOCK TABLES `cadastro_login` WRITE;
/*!40000 ALTER TABLE `cadastro_login` DISABLE KEYS */;
INSERT INTO `cadastro_login` VALUES (1,'Jose','jose@gmail.com','adminjose'),(2,'vinicius','vinicius@gmail.com','adminvinicius'),(3,'Junior','Junior@gmail.com','adminjunior'),(4,'Ana ','Ana@gmail.com','ana12345'),(5,'Lucas Silva','lucas@email.com','lucas'),(6,'Henrique silva ','helrique@gmail.com','12345'),(7,'Luiz silva ','luiz@gmail.com','1234');
/*!40000 ALTER TABLE `cadastro_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadastro_patrimonio`
--

DROP TABLE IF EXISTS `cadastro_patrimonio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_patrimonio` (
  `id_patrimonio` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) NOT NULL,
  `categoria` varchar(200) NOT NULL,
  `data_aquisicao` varchar(50) NOT NULL,
  `valor` varchar(50) NOT NULL,
  `departamento` varchar(200) NOT NULL,
  PRIMARY KEY (`id_patrimonio`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro_patrimonio`
--

LOCK TABLES `cadastro_patrimonio` WRITE;
/*!40000 ALTER TABLE `cadastro_patrimonio` DISABLE KEYS */;
INSERT INTO `cadastro_patrimonio` VALUES (1,'computador','eletronico','10/06/2023','123.00','RH'),(2,'notbook','eletronico','18/08/2023','1.200','TI'),(3,'monitor','eletronico','24/05/2023','450.00','Marketing'),(4,'Impressora','Eletronico','23/02/2024','123,00','RH'),(5,'Sistema de iluminação ','insfraestrutura','24/05/2024','123.00','Marketing'),(6,'mesas','moveis ','23/02/2024','450.00','Marketing');
/*!40000 ALTER TABLE `cadastro_patrimonio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadastro_pessoa`
--

DROP TABLE IF EXISTS `cadastro_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_pessoa` (
  `id_pessoa` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `departamento` varchar(200) NOT NULL,
  `cargo` varchar(200) NOT NULL,
  PRIMARY KEY (`id_pessoa`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro_pessoa`
--

LOCK TABLES `cadastro_pessoa` WRITE;
/*!40000 ALTER TABLE `cadastro_pessoa` DISABLE KEYS */;
INSERT INTO `cadastro_pessoa` VALUES (1,'Vinicius','vinicius@email.com','1638473823','TI','analista de dados'),(2,'Joao','Joao@email.com','1638474458','TI','analista de redes'),(3,'Marcos ','marcos@gmail.com','1639872216','Marketing','Publicitário '),(4,'henrique silva ','henrique@gmail.com','16994568932','Marketing','Analista de marketing'),(5,'gustavo ','gustavo@gmail.com','1632589752','Marketing','Gerente de marketing');
/*!40000 ALTER TABLE `cadastro_pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatar_problema`
--

DROP TABLE IF EXISTS `relatar_problema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relatar_problema` (
  `id_problema` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `departamento` varchar(150) NOT NULL,
  `problema` text NOT NULL,
  `prioridade` varchar(50) NOT NULL,
  PRIMARY KEY (`id_problema`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatar_problema`
--

LOCK TABLES `relatar_problema` WRITE;
/*!40000 ALTER TABLE `relatar_problema` DISABLE KEYS */;
INSERT INTO `relatar_problema` VALUES (1,'Vinicius','vinicius@gmail.com','TI','probrema na rede de computadores','alta'),(2,'Ana laura','ana@gmail.com','RH','probrema com pagina rh','alta'),(3,'Marcos ','marcos@gmail.com','Marketing','Problemas com a internet ','Alta '),(4,'Joao','Joao@gmail.com','Atendimento','linhas','alta'),(5,'Paulo Henrique ','Paulo@gmail.com','TI ','Problemas no servidor ','Alta '),(6,'Vinicius Oliveira Dos Santos ','vinicius@gmail.com','Marketing','Problemas com o sistema de iluminação ','media'),(7,'Marcos ','marcos@gmail.com','RH','Problemas com a internet ','Alta ');
/*!40000 ALTER TABLE `relatar_problema` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-26 12:09:52
