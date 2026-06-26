
SET @cad_pergunta_respostas = json_object(
    'enunciado', '',
    'temimagem', 0,
	'fk_disciplina', 01,
    'respostas', json_array(
		-- Cadas Objeto representa uma alternativa de resposta.
        -- A
		json_object(
			'fk_pergunta', @id_pergunta,
			'status_resposta', '', -- I para incorreta e C para correta.
			'temimagem', '', -- 0 Não contem imagem 1 contem.
			'enunciado_resposta', '' -- Limitado a 1020 caracteres
		),
        -- B
		json_object(
			'fk_pergunta', @id_pergunta,
			'status', '', 
			'temimagem', '', 
			'enunciado_resposta', '' 
		),
        -- C
		json_object(
			'fk_pergunta', @id_pergunta,
			'status', '',
			'temimagem', '', 
			'enunciado_resposta', '' 
		),
        -- D
		json_object(
			'fk_pergunta', @id_pergunta,
			'status', '', 
			'temimagem', '', -- 0 Não contem imagem 1 contem.
			'enunciado_resposta', '' -- Limitado a 1020 caracteres
		),
        -- E
		json_object(
			'fk_pergunta', @id_pergunta,
			'status', '', -- I para incorreta e C para correta.
			'temimagem', '', -- 0 Não contem imagem 1 contem.
			'enunciado_resposta', '' -- Limitado a 1020 caracteres
		)
	)
);