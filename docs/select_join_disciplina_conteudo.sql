-- QUERY PARA SABER ID FK_DISCIPLINA A SER UTILIZADO NO JSON DAS PERGUNTAS E RESPOSTAS ------------------
SELECT d.pk_disciplina, 
	   d.nomedisciplina,
	   c.tituloconteudo,
	   d.grau, d.serie, 
       c.pk_conteudo  
FROM disciplinas d inner join conteudos c
on d.pk_disciplina = fk_disciplina
where c.pk_conteudo = 2;
