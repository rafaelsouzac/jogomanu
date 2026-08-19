-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: jogomanu
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `jogomanu`
--

/*!40000 DROP DATABASE IF EXISTS `jogomanu`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jogomanu` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `jogomanu`;

--
-- Table structure for table `acessousuario`
--

DROP TABLE IF EXISTS `acessousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acessousuario` (
  `idacessousuario` int(11) NOT NULL AUTO_INCREMENT,
  `iniciodasessao` datetime DEFAULT current_timestamp(),
  `fimdasesao` datetime DEFAULT NULL,
  `fk_usuario` int(11) NOT NULL,
  `idsessao` varchar(510) NOT NULL,
  PRIMARY KEY (`idacessousuario`),
  KEY `fk_sessao_user_idx` (`fk_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acessousuario`
--

LOCK TABLES `acessousuario` WRITE;
/*!40000 ALTER TABLE `acessousuario` DISABLE KEYS */;
INSERT INTO `acessousuario` VALUES (1,'2026-07-14 08:51:29','2026-07-28 10:14:25',9,'tc8usk3j324aie3agccbn5h1eg'),(2,'2026-07-14 08:51:56',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(3,'2026-07-14 08:51:58',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(4,'2026-07-14 08:56:09',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(5,'2026-07-14 09:10:20',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(6,'2026-07-14 09:12:20',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(7,'2026-07-14 09:12:22',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(8,'2026-07-14 09:18:54',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(9,'2026-07-14 09:29:17','2026-08-17 09:04:21',9,'tc8usk3j324aie3agccbn5h1eg'),(10,'2026-07-14 09:32:16',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(11,'2026-07-14 09:35:33',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(12,'2026-07-14 09:36:31',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(13,'2026-07-14 09:38:31',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(14,'2026-07-14 09:39:21',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(15,'2026-07-14 09:39:23',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(16,'2026-07-14 09:42:18',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(17,'2026-07-14 09:42:34',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(18,'2026-07-14 09:42:45',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(19,'2026-07-14 09:43:02',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(20,'2026-07-14 09:46:01',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(21,'2026-07-14 09:46:49',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(22,'2026-07-14 09:50:22',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(23,'2026-07-14 09:51:39',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(24,'2026-07-14 09:52:33',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(25,'2026-07-14 09:53:03',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(26,'2026-07-14 09:53:54',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(27,'2026-07-14 09:54:46',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(28,'2026-07-14 09:55:02',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(29,'2026-07-14 09:55:57',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(30,'2026-07-14 09:56:12',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(31,'2026-07-14 09:58:38',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(32,'2026-07-14 09:59:07',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(33,'2026-07-14 09:59:28',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(34,'2026-07-14 10:04:21',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(35,'2026-07-14 10:05:42',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(36,'2026-07-14 10:06:23',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(37,'2026-07-14 10:06:26',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(38,'2026-07-14 10:06:52',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(39,'2026-07-14 10:07:25',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(40,'2026-07-14 10:08:12',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(41,'2026-07-14 10:08:29',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(42,'2026-07-14 10:08:32',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(43,'2026-07-14 10:09:54',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(44,'2026-07-14 10:12:08',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(45,'2026-07-14 10:13:22',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(46,'2026-07-14 10:14:11',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(47,'2026-07-14 10:14:31',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(48,'2026-07-14 10:14:33',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(49,'2026-07-14 10:14:41',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(50,'2026-07-14 10:14:48',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(51,'2026-07-14 10:17:32',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(52,'2026-07-14 10:18:40',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(53,'2026-07-14 10:19:39',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(54,'2026-07-14 10:19:52',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(55,'2026-07-14 10:20:14',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(56,'2026-07-14 10:20:16',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(57,'2026-07-14 10:21:12',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(58,'2026-07-14 10:25:10',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(59,'2026-07-14 10:25:30',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(60,'2026-07-14 10:26:05',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(61,'2026-07-14 10:26:42',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(62,'2026-07-14 10:27:19',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(63,'2026-07-14 10:27:46',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(64,'2026-07-14 10:28:22',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(65,'2026-07-14 10:29:02',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(66,'2026-07-14 10:29:38',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(67,'2026-07-14 10:33:29',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(68,'2026-07-14 10:34:35',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(69,'2026-07-14 10:34:49',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(70,'2026-07-14 10:35:11',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(71,'2026-07-14 10:35:43',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(72,'2026-07-14 10:40:46',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(73,'2026-07-14 10:41:15',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(74,'2026-07-14 10:41:18',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(75,'2026-07-14 10:41:30',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(76,'2026-07-14 10:42:38',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(77,'2026-07-14 10:44:17',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(78,'2026-07-14 10:45:15',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(79,'2026-07-14 10:45:56',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(80,'2026-07-14 10:47:15',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(81,'2026-07-14 10:48:27',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(82,'2026-07-14 10:49:48',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(83,'2026-07-14 10:53:53',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(84,'2026-07-14 10:54:30',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(85,'2026-07-14 10:54:59',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(86,'2026-07-14 10:56:32',NULL,9,'tc8usk3j324aie3agccbn5h1eg'),(87,'2026-07-14 16:40:24',NULL,9,'i58rfkvcv8uu443khbn4cok7oh'),(88,'2026-07-14 16:42:44',NULL,9,'i58rfkvcv8uu443khbn4cok7oh'),(89,'2026-07-14 16:42:47',NULL,9,'i58rfkvcv8uu443khbn4cok7oh'),(90,'2026-07-14 16:43:00',NULL,9,'i58rfkvcv8uu443khbn4cok7oh'),(91,'2026-07-14 16:48:40',NULL,9,'i58rfkvcv8uu443khbn4cok7oh'),(92,'2026-07-14 16:49:11',NULL,9,'i58rfkvcv8uu443khbn4cok7oh'),(93,'2026-07-14 16:50:01',NULL,9,'fferm6dt4lasserhhdp5sm35gq'),(94,'2026-07-14 16:51:11',NULL,9,'fferm6dt4lasserhhdp5sm35gq'),(95,'2026-07-14 16:52:53',NULL,9,'fferm6dt4lasserhhdp5sm35gq'),(96,'2026-07-14 16:55:18',NULL,9,'fferm6dt4lasserhhdp5sm35gq'),(97,'2026-07-14 16:55:49',NULL,9,'fferm6dt4lasserhhdp5sm35gq'),(98,'2026-07-14 17:03:48',NULL,9,'fferm6dt4lasserhhdp5sm35gq'),(99,'2026-07-15 15:05:55',NULL,9,'e0i7i77n5sov6rga2mcuol9abk'),(100,'2026-07-15 22:57:05',NULL,9,'vucpdd6s3nu1ggpgo921fk22or'),(101,'2026-07-16 09:13:46',NULL,9,'jodge356mrdnj5i0apn3a2op1s'),(102,'2026-07-16 09:29:55',NULL,9,'jodge356mrdnj5i0apn3a2op1s'),(103,'2026-07-16 09:38:33',NULL,9,'jodge356mrdnj5i0apn3a2op1s'),(104,'2026-07-16 09:45:07',NULL,9,'jodge356mrdnj5i0apn3a2op1s'),(105,'2026-07-16 09:45:17',NULL,9,'jodge356mrdnj5i0apn3a2op1s'),(106,'2026-07-16 09:45:53',NULL,9,'jodge356mrdnj5i0apn3a2op1s'),(107,'2026-07-16 09:46:10',NULL,9,'jodge356mrdnj5i0apn3a2op1s'),(108,'2026-07-16 09:46:17',NULL,9,'jodge356mrdnj5i0apn3a2op1s'),(109,'2026-07-16 10:20:44',NULL,9,'r8goaht3qe1tnr7g1me6fgn1iu'),(110,'2026-07-16 10:23:25',NULL,9,'bnt3ate77hou9uqr5qtkmai2q2'),(111,'2026-07-16 10:39:59',NULL,9,'rsq6o6kfqjru6hbkcpqda0mbtp'),(112,'2026-07-16 10:47:09',NULL,9,'o93oaddm7bonf8esf78re8hhg8'),(113,'2026-07-19 12:14:36',NULL,9,'6b98e4thg937l58c7hcr5a42lm'),(114,'2026-07-19 13:54:07',NULL,9,'eqanlkl9kkl9r7ecn01gfsotnr'),(115,'2026-07-25 10:09:21',NULL,9,'fcsfn74672qgk9toakaeutcjcr'),(116,'2026-07-25 23:26:19',NULL,9,'heg9u8kv8at6k36q5vk90cd8i8'),(117,'2026-07-26 00:04:56',NULL,9,'otk9uj9c2ebv5ma4p79at9l6qt'),(118,'2026-07-26 14:47:47',NULL,9,'k25ujgd2jns767jkh1iolt46cr'),(119,'2026-07-27 10:04:56',NULL,9,'d1ucbv6hqe834dfl89nr6ql01j'),(120,'2026-07-28 10:03:47',NULL,9,'ikm4avesj0fntacvv7bhbr7kdl'),(121,'2026-07-28 10:36:08',NULL,9,'1phk53v5tsgdmt9sdn14s47ums'),(122,'2026-07-28 10:36:35',NULL,0,'d1a1nu027s0dpe7ms17otcejv1'),(123,'2026-07-29 10:21:00',NULL,9,'0be8f327e97ohnofcuu6csnnll'),(124,'2026-08-09 20:27:08',NULL,9,'cstd8urssaggdaff6bgfc60j48'),(125,'2026-08-09 20:43:21',NULL,9,'9enhf3ovlr17lt109adgs85rpq'),(126,'2026-08-09 21:05:49',NULL,9,'onr48gvo12oppvc8p5prner7fs'),(127,'2026-08-09 21:29:02',NULL,9,'pegnsjm0m748g8j04ao0lutj3e'),(128,'2026-08-09 21:35:46',NULL,9,'hfcmjhvbsv0l1935leg3md5lp4'),(129,'2026-08-09 21:56:37',NULL,9,'slc0u08i2uhtk1q491pgh9450o'),(130,'2026-08-09 22:00:27',NULL,9,'slc0u08i2uhtk1q491pgh9450o'),(131,'2026-08-09 22:23:49',NULL,9,'vb87m56fgq0gc9bp3u9bufpe7d'),(132,'2026-08-11 15:12:12',NULL,9,'d243na9f3vfo9an5h5e3j0mdfk'),(133,'2026-08-11 15:13:50',NULL,9,'k87vbdeid94ajn23e9v9icavp8'),(134,'2026-08-11 15:14:15',NULL,0,'ajsk7glubn0lka1vt4oclifi1r'),(135,'2026-08-13 22:02:22',NULL,0,'mpfksbps4rp6dm8ooh4kck9cm0'),(136,'2026-08-13 22:14:52',NULL,9,'c8vfltvds2slh665lh5gsbd0n7'),(137,'2026-08-14 09:42:08',NULL,9,'4p8dcmq6ceap3qh5ufcrq27bg9'),(138,'2026-08-14 09:44:34',NULL,9,'hcekrecieidbc29u9rah58tkad'),(139,'2026-08-14 09:53:06',NULL,9,'at051brfi203d1f2svhk12ncuo'),(140,'2026-08-17 07:51:06',NULL,9,'ubgl9hgd9vmc5sst7jfobldvkh'),(141,'2026-08-17 08:25:30',NULL,9,'inh53nigabc6hi30hcikk35r49'),(142,'2026-08-17 08:50:38',NULL,9,'4mmgi3ld8q9ijn7ca0plfujuim'),(143,'2026-08-17 08:51:55',NULL,9,'bea8jdh19mo3g491rd0gfis3q9'),(144,'2026-08-17 09:01:50',NULL,9,'bea8jdh19mo3g491rd0gfis3q9'),(145,'2026-08-17 09:04:10',NULL,9,'bea8jdh19mo3g491rd0gfis3q9');
/*!40000 ALTER TABLE `acessousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ativos`
--

DROP TABLE IF EXISTS `ativos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ativos` (
  `idativo` int(11) NOT NULL,
  `fk_pergunta` int(11) DEFAULT NULL,
  `pergunta_resposta` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '0 = pergunta\n1 = resposta\n',
  `fk_resposta` int(11) DEFAULT NULL,
  `caminho_img` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idativo`),
  KEY `fk_img_perg_idx` (`fk_pergunta`),
  KEY `fk_ativos_respostas1_idx` (`fk_resposta`),
  CONSTRAINT `fk_ativos_respostas1` FOREIGN KEY (`fk_resposta`) REFERENCES `respostas` (`pk_resposta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_img_perg` FOREIGN KEY (`fk_pergunta`) REFERENCES `perguntas` (`pk_pergunta`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ativos`
--

LOCK TABLES `ativos` WRITE;
/*!40000 ALTER TABLE `ativos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ativos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conteudos`
--

DROP TABLE IF EXISTS `conteudos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conteudos` (
  `pk_conteudo` int(11) NOT NULL AUTO_INCREMENT,
  `tituloconteudo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `textoconteudo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fk_disciplina` int(11) NOT NULL,
  `temimagem` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ordenar` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_conteudo`),
  KEY `fk_conteudos_disciplinas_idx` (`fk_disciplina`),
  CONSTRAINT `fk_conteudos_disciplinas1` FOREIGN KEY (`fk_disciplina`) REFERENCES `disciplinas` (`pk_disciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conteudos`
--

LOCK TABLES `conteudos` WRITE;
/*!40000 ALTER TABLE `conteudos` DISABLE KEYS */;
INSERT INTO `conteudos` VALUES (2,'Caderno 2 -','Multiplos',6,'',NULL),(4,'Livro 2 - Pontuação','Reticências, Aspas, Parênteses, Dois Pontos - Pág. 13, 14, 15 e 16',7,'0',NULL),(5,'Livro 2 - Ortografia','Traz, trás, atrás e detrás - Pág. 17, 18 e 19',7,'0',NULL),(6,'Livro 2 - Ortografia','Interpretação, Pontuação e Ortografia - Pág. 21, 22, 23 e 24',7,'0',NULL),(7,'Livro 2 - Elementos da  Comunicação','Pág. 144 até 152',7,'0',NULL);
/*!40000 ALTER TABLE `conteudos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplinas` (
  `pk_disciplina` int(11) NOT NULL AUTO_INCREMENT,
  `nomedisciplina` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `serie` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `grau` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'F = Ensino Fundamental\\nM = Ensino Médio',
  PRIMARY KEY (`pk_disciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplinas`
--

LOCK TABLES `disciplinas` WRITE;
/*!40000 ALTER TABLE `disciplinas` DISABLE KEYS */;
INSERT INTO `disciplinas` VALUES (6,'Matemática','05','F'),(7,'Português','05','F'),(8,'História','05','F'),(10,'Ciências','05','F'),(11,'Artes','05','F'),(13,'Inglês','05','F');
/*!40000 ALTER TABLE `disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gabaritos`
--

DROP TABLE IF EXISTS `gabaritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gabaritos` (
  `pk_gabarito` int(11) NOT NULL AUTO_INCREMENT,
  `fk_quiz` int(11) NOT NULL,
  `fk_pergunta` int(11) NOT NULL,
  `fk_resposta` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_gabarito`),
  KEY `fk_gabaritos_quiz1_idx` (`fk_quiz`),
  KEY `fk_gabaritos_perguntas1_idx` (`fk_pergunta`),
  KEY `fk_gabarito_resposta_idx` (`fk_resposta`),
  CONSTRAINT `fk_gabarito_resposta` FOREIGN KEY (`fk_resposta`) REFERENCES `respostas` (`pk_resposta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_gabaritos_perguntas1` FOREIGN KEY (`fk_pergunta`) REFERENCES `perguntas` (`pk_pergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_gabaritos_quiz1` FOREIGN KEY (`fk_quiz`) REFERENCES `quizes` (`pk_quiz`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gabaritos`
--

LOCK TABLES `gabaritos` WRITE;
/*!40000 ALTER TABLE `gabaritos` DISABLE KEYS */;
INSERT INTO `gabaritos` VALUES (157,103,4,13),(158,103,5,13),(159,104,4,NULL),(160,104,5,NULL),(161,105,4,NULL),(162,105,5,19),(163,106,4,13),(164,106,5,19),(165,107,4,13),(166,107,5,19),(167,108,4,NULL),(168,108,5,19),(169,109,4,13),(170,109,5,19),(171,110,4,13),(172,110,5,19),(173,111,4,13),(174,111,5,19),(175,112,4,13),(176,112,5,19),(177,113,4,13),(178,113,5,19),(179,114,4,13),(180,114,5,17),(181,115,4,13),(182,115,5,19),(183,116,4,NULL),(184,116,5,NULL),(185,117,4,NULL),(186,117,5,NULL),(187,118,4,13),(188,118,5,19),(189,118,4,13),(190,118,5,19),(191,118,4,13),(192,118,5,19),(193,118,4,13),(194,118,5,19),(195,118,4,13),(196,118,5,19),(197,119,84,388),(198,119,84,388),(199,119,84,388),(200,119,84,388),(201,119,84,388),(202,119,85,394),(203,119,85,394),(204,119,85,394),(205,119,85,394),(206,119,85,394),(207,119,86,NULL),(208,119,86,NULL),(209,119,86,NULL),(210,119,86,NULL),(211,119,86,NULL),(212,119,87,NULL),(213,119,87,NULL),(214,119,87,NULL),(215,119,87,NULL),(216,119,87,NULL),(217,119,88,NULL),(218,119,88,NULL),(219,119,88,NULL),(220,119,88,NULL),(221,119,88,NULL),(222,119,89,NULL),(223,119,89,NULL),(224,119,89,NULL),(225,119,89,NULL),(226,119,89,NULL),(227,119,90,NULL),(228,119,90,NULL),(229,119,90,NULL),(230,119,90,NULL),(231,119,90,NULL),(232,119,91,NULL),(233,119,91,NULL),(234,119,91,NULL),(235,119,91,NULL),(236,119,91,NULL),(237,119,92,NULL),(238,119,92,NULL),(239,119,92,NULL),(240,119,92,NULL),(241,119,92,NULL),(242,119,93,NULL),(243,119,93,NULL),(244,119,93,NULL),(245,119,93,NULL),(246,119,93,NULL),(247,120,84,388),(248,120,84,388),(249,120,84,388),(250,120,84,388),(251,120,84,388),(252,120,85,393),(253,120,85,393),(254,120,85,393),(255,120,85,393),(256,120,85,393),(257,120,86,NULL),(258,120,86,NULL),(259,120,86,NULL),(260,120,86,NULL),(261,120,86,NULL),(262,120,87,NULL),(263,120,87,NULL),(264,120,87,NULL),(265,120,87,NULL),(266,120,87,NULL),(267,120,88,NULL),(268,120,88,NULL),(269,120,88,NULL),(270,120,88,NULL),(271,120,88,NULL),(272,120,89,NULL),(273,120,89,NULL),(274,120,89,NULL),(275,120,89,NULL),(276,120,89,NULL),(277,120,90,NULL),(278,120,90,NULL),(279,120,90,NULL),(280,120,90,NULL),(281,120,90,NULL),(282,120,91,NULL),(283,120,91,NULL),(284,120,91,NULL),(285,120,91,NULL),(286,120,91,NULL),(287,120,92,NULL),(288,120,92,NULL),(289,120,92,NULL),(290,120,92,NULL),(291,120,92,NULL),(292,120,93,NULL),(293,120,93,NULL),(294,120,93,NULL),(295,120,93,NULL),(296,120,93,NULL),(297,121,84,NULL),(298,121,84,NULL),(299,121,84,NULL),(300,121,84,NULL),(301,121,84,NULL),(302,121,85,NULL),(303,121,85,NULL),(304,121,85,NULL),(305,121,85,NULL),(306,121,85,NULL),(307,121,86,NULL),(308,121,86,NULL),(309,121,86,NULL),(310,121,86,NULL),(311,121,86,NULL),(312,121,87,NULL),(313,121,87,NULL),(314,121,87,NULL),(315,121,87,NULL),(316,121,87,NULL),(317,121,88,NULL),(318,121,88,NULL),(319,121,88,NULL),(320,121,88,NULL),(321,121,88,NULL),(322,121,89,NULL),(323,121,89,NULL),(324,121,89,NULL),(325,121,89,NULL),(326,121,89,NULL),(327,121,90,NULL),(328,121,90,NULL),(329,121,90,NULL),(330,121,90,NULL),(331,121,90,NULL),(332,121,91,NULL),(333,121,91,NULL),(334,121,91,NULL),(335,121,91,NULL),(336,121,91,NULL),(337,121,92,NULL),(338,121,92,NULL),(339,121,92,NULL),(340,121,92,NULL),(341,121,92,NULL),(342,121,93,NULL),(343,121,93,NULL),(344,121,93,NULL),(345,121,93,NULL),(346,121,93,NULL),(347,123,84,NULL),(348,123,84,NULL),(349,123,84,NULL),(350,123,84,NULL),(351,123,84,NULL),(352,123,85,NULL),(353,123,85,NULL),(354,123,85,NULL),(355,123,85,NULL),(356,123,85,NULL),(357,123,86,NULL),(358,123,86,NULL),(359,123,86,NULL),(360,123,86,NULL),(361,123,86,NULL),(362,123,87,NULL),(363,123,87,NULL),(364,123,87,NULL),(365,123,87,NULL),(366,123,87,NULL),(367,123,88,NULL),(368,123,88,NULL),(369,123,88,NULL),(370,123,88,NULL),(371,123,88,NULL),(372,123,89,NULL),(373,123,89,NULL),(374,123,89,NULL),(375,123,89,NULL),(376,123,89,NULL),(377,123,90,NULL),(378,123,90,NULL),(379,123,90,NULL),(380,123,90,NULL),(381,123,90,NULL),(382,123,91,NULL),(383,123,91,NULL),(384,123,91,NULL),(385,123,91,NULL),(386,123,91,NULL),(387,123,92,NULL),(388,123,92,NULL),(389,123,92,NULL),(390,123,92,NULL),(391,123,92,NULL),(392,123,93,NULL),(393,123,93,NULL),(394,123,93,NULL),(395,123,93,NULL),(396,123,93,NULL),(397,124,84,388),(398,124,85,394),(399,124,86,398),(400,124,87,403),(401,124,88,408),(402,124,89,413),(403,124,90,418),(404,124,91,423),(405,124,92,428),(406,124,93,433),(407,125,4,13),(408,125,5,16),(409,126,84,388),(410,126,85,394),(411,126,86,398),(412,126,87,403),(413,126,88,408),(414,126,89,413),(415,126,90,418),(416,126,91,423),(417,126,92,428),(418,126,93,433),(419,129,84,NULL),(420,129,85,394),(421,129,86,NULL),(422,129,87,NULL),(423,129,88,NULL),(424,129,89,NULL),(425,129,90,NULL),(426,129,91,NULL),(427,129,92,NULL),(428,129,93,NULL),(429,130,84,NULL),(430,130,85,NULL),(431,130,86,NULL),(432,130,87,NULL),(433,130,88,NULL),(434,130,89,NULL),(435,130,90,NULL),(436,130,91,NULL),(437,130,92,NULL),(438,130,93,NULL),(440,131,84,NULL),(441,131,85,NULL),(442,131,86,NULL),(443,131,87,NULL),(444,131,88,NULL),(445,131,89,NULL),(446,131,90,NULL),(447,131,91,NULL),(448,131,92,NULL),(449,131,93,NULL),(451,132,84,NULL),(452,132,85,NULL),(453,132,86,NULL),(454,132,87,NULL),(455,132,88,NULL),(456,132,89,NULL),(457,132,90,NULL),(458,132,91,NULL),(459,132,92,NULL),(460,132,93,NULL),(462,133,84,NULL),(463,133,85,NULL),(464,133,86,NULL),(465,133,87,NULL),(466,133,88,NULL),(467,133,89,NULL),(468,133,90,NULL),(469,133,91,NULL),(470,133,92,NULL),(471,133,93,NULL),(473,134,84,388),(474,134,85,394),(475,134,86,398),(476,134,87,403),(477,134,88,408),(478,134,89,413),(479,134,90,418),(480,134,91,423),(481,134,92,428),(482,134,93,433),(484,135,4,13),(485,135,5,19),(486,136,4,13),(487,136,5,19),(488,137,84,388),(489,137,85,394),(490,137,86,398),(491,137,87,403),(492,137,88,408),(493,137,89,413),(494,137,90,418),(495,137,91,423),(496,137,92,428),(497,137,93,433),(499,138,4,13),(500,138,5,19);
/*!40000 ALTER TABLE `gabaritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagensconteudos`
--

DROP TABLE IF EXISTS `imagensconteudos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagensconteudos` (
  `pk_imagemconteudo` int(11) NOT NULL,
  `nomeimagem` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fk_conteudo` int(11) NOT NULL,
  PRIMARY KEY (`pk_imagemconteudo`),
  KEY `fk_imagensconteudos_conteudos_idx` (`fk_conteudo`),
  CONSTRAINT `fk_imagensconteudos_conteudos1` FOREIGN KEY (`fk_conteudo`) REFERENCES `conteudos` (`pk_conteudo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagensconteudos`
--

LOCK TABLES `imagensconteudos` WRITE;
/*!40000 ALTER TABLE `imagensconteudos` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagensconteudos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locaisdeorigem`
--

DROP TABLE IF EXISTS `locaisdeorigem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locaisdeorigem` (
  `idlocaldeorigem` int(11) NOT NULL AUTO_INCREMENT,
  `nomelocal` varchar(100) NOT NULL,
  PRIMARY KEY (`idlocaldeorigem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locaisdeorigem`
--

LOCK TABLES `locaisdeorigem` WRITE;
/*!40000 ALTER TABLE `locaisdeorigem` DISABLE KEYS */;
/*!40000 ALTER TABLE `locaisdeorigem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perguntas`
--

DROP TABLE IF EXISTS `perguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perguntas` (
  `pk_pergunta` int(11) NOT NULL AUTO_INCREMENT,
  `enunciado` text NOT NULL,
  `temimagem` char(1) NOT NULL DEFAULT '0',
  `fk_conteudo` int(11) NOT NULL,
  `endereco_resumo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk_pergunta`),
  KEY `fk_conteudo_pergunta_idx` (`fk_conteudo`),
  CONSTRAINT `fk_conteudo_pergunta` FOREIGN KEY (`fk_conteudo`) REFERENCES `conteudos` (`pk_conteudo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perguntas`
--

LOCK TABLES `perguntas` WRITE;
/*!40000 ALTER TABLE `perguntas` DISABLE KEYS */;
INSERT INTO `perguntas` VALUES (4,'Qual das alternativas contém somente multiplos de 6','0',2,NULL),(5,'Qual das alternativas contém somente multiplos de 16','0',2,NULL),(84,'Qual é o traço visual mais característico do personagem Menino Maluquinho?','0',7,NULL),(85,'Segundo o texto da página, o Menino Maluquinho convidou seus amigos para uma aventura de:','0',7,NULL),(86,'Na página apresentada, o Menino Maluquinho chega em qual lugar?','0',7,NULL),(87,'Quem é chamado pelo Menino Maluquinho quando ele chega?','0',7,NULL),(88,'Qual elemento visual mostra que o Menino Maluquinho está falando?','0',7,NULL),(89,'Que tipo de balão aparece sobre a mãe do Menino Maluquinho?','0',7,NULL),(90,'As gotas desenhadas ao lado do rosto da mãe indicam:','0',7,NULL),(91,'Os traços desenhados ao redor do Menino Maluquinho no segundo quadrinho representam:','0',7,NULL),(92,'O balão acima da mãe mostra que ela está:','0',7,NULL),(93,'Pelos quadrinhos, é possível concluir que o Menino Maluquinho é uma criança:','0',7,NULL);
/*!40000 ALTER TABLE `perguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizes`
--

DROP TABLE IF EXISTS `quizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quizes` (
  `pk_quiz` int(11) NOT NULL AUTO_INCREMENT,
  `fk_acessousuario` int(11) NOT NULL,
  `iniciado` datetime NOT NULL DEFAULT current_timestamp(),
  `finalizado` datetime NOT NULL,
  PRIMARY KEY (`pk_quiz`),
  KEY `fk_quiz_acessousuario1_idx` (`fk_acessousuario`),
  CONSTRAINT `fk_quiz_acessousuario1` FOREIGN KEY (`fk_acessousuario`) REFERENCES `acessousuario` (`idacessousuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizes`
--

LOCK TABLES `quizes` WRITE;
/*!40000 ALTER TABLE `quizes` DISABLE KEYS */;
INSERT INTO `quizes` VALUES (1,5,'2026-07-14 09:10:20','0000-00-00 00:00:00'),(2,6,'2026-07-14 09:12:20','0000-00-00 00:00:00'),(3,7,'2026-07-14 09:12:22','0000-00-00 00:00:00'),(4,8,'2026-07-14 09:18:54','0000-00-00 00:00:00'),(5,9,'2026-07-14 09:29:17','0000-00-00 00:00:00'),(6,10,'2026-07-14 09:32:16','0000-00-00 00:00:00'),(7,11,'2026-07-14 09:35:34','0000-00-00 00:00:00'),(8,12,'2026-07-14 09:36:31','0000-00-00 00:00:00'),(9,13,'2026-07-14 09:38:31','0000-00-00 00:00:00'),(10,14,'2026-07-14 09:39:21','2026-07-28 10:08:20'),(11,15,'2026-07-14 09:39:23','0000-00-00 00:00:00'),(12,18,'2026-07-14 09:42:45','0000-00-00 00:00:00'),(13,19,'2026-07-14 09:43:02','0000-00-00 00:00:00'),(14,20,'2026-07-14 09:46:01','0000-00-00 00:00:00'),(15,21,'2026-07-14 09:46:49','0000-00-00 00:00:00'),(16,22,'2026-07-14 09:50:22','0000-00-00 00:00:00'),(17,23,'2026-07-14 09:51:39','0000-00-00 00:00:00'),(18,24,'2026-07-14 09:52:33','0000-00-00 00:00:00'),(19,25,'2026-07-14 09:53:04','0000-00-00 00:00:00'),(20,26,'2026-07-14 09:53:54','0000-00-00 00:00:00'),(21,27,'2026-07-14 09:54:46','0000-00-00 00:00:00'),(22,28,'2026-07-14 09:55:02','0000-00-00 00:00:00'),(23,29,'2026-07-14 09:55:57','0000-00-00 00:00:00'),(24,30,'2026-07-14 09:56:12','0000-00-00 00:00:00'),(25,31,'2026-07-14 09:58:38','0000-00-00 00:00:00'),(26,32,'2026-07-14 09:59:07','0000-00-00 00:00:00'),(27,33,'2026-07-14 09:59:28','0000-00-00 00:00:00'),(28,34,'2026-07-14 10:04:21','0000-00-00 00:00:00'),(29,35,'2026-07-14 10:05:42','0000-00-00 00:00:00'),(30,36,'2026-07-14 10:06:23','0000-00-00 00:00:00'),(31,37,'2026-07-14 10:06:26','0000-00-00 00:00:00'),(32,38,'2026-07-14 10:06:52','0000-00-00 00:00:00'),(33,39,'2026-07-14 10:07:25','0000-00-00 00:00:00'),(34,40,'2026-07-14 10:08:12','0000-00-00 00:00:00'),(35,41,'2026-07-14 10:08:29','0000-00-00 00:00:00'),(36,42,'2026-07-14 10:08:32','0000-00-00 00:00:00'),(37,43,'2026-07-14 10:09:54','0000-00-00 00:00:00'),(38,44,'2026-07-14 10:12:08','0000-00-00 00:00:00'),(39,45,'2026-07-14 10:13:22','0000-00-00 00:00:00'),(40,46,'2026-07-14 10:14:11','0000-00-00 00:00:00'),(41,47,'2026-07-14 10:14:31','0000-00-00 00:00:00'),(42,48,'2026-07-14 10:14:33','0000-00-00 00:00:00'),(43,49,'2026-07-14 10:14:41','0000-00-00 00:00:00'),(44,50,'2026-07-14 10:14:48','0000-00-00 00:00:00'),(45,51,'2026-07-14 10:17:32','0000-00-00 00:00:00'),(46,52,'2026-07-14 10:18:40','0000-00-00 00:00:00'),(47,53,'2026-07-14 10:19:39','0000-00-00 00:00:00'),(48,54,'2026-07-14 10:19:52','0000-00-00 00:00:00'),(49,55,'2026-07-14 10:20:14','0000-00-00 00:00:00'),(50,56,'2026-07-14 10:20:16','0000-00-00 00:00:00'),(51,57,'2026-07-14 10:21:12','0000-00-00 00:00:00'),(52,58,'2026-07-14 10:25:10','0000-00-00 00:00:00'),(53,59,'2026-07-14 10:25:30','0000-00-00 00:00:00'),(54,60,'2026-07-14 10:26:05','0000-00-00 00:00:00'),(55,61,'2026-07-14 10:26:42','0000-00-00 00:00:00'),(56,62,'2026-07-14 10:27:20','0000-00-00 00:00:00'),(57,63,'2026-07-14 10:27:46','0000-00-00 00:00:00'),(58,64,'2026-07-14 10:28:22','0000-00-00 00:00:00'),(59,65,'2026-07-14 10:29:02','0000-00-00 00:00:00'),(60,66,'2026-07-14 10:29:38','0000-00-00 00:00:00'),(61,67,'2026-07-14 10:33:30','0000-00-00 00:00:00'),(62,68,'2026-07-14 10:34:35','0000-00-00 00:00:00'),(63,69,'2026-07-14 10:34:49','0000-00-00 00:00:00'),(64,70,'2026-07-14 10:35:11','0000-00-00 00:00:00'),(65,71,'2026-07-14 10:35:43','0000-00-00 00:00:00'),(66,72,'2026-07-14 10:40:46','0000-00-00 00:00:00'),(67,73,'2026-07-14 10:41:16','0000-00-00 00:00:00'),(68,74,'2026-07-14 10:41:18','0000-00-00 00:00:00'),(69,75,'2026-07-14 10:41:30','0000-00-00 00:00:00'),(70,76,'2026-07-14 10:42:39','0000-00-00 00:00:00'),(71,77,'2026-07-14 10:44:17','0000-00-00 00:00:00'),(72,78,'2026-07-14 10:45:15','0000-00-00 00:00:00'),(73,79,'2026-07-14 10:45:56','0000-00-00 00:00:00'),(74,80,'2026-07-14 10:47:15','0000-00-00 00:00:00'),(75,81,'2026-07-14 10:48:27','0000-00-00 00:00:00'),(76,82,'2026-07-14 10:49:48','0000-00-00 00:00:00'),(77,83,'2026-07-14 10:53:53','0000-00-00 00:00:00'),(78,84,'2026-07-14 10:54:30','0000-00-00 00:00:00'),(79,85,'2026-07-14 10:54:59','0000-00-00 00:00:00'),(80,86,'2026-07-14 10:56:32','0000-00-00 00:00:00'),(81,87,'2026-07-14 16:40:24','0000-00-00 00:00:00'),(82,88,'2026-07-14 16:42:44','0000-00-00 00:00:00'),(83,89,'2026-07-14 16:42:47','0000-00-00 00:00:00'),(84,90,'2026-07-14 16:43:00','0000-00-00 00:00:00'),(85,91,'2026-07-14 16:48:40','0000-00-00 00:00:00'),(86,92,'2026-07-14 16:49:11','0000-00-00 00:00:00'),(87,93,'2026-07-14 16:50:01','0000-00-00 00:00:00'),(88,94,'2026-07-14 16:51:11','0000-00-00 00:00:00'),(89,95,'2026-07-14 16:52:53','0000-00-00 00:00:00'),(90,96,'2026-07-14 16:55:18','0000-00-00 00:00:00'),(91,97,'2026-07-14 16:55:49','0000-00-00 00:00:00'),(92,98,'2026-07-14 17:03:48','0000-00-00 00:00:00'),(93,99,'2026-07-15 15:05:55','0000-00-00 00:00:00'),(94,100,'2026-07-15 22:57:05','0000-00-00 00:00:00'),(95,101,'2026-07-16 09:13:46','0000-00-00 00:00:00'),(96,102,'2026-07-16 09:29:55','0000-00-00 00:00:00'),(97,103,'2026-07-16 09:38:34','0000-00-00 00:00:00'),(98,104,'2026-07-16 09:45:07','0000-00-00 00:00:00'),(99,105,'2026-07-16 09:45:17','0000-00-00 00:00:00'),(100,106,'2026-07-16 09:45:53','0000-00-00 00:00:00'),(101,107,'2026-07-16 09:46:11','0000-00-00 00:00:00'),(102,108,'2026-07-16 09:46:17','0000-00-00 00:00:00'),(103,109,'2026-07-16 10:20:44','0000-00-00 00:00:00'),(104,110,'2026-07-16 10:23:25','0000-00-00 00:00:00'),(105,111,'2026-07-16 10:40:00','0000-00-00 00:00:00'),(106,112,'2026-07-16 10:47:09','0000-00-00 00:00:00'),(107,113,'2026-07-19 12:14:36','0000-00-00 00:00:00'),(108,114,'2026-07-19 13:54:07','0000-00-00 00:00:00'),(109,115,'2026-07-25 10:09:22','0000-00-00 00:00:00'),(110,116,'2026-07-25 23:26:19','0000-00-00 00:00:00'),(111,117,'2026-07-26 00:04:56','0000-00-00 00:00:00'),(112,118,'2026-07-26 14:47:47','0000-00-00 00:00:00'),(113,119,'2026-07-27 10:04:56','0000-00-00 00:00:00'),(114,120,'2026-07-28 10:03:47','0000-00-00 00:00:00'),(115,121,'2026-07-28 10:36:08','0000-00-00 00:00:00'),(116,122,'2026-07-28 10:36:35','0000-00-00 00:00:00'),(117,123,'2026-07-29 10:21:00','0000-00-00 00:00:00'),(118,124,'2026-08-09 20:27:08','0000-00-00 00:00:00'),(119,125,'2026-08-09 20:43:21','0000-00-00 00:00:00'),(120,126,'2026-08-09 21:05:49','0000-00-00 00:00:00'),(121,127,'2026-08-09 21:29:02','0000-00-00 00:00:00'),(122,129,'2026-08-09 21:56:37','0000-00-00 00:00:00'),(123,130,'2026-08-09 22:00:27','0000-00-00 00:00:00'),(124,131,'2026-08-09 22:23:49','0000-00-00 00:00:00'),(125,132,'2026-08-11 15:12:12','0000-00-00 00:00:00'),(126,133,'2026-08-11 15:13:50','0000-00-00 00:00:00'),(127,134,'2026-08-11 15:14:15','0000-00-00 00:00:00'),(128,135,'2026-08-13 22:02:22','0000-00-00 00:00:00'),(129,136,'2026-08-13 22:14:52','0000-00-00 00:00:00'),(130,137,'2026-08-14 09:42:09','0000-00-00 00:00:00'),(131,138,'2026-08-14 09:44:34','0000-00-00 00:00:00'),(132,139,'2026-08-14 09:53:06','0000-00-00 00:00:00'),(133,140,'2026-08-17 07:51:07','0000-00-00 00:00:00'),(134,141,'2026-08-17 08:25:30','0000-00-00 00:00:00'),(135,142,'2026-08-17 08:50:38','0000-00-00 00:00:00'),(136,143,'2026-08-17 08:51:55','0000-00-00 00:00:00'),(137,144,'2026-08-17 09:01:50','0000-00-00 00:00:00'),(138,145,'2026-08-17 09:04:10','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `quizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respostas`
--

DROP TABLE IF EXISTS `respostas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respostas` (
  `pk_resposta` int(11) NOT NULL AUTO_INCREMENT,
  `fk_pergunta` int(11) NOT NULL,
  `status_resposta` char(1) NOT NULL COMMENT 'I = incorreta, C = correta',
  `temimagem` char(1) NOT NULL DEFAULT '0',
  `enunciado_resposta` varchar(1020) DEFAULT NULL,
  PRIMARY KEY (`pk_resposta`),
  KEY `fk_resp_perg_idx` (`fk_pergunta`),
  CONSTRAINT `fk_resp_perg` FOREIGN KEY (`fk_pergunta`) REFERENCES `perguntas` (`pk_pergunta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respostas`
--

LOCK TABLES `respostas` WRITE;
/*!40000 ALTER TABLE `respostas` DISABLE KEYS */;
INSERT INTO `respostas` VALUES (11,4,'I','0','12, 25, 36, 48'),(12,4,'I','0','12, 18, 43, 48'),(13,4,'C','0','36, 48, 96, 24'),(14,4,'I','0','13, 25, 36, 48'),(15,4,'I','0','31, 23, 52, 48'),(16,5,'I','0',' 32, 64, 128, 255'),(17,5,'I','0',' 32, 64, 128, 255'),(18,5,'I','0',' 32, 128, 256, 510'),(19,5,'c','0',' 32, 64, 128, 256'),(20,5,'I','0',' 32, 65, 130, 260'),(388,84,'C','0','A panela na cabeça.'),(389,84,'I','0','Um boné azul.'),(390,84,'I','0','Um chapéu de palha.'),(391,84,'I','0','Um capacete de bicicleta.'),(392,84,'I','0','Uma boina.'),(393,85,'I','0','Pescar no rio.'),(394,85,'C','0','Combate à dengue.'),(395,85,'I','0','Acampar na floresta.'),(396,85,'I','0','Caçar tesouros.'),(397,85,'I','0','Viajar para a praia.'),(398,86,'C','0','Em casa.'),(399,86,'I','0','Na escola.'),(400,86,'I','0','No parque.'),(401,86,'I','0','Na biblioteca.'),(402,86,'I','0','No mercado.'),(403,87,'C','0','Sua mãe.'),(404,87,'I','0','Seu pai.'),(405,87,'I','0','Seu avô.'),(406,87,'I','0','Seu irmão.'),(407,87,'I','0','Seu amigo.'),(408,88,'C','0','O balão de fala.'),(409,88,'I','0','As gotas de suor.'),(410,88,'I','0','Os traços de movimento.'),(411,88,'I','0','A cor da roupa.'),(412,88,'I','0','A porta aberta.'),(413,89,'C','0','Balão de pensamento.'),(414,89,'I','0','Balão de grito.'),(415,89,'I','0','Balão de sussurro.'),(416,89,'I','0','Legenda.'),(417,89,'I','0','Caixa de narração.'),(418,90,'C','0','Preocupação ou nervosismo.'),(419,90,'I','0','Alegria.'),(420,90,'I','0','Sono.'),(421,90,'I','0','Frio.'),(422,90,'I','0','Fome.'),(423,91,'C','0','Movimento.'),(424,91,'I','0','Chuva.'),(425,91,'I','0','Vento.'),(426,91,'I','0','Calor.'),(427,91,'I','0','Som.'),(428,92,'C','0','Pensando.'),(429,92,'I','0','Cantando.'),(430,92,'I','0','Dormindo.'),(431,92,'I','0','Escrevendo.'),(432,92,'I','0','Lendo.'),(433,93,'C','0','Muito agitada e cheia de energia.'),(434,93,'I','0','Muito tímida.'),(435,93,'I','0','Sempre triste.'),(436,93,'I','0','Muito silenciosa.'),(437,93,'I','0','Desinteressada pelas brincadeiras.');
/*!40000 ALTER TABLE `respostas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `senhasusuarios`
--

DROP TABLE IF EXISTS `senhasusuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `senhasusuarios` (
  `pk_senhausuario` int(11) NOT NULL AUTO_INCREMENT,
  `senhacripto` varchar(255) NOT NULL,
  `fk_usuario` int(11) NOT NULL,
  PRIMARY KEY (`pk_senhausuario`),
  KEY `fk_senhasusuarios_usuarios1_idx` (`fk_usuario`),
  CONSTRAINT `fk_senhasusuarios_usuarios` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`pk_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `senhasusuarios`
--

LOCK TABLES `senhasusuarios` WRITE;
/*!40000 ALTER TABLE `senhasusuarios` DISABLE KEYS */;
INSERT INTO `senhasusuarios` VALUES (1,'8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414',9),(2,'c5aa6ccced8500f4e6fd5656aef8b4b9163cdb53b892321128304ef886b0c8ac',8);
/*!40000 ALTER TABLE `senhasusuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `pk_slug` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `controller` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`pk_slug`),
  UNIQUE KEY `slug_UNIQUE` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'','primeiroAcesso.php'),(2,'quarta-serie/matematica/geometria/exercicios','controller_exercicios.php'),(3,'exercicios-corrige','controller_form_exercicios.php'),(4,'login','LoginController.php'),(5,'cadastro','CadastroController.php'),(6,'quiz','QuizController.php'),(7,'erro_login','Error500Controller.php'),(8,'esqueci-senha','EsqueciSenhaController.php'),(9,'cadastro/usuario','CadastroUsuarioController.php'),(12,'quiz/resposta','RespostasController.php'),(13,'statistica','EstatisticaController.php'),(15,'finalizaquiz','FinalizarQuizController.php'),(16,'selecionarmateria','SelecionarMateriaController.php');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposplanos`
--

DROP TABLE IF EXISTS `tiposplanos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiposplanos` (
  `pk_tipoplano` int(11) NOT NULL AUTO_INCREMENT,
  `plano` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '0-isento, 1-pago',
  `statusplano` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `fk_usuario` int(11) NOT NULL,
  PRIMARY KEY (`pk_tipoplano`),
  KEY `fk_tiposplanos_usuarios1_idx` (`fk_usuario`),
  CONSTRAINT `fk_tiposplanos_usuarios` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`pk_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposplanos`
--

LOCK TABLES `tiposplanos` WRITE;
/*!40000 ALTER TABLE `tiposplanos` DISABLE KEYS */;
INSERT INTO `tiposplanos` VALUES (2,'O','1',8);
/*!40000 ALTER TABLE `tiposplanos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `pk_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `numerowhatsapp` varchar(15) DEFAULT NULL,
  `identificacao` varchar(255) NOT NULL,
  `emailverificado` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `datacadastro` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`pk_usuario`),
  UNIQUE KEY `unq_emailusuario` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (8,'rafaelsouzac@gmail.com',NULL,'','0','2026-06-08 11:15:01'),(9,'rafael@gmail.com',NULL,'','0','2026-06-13 20:43:04');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'jogomanu'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_parametros_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_parametros_procedure`(IN `p_nome_procedure` VARCHAR(255))
BEGIN
	SELECT 
		ORDINAL_POSITION AS posicao,
		PARAMETER_NAME AS parametro,
		DATA_TYPE AS tipo_dado,
		CHARACTER_MAXIMUM_LENGTH AS tamanho
	FROM 
		information_schema.parameters
	WHERE 
		SPECIFIC_NAME = p_nome_procedure
		AND ROUTINE_TYPE = 'PROCEDURE'
	ORDER BY 
		ORDINAL_POSITION;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_apagar_pergunta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_apagar_pergunta`(
	IN p_pk_pergunta INT
)
BEGIN
	delete from respostas where fk_pergunta = p_pk_pergunta;
    delete from gabaritos where fk_pergunta = p_pk_pergunta;
	delete from ativos where fk_pergunta = p_pk_pergunta;
	delete from perguntas where pk_pergunta = p_pk_pergunta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_atualizar_conteudo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_atualizar_conteudo`(
	IN p_nome_campo varchar(255),
    IN p_valor_campo text,
    IN p_pk INT
)
BEGIN
	    SET @sql = CONCAT(
        'UPDATE conteudos ',
        'SET `', p_nome_campo, '` = ? ',
        'WHERE `pk_conteudo` = ?'
    );

    SET @valor = p_valor_campo;
    SET @id = p_pk;

    PREPARE stmt FROM @sql;

    EXECUTE stmt USING @valor, @id;

    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_atualizar_gabarito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_atualizar_gabarito`(
	IN p_fk_quiz INT,
    IN p_fk_pergunta INT,
    IN p_fk_resposta INT
)
BEGIN
	UPDATE `jogomanu`.`gabaritos`
	SET
	`fk_resposta` = p_fk_resposta
	WHERE `fk_quiz` = p_fk_quiz AND `fk_pergunta` = p_fk_pergunta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_atualizar_quizes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_atualizar_quizes`(
	IN p_pk_quiz INT
)
BEGIN
UPDATE `jogomanu`.`quizes`
SET
`finalizado` = current_timestamp()
WHERE `pk_quiz` = p_pk_quiz;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_autentica_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_autentica_usuario`(IN `p_usuario` VARCHAR(255), 
IN `p_senha` VARCHAR(255))
BEGIN
    
SELECT pk_usuario FROM 
	usuarios AS u
	INNER JOIN 
		senhasusuarios AS s
    ON 
		u.pk_usuario = s.fk_usuario
    WHERE 
		u.email = p_usuario
    AND 
		s.senhacripto = sha2(p_senha, 256);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_busca_slug` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_busca_slug`(`p_slug` VARCHAR(510))
BEGIN
	select controller from slugs where slug = p_slug;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_cadastar_gabarito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_cadastar_gabarito`(
	IN p_fkquiz INT,
    IN p_fkpergunta INT
)
BEGIN
	INSERT INTO `jogomanu`.`gabaritos`
	(
	`fk_quiz`,
	`fk_pergunta`)
	VALUES
	(
	p_fkquiz,
	p_fkpergunta
	);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_cadastar_imagem_conteudo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_cadastar_imagem_conteudo`(
	IN p_nomeimagem varchar(255),
    IN p_fk_conteudo INT
)
BEGIN
    DECLARE endereco_nome_imagem VARCHAR(255);
	DECLARE endereco_imagem VARCHAR(255);
    
    SET endereco_imagem = '/view/assets/imgs/'; -- varchar(255)
    
	IF p_nomeimagem IS NOT NULL AND LENGTH(p_nomeimagem) > 0 THEN
		
        -- complemento do campo endereco_nome_imagem
		SET endereco_nome_imagem = CONCAT(endereco_imagem, p_nomeimagem);
		
        INSERT INTO `jogomanu`.`imagensconteudos`
			(
			`nomeimagem`,
			`fk_conteudo`)
		VALUES
			(
			endereco_nome_imagem,
			p_fk_conteudo);

	END IF;
	    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_cadastrar_acessousuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_cadastrar_acessousuario`(
	IN p_fk_usuario INT,
    IN p_idsessao VARCHAR(510)
)
BEGIN
	DECLARE p_last_id INT;
    
    INSERT INTO `jogomanu`.`acessousuario`
		( `fk_usuario`, `idsessao`)
	VALUES
		(p_fk_usuario, p_idsessao);
	
    SET p_last_id = last_insert_id();
    
    SELECT p_last_id as 'id_acesso';
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_cadastrar_quiz` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_cadastrar_quiz`(
	IN pk_acesso_usuario INT
)
BEGIN
	INSERT INTO `jogomanu`.`quizes`
	(
		`fk_acessousuario`
	)
	VALUES
	(
		pk_acesso_usuario
	);
    
    Select last_insert_id() as 'pk_quiz';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_cadastrar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_cadastrar_usuario`(IN `p_email` VARCHAR(255), IN `p_senha_hash` VARCHAR(255))
BEGIN
	DECLARE var_idusuario INT DEFAULT 0;
    -- 1. Insere o usuário
    INSERT INTO `jogomanu`.`usuarios` (
        `email`,
        `datacadastro`
    ) VALUES (
        p_email,
        CURRENT_TIMESTAMP()
    );

    SET var_idusuario = LAST_INSERT_ID();

    -- 3. Insere senha (hash gerado pelo PHP com Argon2ID)
    INSERT INTO `jogomanu`.`senhasusuarios` (
        `senhacripto`,
        `fk_idusuario`
    ) VALUES (
        sha2(p_senha_hash, 256),
        var_idusuario
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_cadastro_conteudos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_cadastro_conteudos`(
    IN p_titulo_conteudo varchar(255),
    IN p_texto_conteudo text,
    IN p_temimagem char(1),
    IN p_fk_serie INT,
   OUT pk_gerada INT
)
BEGIN
	INSERT INTO `jogomanu`.`conteudos`
	(
		`tituloconteudo`,
		`textoconteudo`,
        `temimagem`,
		`fk_disciplina`
	)
	VALUES
	(
		p_titulo_conteudo,
		p_texto_conteudo,
        p_temimagem,
		p_fk_serie
    );
    
    SET @pk_gerada = last_insert_id();
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_cadastro_disciplina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_cadastro_disciplina`(
	IN p_nome_disciplina varchar(100),
    IN p_serie char(2), -- 01...09 || 21..23
    IN p_grau char(1),  -- F || M
   OUT p_idgerado int
)
BEGIN
	INSERT INTO `jogomanu`.`disciplinas`
	(
	`nomedisciplina`,
	`serie`,
	`grau`)
	VALUES
	(
	p_nome_disciplina,
	p_serie,
	p_grau);
    
    SELECT last_insert_id() INTO p_idgerado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_finalizar_acesso_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_finalizar_acesso_usuario`(
	IN p_fk_usuario INT
)
BEGIN
	UPDATE `jogomanu`.`acessousuario`
	SET
	`fimdasesao` = current_timestamp()
	WHERE `idacessousuario` = p_fk_usuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_insere_slug_controller` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_insere_slug_controller`(`p_slug` VARCHAR(255), `p_controller` VARCHAR(255))
BEGIN
	INSERT INTO 
		slugs(slug, controller) 
	VALUES
		(p_slug, p_controller);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_inserir_inicio_quiz` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_inserir_inicio_quiz`(
	IN p_acesso_usuario INT,
   OUT p_saida INT
)
BEGIN
	INSERT INTO `jogomanu`.`quizes`
	(
		`fk_acessousuario`
	)
	VALUES
	(
		p_acesso_usuario
	);
    
    SET p_saida = last_insert_id();
    
    Select p_saida as saida;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_inserir_pergunta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_inserir_pergunta`(
	IN p_enunciado varchar(510),
    IN p_temimagem char(1),
    IN p_fk_conteudo INT,
    IN p_endereco_resumo varchar(255),
   OUT fk_pergunta INT
)
BEGIN
	INSERT INTO `jogomanu`.`perguntas`
	(
	`enunciado`,
	`temimagem`,
	`fk_conteudo`,
    `endereco_resumo`)
	VALUES
	(
	p_enunciado,
	p_temimagem,
	p_fk_conteudo,
    p_endereco_resumo);
    
    SET fk_pergunta = last_insert_id();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_inserir_resposta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_inserir_resposta`(
	IN fk_pergunta INT,
    IN status_resposta CHAR(1) charset utf8mb4 collate utf8mb4_general_ci ,
    IN temimagem CHAR(1) charset utf8mb4 collate utf8mb4_general_ci,
    IN enunciado_resposta varchar(1020) charset utf8mb4 collate utf8mb4_general_ci 
)
BEGIN
	INSERT INTO `jogomanu`.`respostas`
	(
	`fk_pergunta`,
	`status_resposta`,
	`temimagem`,
	`enunciado_resposta`)
	VALUES
	(
	fk_pergunta,
	status_resposta,
	temimagem,
	enunciado_resposta);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_selecionar_cabecalho_estatistica` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_selecionar_cabecalho_estatistica`(
	IN p_quiz INT
)
BEGIN
SELECT 
    g.`fk_quiz`,
    
    -- 1. Número total de questões
    COUNT(g.`fk_pergunta`) AS `numero_de_questoes`,
    
    -- 2. Total de acertos
    SUM(
        CASE 
            WHEN g.`fk_resposta` = r.`pk_resposta` THEN 1 
            ELSE 0 
        END
    ) AS `total_de_acertos`,
	
    -- total de erros
    SUM(
        CASE 
            WHEN g.`fk_resposta` <> r.`pk_resposta` THEN 1 
            ELSE 0 
        END
    ) AS `total_de_erros`,
    
    -- 3. Porcentagem de acertos
    ROUND(
        (
            SUM(CASE WHEN g.`fk_resposta` = r.`pk_resposta` THEN 1 ELSE 0 END) 
            / COUNT(g.`fk_pergunta`)
        ) * 100, 
        2
    ) AS `porcentagem_de_acertos`

FROM gabaritos g 
LEFT JOIN respostas r ON g.fk_pergunta = r.fk_pergunta
WHERE (r.status_resposta = 'C' or r.status_resposta = 'c') AND g.`fk_quiz` =  p_quiz
GROUP BY g.`fk_quiz`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_selecionar_conteudo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_selecionar_conteudo`(
	IN p_disciplina INT
)
BEGIN
	select pk_conteudo, concat(tituloconteudo, ' ',textoconteudo) as tituloconteudo 
    from conteudos where fk_disciplina = p_disciplina;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_selecionar_correcao_quiz` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_selecionar_correcao_quiz`(
	IN p_quiz INT
)
BEGIN
SELECT
	g.fk_quiz,
    p.enunciado,
	CASE WHEN UPPER(r.status_resposta) = "C" AND
    g.fk_pergunta = r.fk_pergunta THEN "Certa"
    ELSE "Errada" END AS "CORRECAO",
    r.enunciado_resposta as 'sua_resposta'
FROM gabaritos g LEFT JOIN
	respostas r ON
	g.fk_resposta = r.pk_resposta
INNER JOIN perguntas p ON
	g.fk_pergunta = p.pk_pergunta
WHERE g.fk_quiz = p_quiz;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_selecionar_perguntas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_selecionar_perguntas`(IN p_pk_conteudo INT)
BEGIN
  select p.pk_pergunta as 'pk_pergunta', p.enunciado as 'enunciado',
  p.endereco_resumo as 'endereco_resumo'
  from perguntas p 
  where fk_conteudo = p_pk_conteudo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_selecionar_respostas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_selecionar_respostas`(
	IN p_pk_pergunta INT
)
BEGIN
	select pk_resposta, status_resposta, enunciado_resposta
    from respostas where fk_pergunta = p_pk_pergunta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_seleciona_disciplina_conteudo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_seleciona_disciplina_conteudo`()
BEGIN
	SELECT d.pk_disciplina, 
	   d.nomedisciplina,
	   c.tituloconteudo,
	   d.grau, d.serie, 
       c.pk_conteudo,
       i.nomeimagem,
       i.pk_imagemconteudo
	FROM disciplinas d 
    INNER JOIN conteudos c
	ON d.pk_disciplina = c.fk_disciplina
	left JOIN imagensconteudos i
	ON c.pk_conteudo = i.fk_conteudo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_seleionar_disciplina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_seleionar_disciplina`()
BEGIN
	select pk_disciplina, nomedisciplina from disciplinas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-18  9:06:22
