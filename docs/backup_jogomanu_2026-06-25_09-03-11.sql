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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acessousuario`
--

LOCK TABLES `acessousuario` WRITE;
/*!40000 ALTER TABLE `acessousuario` DISABLE KEYS */;
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
  PRIMARY KEY (`pk_conteudo`),
  KEY `fk_conteudos_disciplinas_idx` (`fk_disciplina`),
  CONSTRAINT `fk_conteudos_disciplinas1` FOREIGN KEY (`fk_disciplina`) REFERENCES `disciplinas` (`pk_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conteudos`
--

LOCK TABLES `conteudos` WRITE;
/*!40000 ALTER TABLE `conteudos` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplinas`
--

LOCK TABLES `disciplinas` WRITE;
/*!40000 ALTER TABLE `disciplinas` DISABLE KEYS */;
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
  `fk_respota` int(11) NOT NULL,
  PRIMARY KEY (`pk_gabarito`),
  KEY `fk_gabaritos_quiz1_idx` (`fk_quiz`),
  KEY `fk_gabaritos_perguntas1_idx` (`fk_pergunta`),
  KEY `fk_gabarito_resposta_idx` (`fk_respota`),
  CONSTRAINT `fk_gabarito_resposta` FOREIGN KEY (`fk_respota`) REFERENCES `respostas` (`pk_resposta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_gabaritos_perguntas1` FOREIGN KEY (`fk_pergunta`) REFERENCES `perguntas` (`pk_pergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_gabaritos_quiz1` FOREIGN KEY (`fk_quiz`) REFERENCES `quizes` (`pk_quiz`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gabaritos`
--

LOCK TABLES `gabaritos` WRITE;
/*!40000 ALTER TABLE `gabaritos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gabaritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagensconteudos`
--

DROP TABLE IF EXISTS `imagensconteudos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagensconteudos` (
  `idimagenconteudo` int(11) NOT NULL AUTO_INCREMENT,
  `nomeimagem` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fk_conteudo` int(11) NOT NULL,
  PRIMARY KEY (`idimagenconteudo`),
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
  `enunciado` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `temimagem` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `fk_disciplina` int(11) NOT NULL,
  PRIMARY KEY (`pk_pergunta`),
  KEY `fk_perguntas_disciplinas1_idx` (`fk_disciplina`),
  CONSTRAINT `fk_perguntas_disciplinas1` FOREIGN KEY (`fk_disciplina`) REFERENCES `disciplinas` (`pk_disciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perguntas`
--

LOCK TABLES `perguntas` WRITE;
/*!40000 ALTER TABLE `perguntas` DISABLE KEYS */;
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
  `iniciado` datetime NOT NULL,
  `finalizado` datetime NOT NULL,
  PRIMARY KEY (`pk_quiz`),
  KEY `fk_quiz_acessousuario1_idx` (`fk_acessousuario`),
  CONSTRAINT `fk_quiz_acessousuario1` FOREIGN KEY (`fk_acessousuario`) REFERENCES `acessousuario` (`idacessousuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizes`
--

LOCK TABLES `quizes` WRITE;
/*!40000 ALTER TABLE `quizes` DISABLE KEYS */;
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
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'I = incorreta, C = correta',
  `temimagem` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `enunciado_resposta` varchar(1020) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`pk_resposta`),
  KEY `fk_resp_perg_idx` (`fk_pergunta`),
  CONSTRAINT `fk_resp_perg` FOREIGN KEY (`fk_pergunta`) REFERENCES `perguntas` (`pk_pergunta`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respostas`
--

LOCK TABLES `respostas` WRITE;
/*!40000 ALTER TABLE `respostas` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'','primeiroAcesso.php'),(2,'quarta-serie/matematica/geometria/exercicios','controller_exercicios.php'),(3,'exercicios-corrige','controller_form_exercicios.php'),(4,'login','LoginController.php'),(5,'cadastro','CadastroController.php'),(6,'quiz','QuizController.php'),(7,'erro_login','Error500Controller.php'),(8,'esqueci-senha','EsqueciSenhaController.php'),(9,'cadastro/usuario','CadastroUsuarioController.php');
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
/*!50003 DROP PROCEDURE IF EXISTS `usp_autentica_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_autentica_usuario`(IN `p_usuario` VARCHAR(255), IN `p_senha` VARCHAR(255))
BEGIN
SELECT EXISTS(SELECT 1 FROM 
	usuarios AS u
	INNER JOIN 
		senhasusuarios AS s
    ON 
		u.pk_usuario = s.fk_usuario
    WHERE 
		u.email = p_usuario
    AND 
		s.senhacripto = sha2(p_senha, 256)
    ) AS valido;
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
/*!50003 DROP PROCEDURE IF EXISTS `usp_cadastra_disciplinas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_cadastra_disciplinas`(
	IN p_nomedisciplina varchar(100),
    IN p_serie char(2),
    IN p_grau char(1)
)
BEGIN
	INSERT INTO `jogomanu`.`disciplinas`
		(
			`nomedisciplina`,
			`serie`,
			`grau`
        )
	VALUES
		(
			p_nomedisciplina,
			p_serie,
			p_grau
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
    IN p_fk_serie INT
)
BEGIN
	INSERT INTO `jogomanu`.`conteudos`
	(
		`tituloconteudo`,
		`textoconteudo`,
		`fk_disciplina`
	)
	VALUES
	(
		p_titulo_conteudo,
		p_texto_conteudo,
		p_fk_serie
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_insere_disciplina1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_insere_disciplina1`(
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-25  9:03:15
