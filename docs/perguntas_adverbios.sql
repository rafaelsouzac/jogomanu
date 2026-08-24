-- ============================================================================
-- SCRIPT DE INSERÇÃO DE QUESTÕES E RESPOSTAS
-- Conteúdo Avaliativo: Advérbios e Locuções Adverbiais
-- ============================================================================

-- ============================================================================
-- QUESTÃO 1
-- ============================================================================
-- Conteudo Avaliado: Classificação de advérbio de modo e tempo.

SET @enunciado = 'Na frase "O aluno respondeu à prova ___ e entregou o cartão ___", qual alternativa preenche as lacunas com advérbios de MODO e TEMPO, respectivamente?';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'calmamente ___ ontem';
SET @alternativa_b = 'ontem ___ rapidamente';
SET @alternativa_c = 'muito ___ lá';
SET @alternativa_d = 'talvez ___ hoje';
SET @alternativa_e = 'não ___ bastante';

SET @status_a = 'C';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ============================================================================
-- QUESTÃO 2
-- ============================================================================
-- Conteudo Avaliado: Identificação de locução adverbial de lugar.

SET @enunciado = 'Assinale a alternativa que contém uma locução adverbial que expressa ideia de LUGAR para preencher a lacuna: "O garoto deixou os livros ___ sobre a mesa."';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'às pressas';
SET @alternativa_b = 'à direita';
SET @alternativa_c = 'de tarde';
SET @alternativa_d = 'com certeza';
SET @alternativa_e = 'com frequência';

SET @status_a = 'I';
SET @status_b = 'C';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ============================================================================
-- QUESTÃO 3
-- ============================================================================
-- Conteudo Avaliado: Advérbios de intensidade e dúvida.

SET @enunciado = 'Na oração "Ele estudou ___ para o teste, mas ___ não consiga a nota máxima", as lacunas exigem, respectivamente, advérbios de INTENSIDADE e DÚVIDA. Qual opção está correta?';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'pouco ___ com certeza';
SET @alternativa_b = 'bastante ___ talvez';
SET @alternativa_c = 'sempre ___ amanhã';
SET @alternativa_d = 'devagar ___ provavelmente';
SET @alternativa_e = 'muito ___ jamais';

SET @status_a = 'I';
SET @status_b = 'C';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ============================================================================
-- QUESTÃO 4
-- ============================================================================
-- Conteudo Avaliado: Diferença entre advérbio e locução adverbial.

SET @enunciado = 'Qual das opções abaixo apresenta, respectivamente, um ADVÉRBIO de tempo e uma LOCUÇÃO ADVERBIAL de tempo para a frase: "___ nós sairemos ___"?';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Hoje ___ à noite';
SET @alternativa_b = 'De manhã ___ cedo';
SET @alternativa_c = 'Amanhã ___ cedo';
SET @alternativa_d = 'À tarde ___ hoje';
SET @alternativa_e = 'Brevemente ___ nunca';

SET @status_a = 'C';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ============================================================================
-- QUESTÃO 5
-- ============================================================================
-- Conteudo Avaliado: Identificação do valor circunstancial do advérbio.

SET @enunciado = 'Em "Os atletas correram ___ e chegaram ___ ao ponto de apoio", a palavra "demais" e a locução "em primeiro lugar" expressam ideias de:';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Modo e Tempo';
SET @alternativa_b = 'Intensidade e Ordem/Lugar';
SET @alternativa_c = 'Causa e Instrumento';
SET @alternativa_d = 'Afirmação e Modo';
SET @alternativa_e = 'Negação e Tempo';

SET @status_a = 'I';
SET @status_b = 'C';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ============================================================================
-- QUESTÃO 6
-- ============================================================================
-- Conteudo Avaliado: Locução adverbial de modo.

SET @enunciado = 'Selecione a alternativa que completa a frase com uma LOCUÇÃO ADVERBIAL DE MODO: "O professor explicou o conteúdo ___ para que todos entendessem."';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'em detalhes';
SET @alternativa_b = 'ontem à tarde';
SET @alternativa_c = 'no auditório';
SET @alternativa_d = 'com certeza';
SET @alternativa_e = 'por causa do teste';

SET @status_a = 'C';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ============================================================================
-- QUESTÃO 7
-- ============================================================================
-- Conteudo Avaliado: Advérbio de afirmação e negação.

SET @enunciado = 'Preencha as lacunas da frase "___ iremos ao passeio, mas ___ levaremos os animais de estimação" utilizando um advérbio de AFIRMAÇÃO e outro de NEGAÇÃO:';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Certamente ___ não';
SET @alternativa_b = 'Talvez ___ nunca';
SET @alternativa_c = 'Hoje ___ jamais';
SET @alternativa_d = 'Sim ___ provavelmente';
SET @alternativa_e = 'Realmente ___ com certeza';

SET @status_a = 'C';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ============================================================================
-- QUESTÃO 8
-- ============================================================================
-- Conteudo Avaliado: Reconhecimento de função modificadora do advérbio.

SET @enunciado = 'Assinale a opção em que a palavra destacada altera o sentido de um adjetivo, funcionando como advérbio de INTENSIDADE em: "A menina estava ___ calma durante a apresentação."';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'extremamente';
SET @alternativa_b = 'agora';
SET @alternativa_c = 'lá';
SET @alternativa_d = 'silenciosamente';
SET @alternativa_e = 'amanhã';

SET @status_a = 'C';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ============================================================================
-- QUESTÃO 9
-- ============================================================================
-- Conteudo Avaliado: Locução adverbial de companhia e meio.

SET @enunciado = 'Na frase "Ele viajou ___ e pagou a passagem ___", as locuções adverbiais adequadas para expressar COMPANHIA e MEIO/INSTRUMENTO são:';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'com a família ___ em cartão';
SET @alternativa_b = 'de carro ___ com pressa';
SET @alternativa_c = 'à noite ___ de férias';
SET @alternativa_d = 'por acaso ___ à vista';
SET @alternativa_e = 'com certeza ___ em dinheiro';

SET @status_a = 'C';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ============================================================================
-- QUESTÃO 10
-- ============================================================================
-- Conteudo Avaliado: Emprego e contexto de locuções adverbiais de tempo.

SET @enunciado = 'Qual alternativa contém uma locução adverbial que indica tempo para completar a frase: "___ os alunos entregaram os trabalhos finais"?';
SET @temimagem = '0';
SET @fk_conteudo = 9;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'De vez em quando';
SET @alternativa_b = 'Em silêncio';
SET @alternativa_c = 'Com certeza';
SET @alternativa_d = 'Ao lado';
SET @alternativa_e = 'Às pressas';

SET @status_a = 'C';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'I';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);