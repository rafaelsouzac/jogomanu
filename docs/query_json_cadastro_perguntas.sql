-- procedimento para inserir disciplina >> usp_cadastro_disciplinas(parametros) OOOKKKK
-- procedimento para inserir conteúdo vinculado a disciplina >> usp_cadastro_conteudos(@id_disciplina, parametros) OOOKKKK
-- procedimento para inserir pergunta vinculada a disciplina >> usp_cadastro_perguntas(@id_disciplina, @id_origem, parametros)perguntas
-- procedimento para inserir respostas vinculada a pergunta >> usp_cadastro_respostas(@id_pergunta, json)




SET @cad_respostas = json_object(
    'resposta', json_array(
		-- Cadas Objeto representa uma alternativa de resposta.
        -- A
		json_object(
			'fk_pergunta', @id_pergunta,
			'status', '', -- I para incorreta e C para correta.
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