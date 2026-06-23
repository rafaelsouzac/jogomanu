-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/06/2026 às 13:38
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

CREATE DATABASE IF NOT EXISTS jogomanu CHARACTER SET = 'utf8mb4' COLLATE = 'utf8mb4_unicode_ci';

USE jogomanu;

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
		u.pk_usuario = s.fk_idusuario
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
  `fk_usuario` int(11) NOT NULL,
  `idsessao` varchar(510) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ativos`
--

CREATE TABLE `ativos` (
  `idativo` int(11) NOT NULL,
  `fk_pergunta` int(11) DEFAULT NULL,
  `pergunta_resposta` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '0 = pergunta\n1 = resposta\n',
  `fk_resposta` int(11) DEFAULT NULL,
  `caminho_img` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `conteudos`
--

CREATE TABLE `conteudos` (
  `pk_conteudo` int(11) NOT NULL,
  `tituloconteudo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `textoconteudo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fk_disciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `pk_disciplina` int(11) NOT NULL,
  `nomedisciplina` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `serie` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `grau` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'F = Ensino Fundamental\\nM = Ensino Médio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `gabaritos`
--

CREATE TABLE `gabaritos` (
  `pk_gabarito` int(11) NOT NULL,
  `fk_quiz` int(11) NOT NULL,
  `fk_pergunta` int(11) NOT NULL,
  `resposta_usuario` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `imagensconteudos`
--

CREATE TABLE `imagensconteudos` (
  `idimagenconteudo` int(11) NOT NULL,
  `nomeimagem` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fk_conteudo` int(11) NOT NULL
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
  `pk_pergunta` int(11) NOT NULL,
  `enunciado` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fk_localdeorigem` int(11) NOT NULL,
  `temimagem` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `fk_disciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `quizes`
--

CREATE TABLE `quizes` (
  `pk_quiz` int(11) NOT NULL,
  `fk_acessousuario` int(11) NOT NULL,
  `iniciado` datetime NOT NULL,
  `finalizado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `respostas`
--

CREATE TABLE `respostas` (
  `pk_resposta` int(11) NOT NULL,
  `fk_pergunta` int(11) NOT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'I = incorreta, C = correta',
  `temimagem` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `senhasusuarios`
--

CREATE TABLE `senhasusuarios` (
  `pk_senhausuario` int(11) NOT NULL,
  `senhacripto` varchar(255) NOT NULL,
  `fk_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `senhasusuarios`
--

INSERT INTO `senhasusuarios` (`pk_senhausuario`, `senhacripto`, `fk_usuario`) VALUES
(1, '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 9),
(2, 'c5aa6ccced8500f4e6fd5656aef8b4b9163cdb53b892321128304ef886b0c8ac', 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `slugs`
--

CREATE TABLE `slugs` (
  `pk_slug` int(11) NOT NULL,
  `slug` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `controller` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
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
-- Estrutura para tabela `tiposplanos`
--

CREATE TABLE `tiposplanos` (
  `pk_tipoplano` int(11) NOT NULL,
  `plano` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '0-isento, 1-pago',
  `statusplano` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `fk_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tiposplanos`
--

INSERT INTO `tiposplanos` (`pk_tipoplano`, `plano`, `statusplano`, `fk_usuario`) VALUES
(2, 'O', '1', 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `pk_usuario` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `numerowhatsapp` varchar(15) DEFAULT NULL,
  `identificacao` varchar(255) NOT NULL,
  `emailverificado` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `datacadastro` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`pk_usuario`, `email`, `numerowhatsapp`, `identificacao`, `emailverificado`, `datacadastro`) VALUES
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
  ADD KEY `fk_sessao_user_idx` (`fk_usuario`);

--
-- Índices de tabela `ativos`
--
ALTER TABLE `ativos`
  ADD PRIMARY KEY (`idativo`),
  ADD KEY `fk_img_perg_idx` (`fk_pergunta`),
  ADD KEY `fk_ativos_respostas1_idx` (`fk_resposta`);

--
-- Índices de tabela `conteudos`
--
ALTER TABLE `conteudos`
  ADD PRIMARY KEY (`pk_conteudo`),
  ADD KEY `fk_conteudos_disciplinas_idx` (`fk_disciplina`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`pk_disciplina`);

--
-- Índices de tabela `gabaritos`
--
ALTER TABLE `gabaritos`
  ADD PRIMARY KEY (`pk_gabarito`),
  ADD KEY `fk_gabaritos_quiz1_idx` (`fk_quiz`),
  ADD KEY `fk_gabaritos_perguntas1_idx` (`fk_pergunta`);

--
-- Índices de tabela `imagensconteudos`
--
ALTER TABLE `imagensconteudos`
  ADD PRIMARY KEY (`idimagenconteudo`),
  ADD KEY `fk_imagensconteudos_conteudos_idx` (`fk_conteudo`);

--
-- Índices de tabela `locaisdeorigem`
--
ALTER TABLE `locaisdeorigem`
  ADD PRIMARY KEY (`idlocaldeorigem`);

--
-- Índices de tabela `perguntas`
--
ALTER TABLE `perguntas`
  ADD PRIMARY KEY (`pk_pergunta`),
  ADD KEY `fk_perg_local_idx` (`fk_localdeorigem`),
  ADD KEY `fk_perguntas_disciplinas1_idx` (`fk_disciplina`);

--
-- Índices de tabela `quizes`
--
ALTER TABLE `quizes`
  ADD PRIMARY KEY (`pk_quiz`),
  ADD KEY `fk_quiz_acessousuario1_idx` (`fk_acessousuario`);

--
-- Índices de tabela `respostas`
--
ALTER TABLE `respostas`
  ADD PRIMARY KEY (`pk_resposta`),
  ADD KEY `fk_resp_perg_idx` (`fk_pergunta`);

--
-- Índices de tabela `senhasusuarios`
--
ALTER TABLE `senhasusuarios`
  ADD PRIMARY KEY (`pk_senhausuario`),
  ADD KEY `fk_senhasusuarios_usuarios1_idx` (`fk_usuario`);

--
-- Índices de tabela `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`pk_slug`);

--
-- Índices de tabela `tiposplanos`
--
ALTER TABLE `tiposplanos`
  ADD PRIMARY KEY (`pk_tipoplano`),
  ADD KEY `fk_tiposplanos_usuarios1_idx` (`fk_usuario`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`pk_usuario`),
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
  MODIFY `pk_conteudo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `pk_disciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `gabaritos`
--
ALTER TABLE `gabaritos`
  MODIFY `pk_gabarito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `imagensconteudos`
--
ALTER TABLE `imagensconteudos`
  MODIFY `idimagenconteudo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `locaisdeorigem`
--
ALTER TABLE `locaisdeorigem`
  MODIFY `idlocaldeorigem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `perguntas`
--
ALTER TABLE `perguntas`
  MODIFY `pk_pergunta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `quizes`
--
ALTER TABLE `quizes`
  MODIFY `pk_quiz` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `respostas`
--
ALTER TABLE `respostas`
  MODIFY `pk_resposta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `senhasusuarios`
--
ALTER TABLE `senhasusuarios`
  MODIFY `pk_senhausuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tiposplanos`
--
ALTER TABLE `tiposplanos`
  MODIFY `pk_tipoplano` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `pk_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `ativos`
--
ALTER TABLE `ativos`
  ADD CONSTRAINT `fk_ativos_respostas1` FOREIGN KEY (`fk_resposta`) REFERENCES `respostas` (`pk_resposta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_img_perg` FOREIGN KEY (`fk_pergunta`) REFERENCES `perguntas` (`pk_pergunta`) ON DELETE CASCADE;

--
-- Restrições para tabelas `conteudos`
--
ALTER TABLE `conteudos`
  ADD CONSTRAINT `fk_conteudos_disciplinas1` FOREIGN KEY (`fk_disciplina`) REFERENCES `disciplinas` (`pk_disciplina`);

--
-- Restrições para tabelas `gabaritos`
--
ALTER TABLE `gabaritos`
  ADD CONSTRAINT `fk_gabaritos_perguntas1` FOREIGN KEY (`fk_pergunta`) REFERENCES `perguntas` (`pk_pergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gabaritos_quiz1` FOREIGN KEY (`fk_quiz`) REFERENCES `quizes` (`pk_quiz`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `imagensconteudos`
--
ALTER TABLE `imagensconteudos`
  ADD CONSTRAINT `fk_imagensconteudos_conteudos1` FOREIGN KEY (`fk_conteudo`) REFERENCES `conteudos` (`pk_conteudo`);

--
-- Restrições para tabelas `perguntas`
--
ALTER TABLE `perguntas`
  ADD CONSTRAINT `fk_perg_local` FOREIGN KEY (`fk_localdeorigem`) REFERENCES `locaisdeorigem` (`idlocaldeorigem`),
  ADD CONSTRAINT `fk_perguntas_disciplinas1` FOREIGN KEY (`fk_disciplina`) REFERENCES `disciplinas` (`pk_disciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `quizes`
--
ALTER TABLE `quizes`
  ADD CONSTRAINT `fk_quiz_acessousuario1` FOREIGN KEY (`fk_acessousuario`) REFERENCES `acessousuario` (`idacessousuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `respostas`
--
ALTER TABLE `respostas`
  ADD CONSTRAINT `fk_resp_perg` FOREIGN KEY (`fk_pergunta`) REFERENCES `perguntas` (`pk_pergunta`) ON DELETE CASCADE;

--
-- Restrições para tabelas `senhasusuarios`
--
ALTER TABLE `senhasusuarios`
  ADD CONSTRAINT `fk_senhasusuarios_usuarios` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`pk_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tiposplanos`
--
ALTER TABLE `tiposplanos`
  ADD CONSTRAINT `fk_tiposplanos_usuarios` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`pk_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

use jogomanu;
