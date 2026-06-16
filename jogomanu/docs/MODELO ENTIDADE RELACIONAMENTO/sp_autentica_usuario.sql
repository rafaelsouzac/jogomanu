
/*
DELIMITER $$

CREATE PROCEDURE sp_autenticar_usuario(
    IN p_emailusuario VARCHAR(255),
    IN p_senha VARCHAR(255)
)
BEGIN
    -- Verifica se o par e-mail/senha é válido
    IF EXISTS (
        SELECT 1 
        FROM `usuarios` u
        INNER JOIN `senhasusuarios` s ON u.`idusuario` = s.`usuarios_idusuario`
        WHERE u.`emailusuario` = p_emailusuario AND s.`senhacripto` = SHA2(p_senha, 256)
    ) THEN
        -- SE VÁLIDO: Retorna os dados reais do usuário
        SELECT 
            u.`idusuario` AS `idusuario`,
            u.`identificacao` AS `identificacao`,
            u.`emailverificado` AS `verificacao`,
            t.`plano` AS `plano`,
            t.`statusplano` AS `statusplano`
        FROM `usuarios` u
        INNER JOIN `tiposplanos` t ON u.`idusuario` = t.`usuarios_idusuario`
        INNER JOIN `senhasusuarios` s ON u.`idusuario` = s.`usuarios_idusuario`
        WHERE u.`emailusuario` = p_emailusuario AND s.`senhacripto` = SHA2(p_senha, 256);
    ELSE
        -- SE INVÁLIDO: Retorna um registro com indicadores de erro
        SELECT 
            0 AS `idusuario`, 
            'Usuário ou senha inválidos' AS `identificacao`, 
            '0' AS `verificacao`, 
            'Nenhum' AS `plano`, 
            '0' AS `statusplano`;
    END IF;
END$$

DELIMITER ;
*/

