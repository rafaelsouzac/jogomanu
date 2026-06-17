-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/06/2026 às 03:58
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autenticar_usuario` (IN `p_email` VARCHAR(255))   BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cadastrar_usuario_com_plano` (IN `p_email` VARCHAR(255), IN `p_whatsapp` VARCHAR(20), IN `p_nome` VARCHAR(255), IN `p_verificado` CHAR(1), IN `p_tipo_plano` VARCHAR(20), IN `p_status_plano` CHAR(1), IN `p_senha_usuario` VARCHAR(255))   BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insere_resposta_quiz` (IN `p_idresposta` INT(11), IN `p_idquizaluno` INT(11), OUT `p_sucesso` TINYINT, OUT `p_mensagem` VARCHAR(255))   BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_parametros_procedure` (IN `p_nome_procedure` VARCHAR(255))   BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_autentica_usuario` (IN `p_usuario` VARCHAR(255), IN `p_senha` VARCHAR(255))   BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_busca_slug` (`p_slug` VARCHAR(510))   BEGIN
	select controller from slugs where slug = p_slug;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_cadastrar_usuario` (IN `p_email` VARCHAR(255), IN `p_senha_hash` VARCHAR(255))   BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_insere_slug_controller` (`p_slug` VARCHAR(255), `p_controller` VARCHAR(255))   BEGIN
	INSERT INTO 
		slugs(slug, controller) 
	VALUES
		(p_slug, p_controller);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `acessousuario`
--

CREATE TABLE `acessousuario` (
  `idacessousuario` int(11) NOT NULL,
  `iniciodasessao` datetime DEFAULT current_timestamp(),
  `fimdasesao` datetime DEFAULT NULL,
  `usuarios_idusuario` int(11) NOT NULL,
  `idsessao` varchar(510) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ativos`
--

CREATE TABLE `ativos` (
  `idativo` int(11) NOT NULL,
  `perguntas_idpergunta` int(11) NOT NULL,
  `caminho_arquivo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `conteudos`
--

CREATE TABLE `conteudos` (
  `idconteudo` int(11) NOT NULL,
  `tituloconteudo` varchar(255) NOT NULL,
  `textoconteudo` text NOT NULL,
  `disciplinas_iddisciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `iddisciplina` int(11) NOT NULL,
  `nomedisciplina` varchar(100) NOT NULL,
  `idmateria_pai` int(11) DEFAULT NULL,
  `serie` char(2) DEFAULT NULL,
  `grau` char(1) DEFAULT NULL COMMENT 'F = Ensino Fundamental\nM = Ensino Médio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`iddisciplina`, `nomedisciplina`, `idmateria_pai`, `serie`, `grau`) VALUES
(1, 'matematica', 0, NULL, NULL),
(2, 'portugues', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `gabaritosalunos`
--

CREATE TABLE `gabaritosalunos` (
  `idgabaritoaluno` int(11) NOT NULL,
  `idresposta` int(11) NOT NULL,
  `acessousuario_idacessousuario` int(11) NOT NULL,
  `horaresposta` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `imagensconteudos`
--

CREATE TABLE `imagensconteudos` (
  `idimagenconteudo` int(11) NOT NULL,
  `nomeimagem` varchar(255) DEFAULT NULL,
  `conteudos_idconteudo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `imagensrespostas`
--

CREATE TABLE `imagensrespostas` (
  `idimagenresposta` int(11) NOT NULL,
  `enderecoimagen` varchar(255) NOT NULL,
  `respostas_idresposta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `locaisdeorigem`
--

CREATE TABLE `locaisdeorigem` (
  `idlocaldeorigem` int(11) NOT NULL,
  `nomelocal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `perguntas`
--

CREATE TABLE `perguntas` (
  `idpergunta` int(11) NOT NULL,
  `enunciado` text NOT NULL,
  `locaisdeorigem_idlocaldeorigem` int(11) NOT NULL,
  `iddisciplina` int(11) NOT NULL,
  `temimagem` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `perguntassimulados`
--

CREATE TABLE `perguntassimulados` (
  `idperguntasimulado` int(11) NOT NULL,
  `perguntas_idpergunta` int(11) NOT NULL,
  `simulados_idsimulado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `respostas`
--

CREATE TABLE `respostas` (
  `idresposta` int(11) NOT NULL,
  `perguntas_idpergunta` int(11) NOT NULL,
  `alternativa_texto` text NOT NULL,
  `status` char(1) NOT NULL COMMENT 'I = incorreta, C = correta',
  `temimagem` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `senhasusuarios`
--

CREATE TABLE `senhasusuarios` (
  `pk_senhausuario` int(11) NOT NULL,
  `senhacripto` varchar(255) NOT NULL,
  `fk_idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `senhasusuarios`
--

INSERT INTO `senhasusuarios` (`pk_senhausuario`, `senhacripto`, `fk_usuario`) VALUES
(1, '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 9),
(2, 'c5aa6ccced8500f4e6fd5656aef8b4b9163cdb53b892321128304ef886b0c8ac', 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `simulados`
--

CREATE TABLE `simulados` (
  `idsimulado` int(11) NOT NULL,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `slugs`
--

CREATE TABLE `slugs` (
  `idslug` int(11) NOT NULL,
  `slug` varchar(510) NOT NULL,
  `controller` varchar(510) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `slugs`
--

INSERT INTO `slugs` (`pk_slug`, `slug`, `controller`) VALUES
(1, '', 'primeiroAcesso.php'),
(2, 'quarta-serie/matematica/geometria/exercicios', 'controller_exercicios.php'),
(3, 'exercicios-corrige', 'controller_form_exercicios.php'),
(4, 'login', 'LoginController.php'),
(5, 'cadastro', 'CadastroController.php'),
(6, 'quiz', 'QuizController.php'),
(7, 'erro_login', 'Error500Controller.php'),
(8, 'esqueci-senha', 'EsqueciSenhaController.php');

-- --------------------------------------------------------

--
-- Estrutura para tabela `statusgabaritos`
--

CREATE TABLE `statusgabaritos` (
  `idstatusgabarito` int(11) NOT NULL,
  `gabaritosalunos_idgabaritoaluno` int(11) NOT NULL,
  `inicioquiz` datetime NOT NULL,
  `fimquiz` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tiposplanos`
--

CREATE TABLE `tiposplanos` (
  `idtipoplano` int(11) NOT NULL,
  `plano` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '0-isento, 1-pago',
  `statusplano` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `usuarios_idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tiposplanos`
--

INSERT INTO `tiposplanos` (`idtipoplano`, `plano`, `statusplano`, `usuarios_idusuario`) VALUES
(0, 'O', '1', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `numerowhatsapp` varchar(15) DEFAULT NULL,
  `identificacao` varchar(255) NOT NULL,
  `emailverificado` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `datacadastro` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `email`, `numerowhatsapp`, `identificacao`, `emailverificado`, `datacadastro`) VALUES
(8, 'rafaelsouzac@gmail.com', NULL, '', '0', '2026-06-08 11:15:01'),
(9, 'rafael@gmail.com', NULL, '', '0', '2026-06-13 20:43:04');

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
-- Índices de tabela `gabaritosalunos`
--
ALTER TABLE `gabaritosalunos`
  ADD PRIMARY KEY (`idgabaritoaluno`),
  ADD KEY `fk_gab_resp_idx` (`idresposta`),
  ADD KEY `fk_gab_sessao_idx` (`acessousuario_idacessousuario`);

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
  ADD KEY `fk_perg_disc_idx` (`iddisciplina`);

--
-- Índices de tabela `perguntassimulados`
--
ALTER TABLE `perguntassimulados`
  ADD PRIMARY KEY (`idperguntasimulado`),
  ADD KEY `fk_pergsim_perg_idx` (`perguntas_idpergunta`),
  ADD KEY `fk_pergsim_sim_idx` (`simulados_idsimulado`);

--
-- Índices de tabela `respostas`
--
ALTER TABLE `respostas`
  ADD PRIMARY KEY (`idresposta`),
  ADD KEY `fk_resp_perg_idx` (`perguntas_idpergunta`);

--
-- Índices de tabela `senhasusuarios`
--
ALTER TABLE `senhasusuarios`
  ADD PRIMARY KEY (`pk_senhausuario`),
  ADD KEY `idx_fk_idusuario` (`fk_idusuario`);

--
-- Índices de tabela `simulados`
--
ALTER TABLE `simulados`
  ADD PRIMARY KEY (`idsimulado`);

--
-- Índices de tabela `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`idslug`);

--
-- Índices de tabela `statusgabaritos`
--
ALTER TABLE `statusgabaritos`
  ADD PRIMARY KEY (`idstatusgabarito`),
  ADD KEY `fk_statusgab_idx` (`gabaritosalunos_idgabaritoaluno`);

--
-- Índices de tabela `tiposplanos`
--
ALTER TABLE `tiposplanos`
  ADD PRIMARY KEY (`idtipoplano`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `unq_emailusuario` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acessousuario`
--
ALTER TABLE `acessousuario`
  MODIFY `idacessousuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `conteudos`
--
ALTER TABLE `conteudos`
  MODIFY `idconteudo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `iddisciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `gabaritosalunos`
--
ALTER TABLE `gabaritosalunos`
  MODIFY `idgabaritoaluno` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de tabela `perguntassimulados`
--
ALTER TABLE `perguntassimulados`
  MODIFY `idperguntasimulado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `respostas`
--
ALTER TABLE `respostas`
  MODIFY `idresposta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `senhasusuarios`
--
ALTER TABLE `senhasusuarios`
  MODIFY `pk_senhausuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `simulados`
--
ALTER TABLE `simulados`
  MODIFY `idsimulado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `slugs`
--
ALTER TABLE `slugs`
  MODIFY `idslug` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `statusgabaritos`
--
ALTER TABLE `statusgabaritos`
  MODIFY `idstatusgabarito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- Restrições para tabelas `gabaritosalunos`
--
ALTER TABLE `gabaritosalunos`
  ADD CONSTRAINT `fk_gab_resp` FOREIGN KEY (`idresposta`) REFERENCES `respostas` (`idresposta`),
  ADD CONSTRAINT `fk_gab_sessao` FOREIGN KEY (`acessousuario_idacessousuario`) REFERENCES `acessousuario` (`idacessousuario`);

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
  ADD CONSTRAINT `fk_perg_disc` FOREIGN KEY (`iddisciplina`) REFERENCES `disciplinas` (`iddisciplina`),
  ADD CONSTRAINT `fk_perg_local` FOREIGN KEY (`locaisdeorigem_idlocaldeorigem`) REFERENCES `locaisdeorigem` (`idlocaldeorigem`);

--
-- Restrições para tabelas `perguntassimulados`
--
ALTER TABLE `perguntassimulados`
  ADD CONSTRAINT `fk_pergsim_perg` FOREIGN KEY (`perguntas_idpergunta`) REFERENCES `perguntas` (`idpergunta`),
  ADD CONSTRAINT `fk_pergsim_sim` FOREIGN KEY (`simulados_idsimulado`) REFERENCES `simulados` (`idsimulado`);

--
-- Restrições para tabelas `respostas`
--
ALTER TABLE `respostas`
  ADD CONSTRAINT `fk_resp_perg` FOREIGN KEY (`perguntas_idpergunta`) REFERENCES `perguntas` (`idpergunta`) ON DELETE CASCADE;

--
-- Restrições para tabelas `senhasusuarios`
--
ALTER TABLE `senhasusuarios`
  ADD CONSTRAINT `fk_idusuario_senhas` FOREIGN KEY (`fk_idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Restrições para tabelas `statusgabaritos`
--
ALTER TABLE `statusgabaritos`
  ADD CONSTRAINT `fk_statusgab` FOREIGN KEY (`gabaritosalunos_idgabaritoaluno`) REFERENCES `gabaritosalunos` (`idgabaritoaluno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
