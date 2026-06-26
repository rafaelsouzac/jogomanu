
-- seire = 01..09 || 21..23
-- grau = F > Fundamental || M > Médio
-- saída ultima pk_gerada é para utilizar na procedure usp_cadastro_conteudo()
SET @nome_disciplina = 'Matemática'; -- varchar(100)
SET @serie = '05'; -- char(2)
SET @grau = 'F'; -- char(1)
SET @ultima_pk_disciplina = 0;

call usp_cadastro_disciplina(@nome_disciplina, @serie, @grau, @ultima_pk_disciplina);

-- CADASTRO CONTEUDO DA DISCIPLINA -----------------------------
SET @titulo_conteudo = 'Algebra - Multiplos'; -- varchar(255)
SET @texto_conteudo = 'explicação multiplos'; -- text
SET @temimagem = ''; -- char(1)
SET @ultima_pk_conteudo = 1;

CALL usp_cadastro_conteudos(@titulo_conteudo, @texto_conteudo, @temimagem,  @ultima_pk_disciplina, @ultima_pk_conteudo);


-- CADASTRO IMAGEM CONTEUDO ----------------------------------------------------------------------------

SET @nome_imagem = '';

call usp_cadastar_imagem_conteudo(@nome_imagem, @ultima_pk_conteudo);

-- QUERY PARA SABER ID FK_DISCIPLINA A SER UTILIZADO NO JSON DAS PERGUNTAS E RESPOSTAS ------------------
SELECT d.pk_disciplina, d.nomedisciplina, d.grau, d.serie, 
       c.pk_conteudo, c.tituloconteudo 
FROM disciplinas d inner join conteudos c
on d.pk_disciplina = fk_disciplina
where c.pk_conteudo = 2;
