DELIMITER $$

CREATE PROCEDURE `sp_cadastrar_usuario_com_plano`(
    IN p_email VARCHAR(255),
    IN p_whatsapp VARCHAR(20),
    IN p_nome VARCHAR(255),
    IN p_verificado CHAR(1),
    IN p_tipo_plano VARCHAR(20), -- 'free' ou 'premium'
    IN p_status_plano CHAR(1),
    IN p_senha_usuario VARCHAR(255)
)
BEGIN
    DECLARE var_id_usuario INT;
    
    -- Declaração de segurança para falhas
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK; -- Desfaz tudo se der erro
    END;

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
        `usuario_idusuario`
    ) VALUES (
        SHA2(p_senha_usuario, 256), -- Adicionado o parâmetro de 256 bits aqui
        var_id_usuario
    );

    -- Confirma todas as operações no banco
    COMMIT;
END$$

DELIMITER ;
