SELECT
	g.fk_quiz,
    g.fk_pergunta,
    p.enunciado,
	CASE WHEN UPPER(r.status_resposta) = "C" AND
    g.fk_pergunta = r.fk_pergunta THEN "1"
    ELSE "0" END AS "CORRECAO"
FROM gabaritos g LEFT JOIN
	respostas r ON
	g.fk_resposta = r.pk_resposta
INNER JOIN perguntas p ON
	g.fk_pergunta = p.pk_pergunta
WHERE g.fk_quiz = 103