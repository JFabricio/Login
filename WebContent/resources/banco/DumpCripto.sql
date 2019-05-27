CREATE DATABASE  IF NOT EXISTS `banco_criptografia` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `banco_criptografia`;
-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: banco_criptografia
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `sobrenome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(64) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'joao','fabricio','joao@fabricio','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',NULL),(2,'JoÃ£o','Antonio','joao@123','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',NULL),(3,'Joao Antonio','Fabricio','joao@fabricio','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',NULL),(4,'Joao Antonio','joao antonio','joao@33','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',NULL),(5,'aaaaaa','bbbbb','aa@bb','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',NULL),(6,'JoaoAntonio','Fabricio','joao@antonio','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5',NULL),(7,'fabricio','ferreira','joao@ferreira','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','2019-5-2-20-5-24 - bbasquete.jpeg'),(8,'JOAOA','FERRERI','JOAO@FERREIRA','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','2019-5-2-20-6-22 - alexandre.jpeg'),(9,'sdfsdf','fsdfsdf','sadasdasdasd@sadasdas','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','2019-5-2-21-28-17 - Boston_Celtics.png'),(10,'sdfsdf','fsdfsdf','sadasdasdasd@sadasda','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','2019-5-2-21-34-46 - Boston_Celtics.png'),(11,'asdas','sdsd','wwww@333','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','2019-5-2-21-38-57 - alexandre.jpeg'),(12,'joao','ferreira','joao@teste','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','2019-5-27-8-19-2 - alexandre.jpeg'),(13,'Joao','Teste','joao@testefinal','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','2019-5-27-8-41-18 - alexandre.jpeg'),(14,'joao','teste','teste@ferreira','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','2019-5-27-8-44-37 - bbasquete.jpeg'),(15,'joao','joao','teste@1','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','2019-5-27-11-33-5 - Captura de tela de 2018-11-19 08-15-51.png'),(16,'szas','sasas','teste@2','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','2019-5-27-11-40-33 - Boston_Celtics.png');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'banco_criptografia'
--

--
-- Dumping routines for database 'banco_criptografia'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-27 15:10:13
