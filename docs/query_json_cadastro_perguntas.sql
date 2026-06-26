SET @cad_pergunta_respostas = json_object(
    'enunciado', 'Quais das alternativas tem somente multiplos de 9',
    'temimagem', 0,
	'fk_disciplina', 6,
    'respostas', json_array(
		-- Cadas Objeto representa uma alternativa de resposta.
        -- A
		json_object(
			'fk_pergunta', @id_pergunta,
			'status_resposta', 'I', -- I para incorreta e C para correta.
			'temimagem', '0', -- 0 Não contem imagem 1 contem.
			'enunciado_resposta', '0, 9, 18, 82' -- Limitado a 1020 caracteres se tem imagem o endereçoda imagem substitui o enunciado
		),
        -- B
		json_object(
			'fk_pergunta', @id_pergunta,
			'status_resposta', 'I', -- I para incorreta e C para correta.
			'temimagem', '0', -- 0 Não contem imagem 1 contem.
			'enunciado_resposta', '9, 18, 27, 91' -- Limitado a 1020 caracteres se tem imagem o endereçoda imagem substitui o enunciado
		),
        -- C
		json_object(
			'fk_pergunta', @id_pergunta,
			'status_resposta', 'C', -- I para incorreta e C para correta.
			'temimagem', '0', -- 0 Não contem imagem 1 contem.
			'enunciado_resposta', '9, 36, 45, 81' -- Limitado a 1020 caracteres se tem imagem o endereçoda imagem substitui o enunciado
		),
        -- D
		json_object(
			'fk_pergunta', @id_pergunta,
			'status_resposta', 'I', -- I para incorreta e C para correta.
			'temimagem', '0', -- 0 Não contem imagem 1 contem.
			'enunciado_resposta', '9, 33, 55, 99' -- Limitado a 1020 caracteres se tem imagem o endereçoda imagem substitui o enunciado
		),
        -- E
		json_object(
			'fk_pergunta', @id_pergunta,
			'status_resposta', 'I', -- I para incorreta e C para correta.
			'temimagem', '0', -- 0 Não contem imagem 1 contem.
			'enunciado_resposta', '0, 99, 177, 273' -- Limitado a 1020 caracteres se tem imagem o endereçoda imagem substitui o enunciado
		)
	)
);


 CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

