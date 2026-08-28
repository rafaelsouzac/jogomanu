-- =====================================================================
-- Script gerado conforme MATEMATICA_DIVISORES.MD
-- Tópico: Divisores (Matemática)
-- Total de perguntas: 10
-- Codificação: UTF-8 (utf8mb4, sem BOM)
-- =====================================================================

-- ######################################################################
-- PERGUNTA 1
-- ######################################################################
--Conteudo Avaliado: Divisores

SET @enunciado = 'Quais são todos os divisores de 12?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '1, 2, 3, 4, 6, 12.';
SET @alternativa_b = '1, 2, 3, 4, 5, 12.';
SET @alternativa_c = '2, 3, 4, 6, 8, 12.';
SET @alternativa_d = '1, 2, 4, 6, 10, 12.';
SET @alternativa_e = '1, 3, 4, 6, 9, 12.';

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


-- ######################################################################
-- PERGUNTA 2
-- ######################################################################
--Conteudo Avaliado: Divisores

SET @enunciado = 'Qual dos números abaixo NÃO é divisor de 36?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '9';
SET @alternativa_b = '12';
SET @alternativa_c = '8';
SET @alternativa_d = '6';
SET @alternativa_e = '18';

SET @status_a = 'I';
SET @status_b = 'I';
SET @status_c = 'C';
SET @status_d = 'I';
SET @status_e = 'I';

SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ######################################################################
-- PERGUNTA 3
-- ######################################################################
--Conteudo Avaliado: Divisores

SET @enunciado = 'Quantos divisores positivos tem o número 28?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '4';
SET @alternativa_b = '5';
SET @alternativa_c = '6';
SET @alternativa_d = '7';
SET @alternativa_e = '8';

SET @status_a = 'I';
SET @status_b = 'I';
SET @status_c = 'C';
SET @status_d = 'I';
SET @status_e = 'I';

SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ######################################################################
-- PERGUNTA 4
-- ######################################################################
--Conteudo Avaliado: Divisores

SET @enunciado = 'Qual é o maior divisor comum (MDC) entre 24 e 36?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '6';
SET @alternativa_b = '8';
SET @alternativa_c = '12';
SET @alternativa_d = '18';
SET @alternativa_e = '24';

SET @status_a = 'I';
SET @status_b = 'I';
SET @status_c = 'C';
SET @status_d = 'I';
SET @status_e = 'I';

SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ######################################################################
-- PERGUNTA 5
-- ######################################################################
--Conteudo Avaliado: Divisores

SET @enunciado = 'Um número natural maior que 1, que possui exatamente dois divisores positivos (1 e ele mesmo), é chamado de:';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Número composto';
SET @alternativa_b = 'Número primo';
SET @alternativa_c = 'Número perfeito';
SET @alternativa_d = 'Número par';
SET @alternativa_e = 'Número quadrado perfeito';

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


-- ######################################################################
-- PERGUNTA 6
-- ######################################################################
--Conteudo Avaliado: Divisores

SET @enunciado = 'Qual conjunto contém apenas divisores de 100?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '1, 2, 4, 5, 10, 20, 25, 50, 100.';
SET @alternativa_b = '1, 2, 4, 6, 10, 20, 25, 50, 100.';
SET @alternativa_c = '1, 2, 5, 8, 10, 20, 25, 50, 100.';
SET @alternativa_d = '1, 3, 4, 5, 10, 20, 25, 50, 100.';
SET @alternativa_e = '1, 2, 4, 5, 10, 15, 25, 50, 100.';

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


-- ######################################################################
-- PERGUNTA 7
-- ######################################################################
--Conteudo Avaliado: Divisores

SET @enunciado = 'Se um número é divisível por 2 e por 3 ao mesmo tempo, ele é necessariamente divisível por:';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '5';
SET @alternativa_b = '6';
SET @alternativa_c = '7';
SET @alternativa_d = '9';
SET @alternativa_e = '12';

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


-- ######################################################################
-- PERGUNTA 8
-- ######################################################################
--Conteudo Avaliado: Divisores

SET @enunciado = 'Qual dos números abaixo é divisor de 45?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '6';
SET @alternativa_b = '7';
SET @alternativa_c = '9';
SET @alternativa_d = '8';
SET @alternativa_e = '10';

SET @status_a = 'I';
SET @status_b = 'I';
SET @status_c = 'C';
SET @status_d = 'I';
SET @status_e = 'I';

SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- ######################################################################
-- PERGUNTA 9
-- ######################################################################
--Conteudo Avaliado: Divisores

SET @enunciado = 'O número 7 é divisor de qual dos números a seguir?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '54';
SET @alternativa_b = '49';
SET @alternativa_c = '60';
SET @alternativa_d = '65';
SET @alternativa_e = '72';

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


-- ######################################################################
-- PERGUNTA 10
-- ######################################################################
--Conteudo Avaliado: Divisores

SET @enunciado = 'Qual é a soma de todos os divisores positivos do número 6?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '10';
SET @alternativa_b = '11';
SET @alternativa_c = '12';
SET @alternativa_d = '13';
SET @alternativa_e = '6';

SET @status_a = 'I';
SET @status_b = 'I';
SET @status_c = 'C';
SET @status_d = 'I';
SET @status_e = 'I';

SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);