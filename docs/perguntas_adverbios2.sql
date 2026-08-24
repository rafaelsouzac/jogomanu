-- =========================================================
-- ATENCAO: Ajuste o valor de @fk_conteudo em TODAS as perguntas
-- abaixo antes de executar. Usado 4 apenas como placeholder,
-- igual ao valor do exemplo fornecido.
-- =========================================================

-- ================= PERGUNTA 1 =================
-- Conteudo Avaliado: Adverbios e Locucao Adverbial

SET @enunciado = 'Na frase "Ele chegou ___ na reuniao", qual advérbio de tempo completa corretamente o sentido, indicando que ele chegou antes do horário previsto?';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'cedo';
SET @alternativa_b = 'tarde';
SET @alternativa_c = 'ontem';
SET @alternativa_d = 'depois';
SET @alternativa_e = 'nunca';

SET @status_a = 'C';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ================= PERGUNTA 2 =================
-- Conteudo Avaliado: Adverbios e Locucao Adverbial

SET @enunciado = 'Na frase "Ela ___ sabe se virá à festa amanhã", qual advérbio de dúvida se encaixa corretamente?';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'certamente';
SET @alternativa_b = 'talvez';
SET @alternativa_c = 'sim';
SET @alternativa_d = 'muito';
SET @alternativa_e = 'aqui';

SET @status_a = 'I';
SET @status_b = 'C';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ================= PERGUNTA 3 =================
-- Conteudo Avaliado: Adverbios e Locucao Adverbial

SET @enunciado = 'Assinale a alternativa que apresenta uma locução adverbial de tempo:';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'de vez em quando';
SET @alternativa_b = 'às pressas';
SET @alternativa_c = 'à toa';
SET @alternativa_d = 'em frente';
SET @alternativa_e = 'sem dúvida';

SET @status_a = 'C';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ================= PERGUNTA 4 =================
-- Conteudo Avaliado: Adverbios e Locucao Adverbial

SET @enunciado = 'Na frase "Ele ___ mente para os amigos", qual advérbio de negação completa corretamente a frase?';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'sempre';
SET @alternativa_b = 'nunca';
SET @alternativa_c = 'talvez';
SET @alternativa_d = 'bem';
SET @alternativa_e = 'aqui';

SET @status_a = 'I';
SET @status_b = 'C';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ================= PERGUNTA 5 =================
-- Conteudo Avaliado: Adverbios e Locucao Adverbial

SET @enunciado = 'Na frase "O filme é ___ interessante", o advérbio que preenche a lacuna indica intensidade. Assinale-o:';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'muito';
SET @alternativa_b = 'aqui';
SET @alternativa_c = 'ontem';
SET @alternativa_d = 'não';
SET @alternativa_e = 'assim';

SET @status_a = 'C';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ================= PERGUNTA 6 =================
-- Conteudo Avaliado: Adverbios e Locucao Adverbial

SET @enunciado = 'Qual das alternativas abaixo apresenta um advérbio de afirmação?';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'jamais';
SET @alternativa_b = 'certamente';
SET @alternativa_c = 'pouco';
SET @alternativa_d = 'devagar';
SET @alternativa_e = 'próximo';

SET @status_a = 'I';
SET @status_b = 'C';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ================= PERGUNTA 7 =================
-- Conteudo Avaliado: Adverbios e Locucao Adverbial

SET @enunciado = 'Na frase "Coloque os livros ___", qual advérbio de lugar completa corretamente, indicando um local próximo de quem fala?';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'aqui';
SET @alternativa_b = 'talvez';
SET @alternativa_c = 'sempre';
SET @alternativa_d = 'muito';
SET @alternativa_e = 'assim';

SET @status_a = 'C';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ================= PERGUNTA 8 =================
-- Conteudo Avaliado: Adverbios e Locucao Adverbial

SET @enunciado = 'Na frase "Ele fala ___", qual advérbio de modo indica a maneira correta e cuidadosa de falar?';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'bem';
SET @alternativa_b = 'nunca';
SET @alternativa_c = 'ali';
SET @alternativa_d = 'talvez';
SET @alternativa_e = 'demais';

SET @status_a = 'C';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ================= PERGUNTA 9 =================
-- Conteudo Avaliado: Adverbios e Locucao Adverbial

SET @enunciado = 'Assinale a alternativa que apresenta uma locução adverbial de modo:';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'às claras';
SET @alternativa_b = 'de manhã';
SET @alternativa_c = 'ao longe';
SET @alternativa_d = 'de vez em quando';
SET @alternativa_e = 'em breve';

SET @status_a = 'C';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ================= PERGUNTA 10 =================
-- Conteudo Avaliado: Adverbios e Locucao Adverbial

SET @enunciado = 'Na frase "Ele corre rápido", a palavra "rápido" é um advérbio de modo. Isso ocorre porque:';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'está modificando o verbo "correr" e permanece invariável';
SET @alternativa_b = 'está concordando em gênero e número com "Ele"';
SET @alternativa_c = 'é um substantivo que qualifica a corrida';
SET @alternativa_d = 'é uma conjunção que liga duas orações';
SET @alternativa_e = 'é uma preposição que indica lugar';

SET @status_a = 'C';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);
