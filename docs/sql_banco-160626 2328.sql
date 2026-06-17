-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema jogomanu
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema jogomanu
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `jogomanu` DEFAULT CHARACTER SET utf8mb4 ;
USE `jogomanu` ;

-- -----------------------------------------------------
-- Table `jogomanu`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jogomanu`.`usuarios` (
  `idusuario` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NOT NULL,
  `numerowhatsapp` VARCHAR(15) NULL DEFAULT NULL,
  `identificacao` VARCHAR(255) NOT NULL,
  `emailverificado` CHAR(1) CHARACTER SET 'utf8' NOT NULL DEFAULT '0',
  `datacadastro` DATETIME NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (`idusuario`),
  UNIQUE INDEX `unq_emailusuario` (`email` ) )
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `jogomanu`.`acessousuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jogomanu`.`acessousuario` (
  `idacessousuario` INT(11) NOT NULL AUTO_INCREMENT,
  `iniciodasessao` DATETIME NULL DEFAULT CURRENT_TIMESTAMP(),
  `fimdasesao` DATETIME NULL DEFAULT NULL,
  `fk_usuario` INT(11) NOT NULL,
  `idsessao` VARCHAR(510) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  PRIMARY KEY (`idacessousuario`),
  INDEX `fk_sessao_user_idx` (`fk_usuario` ) ,
  CONSTRAINT `fk_sessao_user`
    FOREIGN KEY (`fk_usuario`)
    REFERENCES `jogomanu`.`usuarios` (`idusuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jogomanu`.`locaisdeorigem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jogomanu`.`locaisdeorigem` (
  `idlocaldeorigem` INT(11) NOT NULL AUTO_INCREMENT,
  `nomelocal` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idlocaldeorigem`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jogomanu`.`disciplinas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jogomanu`.`disciplinas` (
  `pk_disciplina` INT(11) NOT NULL AUTO_INCREMENT,
  `nomedisciplina` VARCHAR(100) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci' NOT NULL,
  `serie` CHAR(2) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci' NULL DEFAULT NULL,
  `grau` CHAR(1) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci' NULL DEFAULT NULL COMMENT 'F = Ensino Fundamental\\nM = Ensino Médio',
  PRIMARY KEY (`pk_disciplina`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jogomanu`.`perguntas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jogomanu`.`perguntas` (
  `pk_pergunta` INT(11) NOT NULL AUTO_INCREMENT,
  `enunciado` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci' NOT NULL,
  `fk_localdeorigem` INT(11) NOT NULL,
  `temimagem` CHAR(1) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci' NOT NULL DEFAULT 0,
  `fk_disciplina` INT(11) NOT NULL,
  PRIMARY KEY (`pk_pergunta`),
  INDEX `fk_perg_local_idx` (`fk_localdeorigem` ) ,
  INDEX `fk_perguntas_disciplinas1_idx` (`fk_disciplina` ) ,
  CONSTRAINT `fk_perg_local`
    FOREIGN KEY (`fk_localdeorigem`)
    REFERENCES `jogomanu`.`locaisdeorigem` (`idlocaldeorigem`),
  CONSTRAINT `fk_perguntas_disciplinas1`
    FOREIGN KEY (`fk_disciplina`)
    REFERENCES `jogomanu`.`disciplinas` (`pk_disciplina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jogomanu`.`respostas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jogomanu`.`respostas` (
  `pk_resposta` INT(11) NOT NULL AUTO_INCREMENT,
  `fk_pergunta` INT(11) NOT NULL,
  `status` CHAR(1) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci' NOT NULL COMMENT 'I = incorreta, C = correta',
  `temimagem` CHAR(1) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci' NOT NULL DEFAULT '0',
  PRIMARY KEY (`pk_resposta`),
  INDEX `fk_resp_perg_idx` (`fk_pergunta` ) ,
  CONSTRAINT `fk_resp_perg`
    FOREIGN KEY (`fk_pergunta`)
    REFERENCES `jogomanu`.`perguntas` (`pk_pergunta`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jogomanu`.`ativos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jogomanu`.`ativos` (
  `idativo` INT(11) NOT NULL,
  `fk_pergunta` INT(11) NULL,
  `pergunta_resposta` CHAR(1) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci' NOT NULL COMMENT '0 = pergunta\n1 = resposta\n',
  `fk_resposta` INT(11) NULL,
  `caminho_img` VARCHAR(510) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci' NOT NULL,
  PRIMARY KEY (`idativo`),
  INDEX `fk_img_perg_idx` (`fk_pergunta` ) ,
  INDEX `fk_ativos_respostas1_idx` (`fk_resposta` ) ,
  CONSTRAINT `fk_img_perg`
    FOREIGN KEY (`fk_pergunta`)
    REFERENCES `jogomanu`.`perguntas` (`pk_pergunta`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_ativos_respostas1`
    FOREIGN KEY (`fk_resposta`)
    REFERENCES `jogomanu`.`respostas` (`pk_resposta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jogomanu`.`conteudos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jogomanu`.`conteudos` (
  `pk_conteudo` INT(11) NOT NULL AUTO_INCREMENT,
  `tituloconteudo` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci' NOT NULL,
  `textoconteudo` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci' NOT NULL,
  `fk_disciplina` INT(11) NOT NULL,
  PRIMARY KEY (`pk_conteudo`),
  INDEX `fk_conteudos_disciplinas_idx` (`fk_disciplina` ) ,
  CONSTRAINT `fk_conteudos_disciplinas1`
    FOREIGN KEY (`fk_disciplina`)
    REFERENCES `jogomanu`.`disciplinas` (`pk_disciplina`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jogomanu`.`quizes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jogomanu`.`quizes` (
  `pk_quiz` INT NOT NULL AUTO_INCREMENT,
  `fk_acessousuario` INT(11) NOT NULL,
  `iniciado` DATETIME NOT NULL,
  `finalizado` DATETIME NOT NULL,
  PRIMARY KEY (`pk_quiz`),
  INDEX `fk_quiz_acessousuario1_idx` (`fk_acessousuario` ) ,
  CONSTRAINT `fk_quiz_acessousuario1`
    FOREIGN KEY (`fk_acessousuario`)
    REFERENCES `jogomanu`.`acessousuario` (`idacessousuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jogomanu`.`gabaritos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jogomanu`.`gabaritos` (
  `pk_gabarito` INT(11) NOT NULL AUTO_INCREMENT,
  `fk_quiz` INT NOT NULL,
  `fk_pergunta` INT(11) NOT NULL,
  `resposta_usuario` CHAR(1) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci' NOT NULL,
  PRIMARY KEY (`pk_gabarito`),
  INDEX `fk_gabaritos_quiz1_idx` (`fk_quiz` ) ,
  INDEX `fk_gabaritos_perguntas1_idx` (`fk_pergunta` ) ,
  CONSTRAINT `fk_gabaritos_quiz1`
    FOREIGN KEY (`fk_quiz`)
    REFERENCES `jogomanu`.`quizes` (`pk_quiz`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_gabaritos_perguntas1`
    FOREIGN KEY (`fk_pergunta`)
    REFERENCES `jogomanu`.`perguntas` (`pk_pergunta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jogomanu`.`imagensconteudos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jogomanu`.`imagensconteudos` (
  `idimagenconteudo` INT(11) NOT NULL AUTO_INCREMENT,
  `nomeimagem` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci' NULL DEFAULT NULL,
  `fk_conteudo` INT(11) NOT NULL,
  PRIMARY KEY (`idimagenconteudo`),
  INDEX `fk_imagensconteudos_conteudos_idx` (`fk_conteudo` ) ,
  CONSTRAINT `fk_imagensconteudos_conteudos1`
    FOREIGN KEY (`fk_conteudo`)
    REFERENCES `jogomanu`.`conteudos` (`pk_conteudo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jogomanu`.`senhasusuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jogomanu`.`senhasusuarios` (
  `pk_senhausuario` INT(11) NOT NULL AUTO_INCREMENT,
  `senhacripto` VARCHAR(255) NOT NULL,
  `fk_usuario` INT(11) NOT NULL,
  PRIMARY KEY (`pk_senhausuario`),
  INDEX `fk_senhasusuarios_usuarios1_idx` (`fk_usuario` ) ,
  CONSTRAINT `fk_senhasusuarios_usuarios1`
    FOREIGN KEY (`fk_usuario`)
    REFERENCES `jogomanu`.`usuarios` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `jogomanu`.`slugs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jogomanu`.`slugs` (
  `pk_slug` INT(11) NOT NULL,
  `slug` VARCHAR(510) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci' NOT NULL,
  `controller` VARCHAR(510) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci' NOT NULL,
  PRIMARY KEY (`pk_slug`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jogomanu`.`tiposplanos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jogomanu`.`tiposplanos` (
  `pk_tipoplano` INT(11) NOT NULL AUTO_INCREMENT,
  `plano` CHAR(1) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL COMMENT '0-isento, 1-pago',
  `statusplano` CHAR(1) CHARACTER SET 'utf8' NOT NULL DEFAULT '1',
  `fk_usuario` INT(11) NOT NULL,
  PRIMARY KEY (`pk_tipoplano`),
  INDEX `fk_tiposplanos_usuarios1_idx` (`fk_usuario` ) ,
  CONSTRAINT `fk_tiposplanos_usuarios1`
    FOREIGN KEY (`fk_usuario`)
    REFERENCES `jogomanu`.`usuarios` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

USE `jogomanu` ;

-- -----------------------------------------------------
-- procedure sp_autenticar_usuario
-- -----------------------------------------------------

DELIMITER $$
USE `jogomanu`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autenticar_usuario`(IN `p_email` VARCHAR(255))
BEGIN
    -- Retorna hash + dados do usuário para validação no PHP
    -- PHP usa password_verify($senhaDigitada, $senhacripto)
    IF EXISTS (
        SELECT 1
        FROM `jogomanu`.`usuarios` u
        WHERE u.`email` = p_email
    ) THEN
        SELECT
            u.`idusuario`       AS `idusuario`,
            u.`identificacao`   AS `identificacao`,
            u.`emailverificado` AS `verificacao`,
            s.`senhacripto`     AS `senhacripto`,
            t.`plano`           AS `plano`,
            t.`statusplano`     AS `statusplano`
        FROM `jogomanu`.`usuarios` u
        LEFT JOIN `jogomanu`.`senhasusuarios` s ON u.`idusuario` = s.`fk_idusuario`
        LEFT JOIN `jogomanu`.`tiposplanos`    t ON u.`idusuario` = t.`fk_idusuario`
        WHERE u.`email` = p_email;
    ELSE
        SELECT
            0         AS `idusuario`,
            ''        AS `identificacao`,
            '0'       AS `verificacao`,
            ''        AS `senhacripto`,
            'Nenhum'  AS `plano`,
            '0'       AS `statusplano`;
    END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure sp_cadastrar_usuario_com_plano
-- -----------------------------------------------------

DELIMITER $$
USE `jogomanu`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cadastrar_usuario_com_plano`(IN `p_email` VARCHAR(255), IN `p_whatsapp` VARCHAR(20), IN `p_nome` VARCHAR(255), IN `p_verificado` CHAR(1), IN `p_tipo_plano` VARCHAR(20), IN `p_status_plano` CHAR(1), IN `p_senha_usuario` VARCHAR(255))
BEGIN
    DECLARE var_id_usuario INT;
    
    -- Declaração de segurança para falhas
   -- DECLARE EXIT HANDLER FOR SQLEXCEPTION
   -- BEGIN
   --     ROLLBACK; -- Desfaz tudo se der erro
   -- END;

    -- Inicia a transação
    START TRANSACTION;
	
    -- 1. Insere o usuário
    INSERT INTO `jogomanu`.`usuarios` (
        `emailusuario`, 
        `numerowhatsapp`, 
        `identificacao`, 
        `emailverificado`, 
        `datacadastro`
    ) VALUES (
        p_email, 
        p_whatsapp, 
        p_nome, 
        p_verificado, 
        CURRENT_TIMESTAMP()
    );
	
    -- Captura o ID gerado estritamente nesta conexão
    SET var_id_usuario = LAST_INSERT_ID();
    
    -- 2. Insere na tabela de planos usando a variável
    INSERT INTO `jogomanu`.`tiposplanos` (
        `plano`, 
        `statusplano`,        
        `usuarios_idusuario`
    ) VALUES (
        p_tipo_plano,
        p_status_plano,
        var_id_usuario
    );
	
    -- 3. Insere na tabela de senhas usando a variável e o SHA2 corrigido
    INSERT INTO `jogomanu`.`senhasusuarios`(
        `senhacripto`,
        `usuarios_idusuario`
    ) VALUES (
        SHA2(p_senha_usuario, 256), -- Adicionado o parâmetro de 256 bits aqui
        var_id_usuario
    );

    -- Confirma todas as operações no banco
    COMMIT;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure sp_insere_resposta_quiz
-- -----------------------------------------------------

DELIMITER $$
USE `jogomanu`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insere_resposta_quiz`(IN `p_idresposta` INT(11), IN `p_idquizaluno` INT(11), OUT `p_sucesso` TINYINT, OUT `p_mensagem` VARCHAR(255))
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SET p_sucesso  = 0;
        SET p_mensagem = 'Erro ao registrar resposta. Tente novamente.';
    END;

    START TRANSACTION;

    INSERT INTO `jogomanu`.`gabaritosalunos` (
        `fk_idresposta`,
        `fk_idquizaluno`,
        `horaresposta`
    ) VALUES (
        p_idresposta,
        p_idquizaluno,
        CURRENT_TIMESTAMP()
    );

    COMMIT;

    SET p_sucesso  = 1;
    SET p_mensagem = 'Resposta registrada com sucesso.';
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure sp_parametros_procedure
-- -----------------------------------------------------

DELIMITER $$
USE `jogomanu`$$
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
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure usp_autentica_usuario
-- -----------------------------------------------------

DELIMITER $$
USE `jogomanu`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_autentica_usuario`(IN `p_usuario` VARCHAR(255), IN `p_senha` VARCHAR(255))
BEGIN
SELECT EXISTS(SELECT 1 FROM 
	usuarios AS u
	INNER JOIN 
		senhasusuarios AS s
    ON 
		u.idusuario = s.fk_idusuario
    WHERE 
		u.email = p_usuario
    AND 
		s.senhacripto = sha2(p_senha, 256)
    ) AS valido;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure usp_busca_slug
-- -----------------------------------------------------

DELIMITER $$
USE `jogomanu`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_busca_slug`(`p_slug` VARCHAR(510))
BEGIN
	select controller from slugs where slug = p_slug;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure usp_cadastrar_usuario
-- -----------------------------------------------------

DELIMITER $$
USE `jogomanu`$$
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
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure usp_insere_slug_controller
-- -----------------------------------------------------

DELIMITER $$
USE `jogomanu`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_insere_slug_controller`(`p_slug` VARCHAR(255), `p_controller` VARCHAR(255))
BEGIN
	INSERT INTO 
		slugs(slug, controller) 
	VALUES
		(p_slug, p_controller);
END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
