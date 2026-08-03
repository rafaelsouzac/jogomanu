select * from disciplinas;
select * from conteudos;

-- (tituloconteudo, textoconteudo, temimagem, fk_disciplina, @saida)
-- ( varchar(255) ,     TEXT,        Char(1),    INT,        @)

-- 6	Matemática
-- 7	Português
-- 8	História
-- 10	Ciências
-- 11	Artes

call usp_cadastro_conteudos('Livro 2 - Ortografia', 
							'Interpretação, Pontuação e Ortografia - Pág. 21, 22, 23 e 24', 
                            '0', 7, @saida);
select @saida;