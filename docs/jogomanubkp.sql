-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/06/2026 às 11:46
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jogomanu`
--

DELIMITER $$
--
-- Procedimentos
--
DROP PROCEDURE IF EXISTS `usp_autenticar_usuario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_autenticar_usuario` (IN `p_email` VARCHAR(255))   BEGIN
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

DROP PROCEDURE IF EXISTS `usp_busca_slug`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_busca_slug` (IN `p_slug` VARCHAR(510))   BEGIN
    DECLARE v_controller VARCHAR(100);

    SELECT
        `controller`
    INTO v_controller
    FROM `jogomanu`.`slugs`
    WHERE `slug` = p_slug
    LIMIT 1;

    IF v_controller IS NULL THEN
        SELECT 0 AS controller;
    ELSE
        SELECT v_controller AS controller;
    END IF;
END$$

DROP PROCEDURE IF EXISTS `usp_cadastrar_usuario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_cadastrar_usuario` (IN `p_email` VARCHAR(255), IN `p_whatsapp` VARCHAR(15), IN `p_nome` VARCHAR(255), IN `p_senha_hash` VARCHAR(255), OUT `p_sucesso` TINYINT, OUT `p_mensagem` VARCHAR(255))   BEGIN
    DECLARE var_idusuario INT DEFAULT 0;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SET p_sucesso  = 0;
        SET p_mensagem = 'Erro interno. O cadastro não foi concluído. Tente novamente.';
    END;

    START TRANSACTION;

    -- 1. Insere o usuário
    INSERT INTO `jogomanu`.`usuarios` (
        `email`,
        `numerowhatsapp`,
        `identificacao`,
        `emailverificado`,
        `datacadastro`
    ) VALUES (
        p_email,
        p_whatsapp,
        p_nome,
        '0',
        CURRENT_TIMESTAMP()
    );

    SET var_idusuario = LAST_INSERT_ID();

    -- 2. Insere plano free fixo para V1
    --    V2: substituir por chamada a usp_cadastrar_plano(var_idusuario, 'free')
    INSERT INTO `jogomanu`.`tiposplanos` (
        `plano`,
        `statusplano`,
        `fk_idusuario`,
        `dataexpiracao`
    ) VALUES (
        '0',                                        -- 0 = isento/free
        '1',                                        -- 1 = ativo
        var_idusuario,
        DATE_ADD(CURRENT_TIMESTAMP(), INTERVAL 99 YEAR) -- V1: sem expiração real
    );

    -- 3. Insere senha (hash gerado pelo PHP com Argon2ID)
    INSERT INTO `jogomanu`.`senhasusuarios` (
        `senhacripto`,
        `fk_idusuario`
    ) VALUES (
        p_senha_hash,
        var_idusuario
    );

    COMMIT;

    SET p_sucesso  = 1;
    SET p_mensagem = 'Cadastro realizado com sucesso.';
END$$

DROP PROCEDURE IF EXISTS `usp_insere_resposta_quiz`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_insere_resposta_quiz` (IN `p_idresposta` INT(11), IN `p_idquizaluno` INT(11), OUT `p_sucesso` TINYINT, OUT `p_mensagem` VARCHAR(255))   BEGIN
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

DROP PROCEDURE IF EXISTS `usp_inserir_slug`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_inserir_slug` (IN `pSlug` VARCHAR(510), IN `pController` VARCHAR(100))   BEGIN
    DECLARE vExiste INT DEFAULT 0;

    SELECT COUNT(*)
      INTO vExiste
      FROM slugs
     WHERE slug = pSlug;

    IF vExiste > 0 THEN
        SELECT 0 AS resultado;
    ELSE
        INSERT INTO slugs (
            slug,
            controller
        )
        VALUES (
            pSlug,
            pController
        );

        SELECT 1 AS resultado;
    END IF;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `acessousuario`
--

DROP TABLE IF EXISTS `acessousuario`;
CREATE TABLE `acessousuario` (
  `idacessousuario` int(11) NOT NULL,
  `iniciodasessao` datetime DEFAULT current_timestamp(),
  `fimdasesao` datetime DEFAULT NULL,
  `usuarios_idusuario` int(11) NOT NULL,
  `idsessao` varchar(510) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ativos`
--

DROP TABLE IF EXISTS `ativos`;
CREATE TABLE `ativos` (
  `idativo` int(11) NOT NULL,
  `perguntas_idpergunta` int(11) NOT NULL,
  `caminho_arquivo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `conteudos`
--

DROP TABLE IF EXISTS `conteudos`;
CREATE TABLE `conteudos` (
  `idconteudo` int(11) NOT NULL,
  `tituloconteudo` varchar(255) NOT NULL,
  `textoconteudo` text NOT NULL,
  `disciplinas_iddisciplina` int(11) NOT NULL,
  `serie` char(2) NOT NULL COMMENT '01...09 = Fundamental\n11...13 = Medio\n\nHavaera um campo calculado para informar a série',
  `nivel` varchar(45) GENERATED ALWAYS AS (case when cast(`serie` as unsigned) between 1 and 9 then 'Fundamental' when cast(`serie` as unsigned) between 11 and 13 then 'Medio' end) VIRTUAL COMMENT 'Verifica o valor do campo serie se estiver entre 01 até 09 o valor é fundamental\n\nSe o valor for 11 até 13 o valor é Médio.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
CREATE TABLE `disciplinas` (
  `iddisciplina` int(11) NOT NULL,
  `nomedisciplina` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `imagensconteudos`
--

DROP TABLE IF EXISTS `imagensconteudos`;
CREATE TABLE `imagensconteudos` (
  `idimagenconteudo` int(11) NOT NULL,
  `nomeimagem` varchar(255) NOT NULL,
  `conteudos_idconteudo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `imagensrespostas`
--

DROP TABLE IF EXISTS `imagensrespostas`;
CREATE TABLE `imagensrespostas` (
  `idimagenresposta` int(11) NOT NULL,
  `enderecoimagen` varchar(255) NOT NULL,
  `respostas_idresposta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `locaisdeorigem`
--

DROP TABLE IF EXISTS `locaisdeorigem`;
CREATE TABLE `locaisdeorigem` (
  `idlocaldeorigem` int(11) NOT NULL,
  `nomelocal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `perguntas`
--

DROP TABLE IF EXISTS `perguntas`;
CREATE TABLE `perguntas` (
  `idpergunta` int(11) NOT NULL,
  `enunciado` text NOT NULL,
  `locaisdeorigem_idlocaldeorigem` int(11) NOT NULL,
  `temimagem` char(1) NOT NULL COMMENT '0 = Não\n1 = Sim',
  `conteudos_idconteudo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `perguntasrespostasquizes`
--

DROP TABLE IF EXISTS `perguntasrespostasquizes`;
CREATE TABLE `perguntasrespostasquizes` (
  `idperguntaquiz` int(11) NOT NULL,
  `quizesalunos_idquizaluno` int(11) NOT NULL,
  `perguntas_idpergunta` int(11) NOT NULL,
  `horaresposta` datetime NOT NULL,
  `respostas_idresposta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `perguntassimulados`
--

DROP TABLE IF EXISTS `perguntassimulados`;
CREATE TABLE `perguntassimulados` (
  `idperguntasimulado` int(11) NOT NULL,
  `perguntas_idpergunta` int(11) NOT NULL,
  `simulados_idsimulado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `quizesalunos`
--

DROP TABLE IF EXISTS `quizesalunos`;
CREATE TABLE `quizesalunos` (
  `idquizaluno` int(11) NOT NULL,
  `inicioquiz` datetime NOT NULL,
  `fimquiz` datetime NOT NULL,
  `quantidadeperguntas` int(11) NOT NULL,
  `acessousuario_idacessousuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `respostas`
--

DROP TABLE IF EXISTS `respostas`;
CREATE TABLE `respostas` (
  `idresposta` int(11) NOT NULL,
  `perguntas_idpergunta` int(11) NOT NULL,
  `alternativa_texto` text NOT NULL,
  `status` char(1) NOT NULL COMMENT 'I = incorreta, C = correta',
  `temimagem` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `simulados`
--

DROP TABLE IF EXISTS `simulados`;
CREATE TABLE `simulados` (
  `idsimulado` int(11) NOT NULL,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `slugs`
--

DROP TABLE IF EXISTS `slugs`;
CREATE TABLE `slugs` (
  `idslug` int(11) NOT NULL,
  `slug` varchar(510) NOT NULL COMMENT 'segmento da URL ex: quiz/fundamental/matematica',
  `controller` varchar(100) NOT NULL COMMENT 'nome do controller ex: QuizController'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `slugs`
--

INSERT INTO `slugs` (`idslug`, `slug`, `controller`) VALUES
(1, '', 'primeiroAcesso.php');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tiposplanos`
--

DROP TABLE IF EXISTS `tiposplanos`;
CREATE TABLE `tiposplanos` (
  `idtipoplano` int(11) NOT NULL,
  `plano` char(1) NOT NULL COMMENT '0-isento, 1-pago',
  `statusplano` char(1) NOT NULL DEFAULT '1' COMMENT '1 = freemium\n2 = Bronze\n3 = Prata\n4 = Ouro',
  `usuarios_idusuario` int(11) NOT NULL,
  `diaconclusao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `emailusuario` varchar(255) NOT NULL,
  `numerowhatsapp` varchar(15) NOT NULL,
  `identificacao` varchar(45) NOT NULL,
  `emailverificado` char(1) NOT NULL DEFAULT '0',
  `datacadastro` datetime NOT NULL DEFAULT current_timestamp(),
  `senha` varchar(510) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `acessousuario`
--
ALTER TABLE `acessousuario`
  ADD PRIMARY KEY (`idacessousuario`),
  ADD KEY `fk_sessao_user_idx` (`usuarios_idusuario`);

--
-- Índices de tabela `ativos`
--
ALTER TABLE `ativos`
  ADD PRIMARY KEY (`idativo`),
  ADD KEY `fk_img_perg_idx` (`perguntas_idpergunta`);

--
-- Índices de tabela `conteudos`
--
ALTER TABLE `conteudos`
  ADD PRIMARY KEY (`idconteudo`),
  ADD KEY `fk_conteudos_disciplinas_idx` (`disciplinas_iddisciplina`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`iddisciplina`);

--
-- Índices de tabela `imagensconteudos`
--
ALTER TABLE `imagensconteudos`
  ADD PRIMARY KEY (`idimagenconteudo`),
  ADD KEY `fk_imagensconteudos_conteudos_idx` (`conteudos_idconteudo`);

--
-- Índices de tabela `imagensrespostas`
--
ALTER TABLE `imagensrespostas`
  ADD PRIMARY KEY (`idimagenresposta`),
  ADD KEY `fk_imgresp_resp_idx` (`respostas_idresposta`);

--
-- Índices de tabela `locaisdeorigem`
--
ALTER TABLE `locaisdeorigem`
  ADD PRIMARY KEY (`idlocaldeorigem`);

--
-- Índices de tabela `perguntas`
--
ALTER TABLE `perguntas`
  ADD PRIMARY KEY (`idpergunta`),
  ADD KEY `fk_perg_local_idx` (`locaisdeorigem_idlocaldeorigem`),
  ADD KEY `fk_perguntas_conteudos1_idx` (`conteudos_idconteudo`);

--
-- Índices de tabela `perguntasrespostasquizes`
--
ALTER TABLE `perguntasrespostasquizes`
  ADD PRIMARY KEY (`idperguntaquiz`),
  ADD KEY `fk_perguntasquizes_quizesalunos1_idx` (`quizesalunos_idquizaluno`),
  ADD KEY `fk_perguntasquizes_perguntas1_idx` (`perguntas_idpergunta`),
  ADD KEY `fk_perguntasrespostasquizes_respostas1_idx` (`respostas_idresposta`);

--
-- Índices de tabela `perguntassimulados`
--
ALTER TABLE `perguntassimulados`
  ADD PRIMARY KEY (`idperguntasimulado`),
  ADD KEY `fk_pergsim_perg_idx` (`perguntas_idpergunta`),
  ADD KEY `fk_pergsim_sim_idx` (`simulados_idsimulado`);

--
-- Índices de tabela `quizesalunos`
--
ALTER TABLE `quizesalunos`
  ADD PRIMARY KEY (`idquizaluno`),
  ADD KEY `fk_quizesalunos_acessousuario1_idx` (`acessousuario_idacessousuario`);

--
-- Índices de tabela `respostas`
--
ALTER TABLE `respostas`
  ADD PRIMARY KEY (`idresposta`),
  ADD KEY `fk_resp_perg_idx` (`perguntas_idpergunta`);

--
-- Índices de tabela `simulados`
--
ALTER TABLE `simulados`
  ADD PRIMARY KEY (`idsimulado`);

--
-- Índices de tabela `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`idslug`),
  ADD UNIQUE KEY `unq_slug` (`slug`),
  ADD UNIQUE KEY `uk_slug` (`slug`);

--
-- Índices de tabela `tiposplanos`
--
ALTER TABLE `tiposplanos`
  ADD PRIMARY KEY (`idtipoplano`),
  ADD KEY `fk_tiposplanos_usuarios1_idx` (`usuarios_idusuario`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `unq_emailusuario` (`emailusuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acessousuario`
--
ALTER TABLE `acessousuario`
  MODIFY `idacessousuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ativos`
--
ALTER TABLE `ativos`
  MODIFY `idativo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `conteudos`
--
ALTER TABLE `conteudos`
  MODIFY `idconteudo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `iddisciplina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `imagensconteudos`
--
ALTER TABLE `imagensconteudos`
  MODIFY `idimagenconteudo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `imagensrespostas`
--
ALTER TABLE `imagensrespostas`
  MODIFY `idimagenresposta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `locaisdeorigem`
--
ALTER TABLE `locaisdeorigem`
  MODIFY `idlocaldeorigem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `perguntas`
--
ALTER TABLE `perguntas`
  MODIFY `idpergunta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `perguntasrespostasquizes`
--
ALTER TABLE `perguntasrespostasquizes`
  MODIFY `idperguntaquiz` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `perguntassimulados`
--
ALTER TABLE `perguntassimulados`
  MODIFY `idperguntasimulado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `quizesalunos`
--
ALTER TABLE `quizesalunos`
  MODIFY `idquizaluno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `respostas`
--
ALTER TABLE `respostas`
  MODIFY `idresposta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `simulados`
--
ALTER TABLE `simulados`
  MODIFY `idsimulado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `slugs`
--
ALTER TABLE `slugs`
  MODIFY `idslug` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tiposplanos`
--
ALTER TABLE `tiposplanos`
  MODIFY `idtipoplano` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `acessousuario`
--
ALTER TABLE `acessousuario`
  ADD CONSTRAINT `fk_sessao_user` FOREIGN KEY (`usuarios_idusuario`) REFERENCES `usuarios` (`idusuario`);

--
-- Restrições para tabelas `ativos`
--
ALTER TABLE `ativos`
  ADD CONSTRAINT `fk_img_perg` FOREIGN KEY (`perguntas_idpergunta`) REFERENCES `perguntas` (`idpergunta`) ON DELETE CASCADE;

--
-- Restrições para tabelas `conteudos`
--
ALTER TABLE `conteudos`
  ADD CONSTRAINT `fk_conteudos_disciplinas1` FOREIGN KEY (`disciplinas_iddisciplina`) REFERENCES `disciplinas` (`iddisciplina`);

--
-- Restrições para tabelas `imagensconteudos`
--
ALTER TABLE `imagensconteudos`
  ADD CONSTRAINT `fk_imagensconteudos_conteudos1` FOREIGN KEY (`conteudos_idconteudo`) REFERENCES `conteudos` (`idconteudo`);

--
-- Restrições para tabelas `imagensrespostas`
--
ALTER TABLE `imagensrespostas`
  ADD CONSTRAINT `fk_imgresp_resp` FOREIGN KEY (`respostas_idresposta`) REFERENCES `respostas` (`idresposta`);

--
-- Restrições para tabelas `perguntas`
--
ALTER TABLE `perguntas`
  ADD CONSTRAINT `fk_perg_local` FOREIGN KEY (`locaisdeorigem_idlocaldeorigem`) REFERENCES `locaisdeorigem` (`idlocaldeorigem`),
  ADD CONSTRAINT `fk_perguntas_conteudos1` FOREIGN KEY (`conteudos_idconteudo`) REFERENCES `conteudos` (`idconteudo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `perguntasrespostasquizes`
--
ALTER TABLE `perguntasrespostasquizes`
  ADD CONSTRAINT `fk_perguntasquizes_perguntas1` FOREIGN KEY (`perguntas_idpergunta`) REFERENCES `perguntas` (`idpergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perguntasquizes_quizesalunos1` FOREIGN KEY (`quizesalunos_idquizaluno`) REFERENCES `quizesalunos` (`idquizaluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perguntasrespostasquizes_respostas1` FOREIGN KEY (`respostas_idresposta`) REFERENCES `respostas` (`idresposta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `perguntassimulados`
--
ALTER TABLE `perguntassimulados`
  ADD CONSTRAINT `fk_pergsim_perg` FOREIGN KEY (`perguntas_idpergunta`) REFERENCES `perguntas` (`idpergunta`),
  ADD CONSTRAINT `fk_pergsim_sim` FOREIGN KEY (`simulados_idsimulado`) REFERENCES `simulados` (`idsimulado`);

--
-- Restrições para tabelas `quizesalunos`
--
ALTER TABLE `quizesalunos`
  ADD CONSTRAINT `fk_quizesalunos_acessousuario1` FOREIGN KEY (`acessousuario_idacessousuario`) REFERENCES `acessousuario` (`idacessousuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `respostas`
--
ALTER TABLE `respostas`
  ADD CONSTRAINT `fk_resp_perg` FOREIGN KEY (`perguntas_idpergunta`) REFERENCES `perguntas` (`idpergunta`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tiposplanos`
--
ALTER TABLE `tiposplanos`
  ADD CONSTRAINT `fk_tiposplanos_usuarios1` FOREIGN KEY (`usuarios_idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
