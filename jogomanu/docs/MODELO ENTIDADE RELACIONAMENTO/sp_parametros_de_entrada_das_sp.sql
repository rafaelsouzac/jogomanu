DELIMITER $$

CREATE PROCEDURE sp_parametros_procedure(
	IN p_nome_procedure varchar(255)
)
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