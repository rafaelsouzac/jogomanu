#USANDO JSON PARA CADASTRO DE PERGUNTAS E RESPOSTAS
#UTILIZANDO AS FUNÇÕES NATIVAS DO MARIADB PARA ESTE PROPOSITO

SET @cad_disciplinas = json_object(
	'pergunta', json_object(
		'enunciado', '', 
        'localorigin', '',
        'temimagem', '', 
        'fk_disciplina', ''
    ),
    'resposta', json_array(
		-- Cadas Objeto representa uma alternativa de resposta.
        -- A
		json_object(
			'fk_pergunta',0,
			'status', '', -- I para incorreta e C para correta.
			'temimagem', '', -- 0 Não contem imagem 1 contem.
			'enunciado_resposta', '' -- Limitado a 1020 caracteres
		),
        -- B
		json_object(
			'fk_pergunta',0,
			'status', '', 
			'temimagem', '', 
			'enunciado_resposta', '' 
		),
        -- C
		json_object(
			'fk_pergunta',0,
			'status', '',
			'temimagem', '', 
			'enunciado_resposta', '' 
		),
        -- D
		json_object(
			'fk_pergunta',0,
			'status', '', 
			'temimagem', '', -- 0 Não contem imagem 1 contem.
			'enunciado_resposta', '' -- Limitado a 1020 caracteres
		),
        -- E
		json_object(
			'fk_pergunta',0,
			'status', '', -- I para incorreta e C para correta.
			'temimagem', '', -- 0 Não contem imagem 1 contem.
			'enunciado_resposta', '' -- Limitado a 1020 caracteres
		)
	)
);