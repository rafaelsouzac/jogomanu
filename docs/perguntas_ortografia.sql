-- Conteudo Avaliado: Ortografia na lingua portuguesa (Traz, Tras, Atras e Detras).

-- ============================================================================
-- PERGUNTA 1
-- ============================================================================
SET @enunciado = 'Conforme as regras de ortografia da língua portuguesa, qual das alternativas preenche corretamente as lacunas da frase a seguir: "Ela sempre ___ ótimas notícias quando vem nos visitar, mas prefere sentar na parte de ___ para não chamar atenção."?';
SET @temimagem = '0';
SET @fk_conteudo = 5;
SET @fk_pergunta = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'traz | trás';
SET @alternativa_b = 'trás | traz';
SET @alternativa_c = 'atrás | detrás';
SET @alternativa_d = 'traz | atrás';
SET @alternativa_e = 'trás | detrás';

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
-- PERGUNTA 2
-- ============================================================================
SET @enunciado = 'Analise o uso dos vocábulos e assinale a alternativa que preenche de forma correta e gramaticalmente adequada as lacunas do texto: "O menino correu para ___ da árvore, pois percebeu que o cão vinha logo ___ dele."';
SET @temimagem = '0';
SET @fk_conteudo = 5;
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'trás | detrás';
SET @alternativa_b = 'detrás | atrás';
SET @alternativa_c = 'atrás | trás';
SET @alternativa_d = 'traz | atrás';
SET @alternativa_e = 'detrás | traz';

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
-- PERGUNTA 3
-- ============================================================================
SET @enunciado = 'Observe a frase: "Não olhe para ___, mantenha seu foco no caminho e lembre-se de que cada esforço ___ bons resultados." Qual opção completa as lacunas com a ortografia correta?';
SET @temimagem = '0';
SET @fk_conteudo = 5;
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'traz | trás';
SET @alternativa_b = 'atrás | detrás';
SET @alternativa_c = 'trás | traz';
SET @alternativa_d = 'detrás | traz';
SET @alternativa_e = 'trás | atrás';

SET @status_a = 'I';
SET @status_b = 'I';
SET @status_c = 'C';
SET @status_d = 'I';
SET @status_e = 'I';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);

-- ============================================================================
-- PERGUNTA 4
-- ============================================================================
SET @enunciado = 'Assinale a alternativa em que o emprego do termo destacado preenche corretamente a frase: "Quem vem por ___ do muro não percebe a pessoa que ficou ___ do carro e o dinheiro que ele ___ no bolso."';
SET @temimagem = '0';
SET @fk_conteudo = 5;
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'detrás | atrás | traz';
SET @alternativa_b = 'atrás | detrás | trás';
SET @alternativa_c = 'trás | atrás | traz';
SET @alternativa_d = 'detrás | trás | trás';
SET @alternativa_e = 'traz | detrás | atrás';

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
-- PERGUNTA 5
-- ============================================================================
SET @enunciado = 'Indique a opção que completa corretamente a lacuna do enunciado a seguir: "A educação ___ benefícios duradouros para toda a sociedade, mesmo que os resultados fiquem ocultos por ___ das dificuldades iniciais."';
SET @temimagem = '0';
SET @fk_conteudo = 5;
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'trás | atrás';
SET @alternativa_b = 'traz | detrás';
SET @alternativa_c = 'traz | trás';
SET @alternativa_d = 'atrás | trás';
SET @alternativa_e = 'detrás | traz';

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
-- PERGUNTA 6
-- ============================================================================
SET @enunciado = 'Assinale a alternativa que apresenta a sequência correta para preencher as lacunas: "Ele olhou para ___ antes de atravessar a rua, pois sabia que o carro vinha logo ___ da van e isso sempre ___ perigo para os pedestres."';
SET @temimagem = '0';
SET @fk_conteudo = 5;
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'trás | detrás | traz';
SET @alternativa_b = 'traz | atrás | trás';
SET @alternativa_c = 'atrás | trás | traz';
SET @alternativa_d = 'detrás | atrás | trás';
SET @alternativa_e = 'trás | traz | detrás';

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
-- PERGUNTA 7
-- ============================================================================
SET @enunciado = 'Qual das opções completa corretamente a frase: "Ela deixou a bolsa de ___ do balcão e correu para ___ da fila, esperando que o atendente lhe trouxesse o documento que ___ a solução do problema."?';
SET @temimagem = '0';
SET @fk_conteudo = 5;
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'atrás | detrás | trás';
SET @alternativa_b = 'trás | atrás | traz';
SET @alternativa_c = 'detrás | atrás | traz';
SET @alternativa_d = 'traz | detrás | trás';
SET @alternativa_e = 'trás | detrás | atrás';

SET @status_a = 'I';
SET @status_b = 'I';
SET @status_c = 'C';
SET @status_d = 'I';
SET @status_e = 'I';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);

-- ============================================================================
-- PERGUNTA 8
-- ============================================================================
SET @enunciado = 'Assinale a opção em que todas as lacunas da frase estão preenchidas de forma ortograficamente correta: "O motorista que vem ___ do ônibus não percebeu a placa de sinalização que a tempestade ___ consigo."';
SET @temimagem = '0';
SET @fk_conteudo = 5;
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'atrás | traz';
SET @alternativa_b = 'trás | traz';
SET @alternativa_c = 'detrás | trás';
SET @alternativa_d = 'traz | atrás';
SET @alternativa_e = 'atrás | trás';

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
