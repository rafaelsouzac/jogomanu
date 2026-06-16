-- MariaDB Synchronization
-- Generated: 2026-05-13 14:35
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Rafael

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- Remover chave estrangeira antiga
ALTER TABLE `jogomanu`.`acessousuario` 
DROP FOREIGN KEY `fk_sessao_plano`;

-- Alterar estrutura da tabela acesso
ALTER TABLE `jogomanu`.`acesso` 
DROP COLUMN `idusuario`,
ADD COLUMN `usuarios_idusuario` INT(11) NOT NULL AFTER `statusplano`,
CHANGE COLUMN `idacesso` `idtipoplano` INT(11) NOT NULL ,
CHANGE COLUMN `tipoplano` `plano` CHAR(1) NOT NULL COMMENT '0-isento, 1-pago' ,
ADD INDEX `fk_tiposplanos_usuarios1_idx` (`usuarios_idusuario` ASC);

-- Renomear tabela de forma compatível com MariaDB
RENAME TABLE `jogomanu`.`acesso` TO `jogomanu`.`tiposplanos`;

-- Alterar estrutura da tabela acessousuario
ALTER TABLE `jogomanu`.`acessousuario` 
DROP COLUMN `acesso_idacesso`,
ADD COLUMN `idsessao` VARCHAR(510) NOT NULL AFTER `usuarios_idusuario`,
DROP INDEX `fk_sessao_plano_idx`;

-- Ajustar tipos e colunas em disciplinas
ALTER TABLE `jogomanu`.`disciplinas` 
ADD COLUMN `serie` CHAR(2) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL AFTER `idmateria_pai`,
ADD COLUMN `grau` CHAR(1) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL COMMENT 'F = Ensino Fundamental\nM = Ensino Médio' AFTER `serie`,
CHANGE COLUMN `idmateria_pai` `idmateria_pai` INT(11) NULL DEFAULT NULL ;

-- Ajustar data/hora em gabaritosalunos
ALTER TABLE `jogomanu`.`gabaritosalunos` 
CHANGE COLUMN `data_resposta` `horaresposta` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ;

-- Remover tabelas antigas se existirem
DROP TABLE IF EXISTS `jogomanu`.`slugs` ;
DROP TABLE IF EXISTS `jogomanu`.`partespaginas` ;

-- Adicionar chave estrangeira na tabela renomeada
ALTER TABLE `jogomanu`.`tiposplanos` 
ADD CONSTRAINT `fk_tiposplanos_usuarios1`
  FOREIGN KEY (`usuarios_idusuario`)
  REFERENCES `jogomanu`.`usuarios` (`idusuario`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
