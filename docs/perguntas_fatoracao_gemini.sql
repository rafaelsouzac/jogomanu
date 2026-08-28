-- Conteudo Avaliado: Fatoração (5º Ano do Ensino Fundamental)
-- Quantidade: 10 Perguntas
-- Foco: Decomposição em fatores primos, divisores, múltiplos e fatoração numérica simples.

-- ============================================================================
-- PERGUNTA 1
-- ============================================================================
-- Conteudo Avaliado: Fatoração - Decomposição do número 12 em fatores primos
SET @enunciado = 'Qual é a fatoração completa em fatores primos do número 12?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '2 x 6';
SET @alternativa_b = '3 x 4';
SET @alternativa_c = '2 x 2 x 3';
SET @alternativa_d = '2 x 3 x 3';
SET @alternativa_e = '1 x 12';

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
-- PERGUNTA 2
-- ============================================================================
-- Conteudo Avaliado: Fatoração - Identificação de Números Primos
SET @enunciado = 'Para fatorar um número em fatores primos, usamos apenas números primos. Qual dos conjuntos abaixo contém apenas números primos?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '2, 3, 5, 7';
SET @alternativa_b = '2, 4, 6, 8';
SET @alternativa_c = '1, 3, 9, 12';
SET @alternativa_d = '3, 5, 9, 11';
SET @alternativa_e = '5, 10, 15, 20';

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
-- PERGUNTA 3
-- ============================================================================
-- Conteudo Avaliado: Fatoração - Decomposição do número 20
SET @enunciado = 'Fatorar o número 20 em fatores primos, encontramos a seguinte multiplicação:';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '2 x 10';
SET @alternativa_b = '4 x 5';
SET @alternativa_c = '2 x 2 x 5';
SET @alternativa_d = '2 x 5 x 5';
SET @alternativa_e = '2 x 3 x 5';

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
-- Conteudo Avaliado: Fatoração - Reconstrução do número a partir dos fatores
SET @enunciado = 'Um aluno fatorou um número e encontrou o resultado 2, 3, 5. Qual foi o número que ele fatorou?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '10';
SET @alternativa_b = '25';
SET @alternativa_c = '30';
SET @alternativa_d = '15';
SET @alternativa_e = '60';

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
-- PERGUNTA 5
-- ============================================================================
-- Conteudo Avaliado: Fatoração - Decomposição usando potências
SET @enunciado = 'A fatoração em fatores primos do número 18 é escrita como:';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '2 x 3 x 2';
SET @alternativa_b = '2 x 3 x 3';
SET @alternativa_c = '2 x 6';
SET @alternativa_d = '3 x 3 x 3';
SET @alternativa_e = '2 x 2 x 3';

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
-- Conteudo Avaliado: Fatoração - Decomposição do número 36
SET @enunciado = 'Qual das alternativas apresenta a fatoração em fatores primos do número 36?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '2 x 2 x 3 x 3';
SET @alternativa_b = '4 x 9';
SET @alternativa_c = '2 x 3 x 6';
SET @alternativa_d = '2 x 2 x 9';
SET @alternativa_e = '3 x 3 x 4';

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
-- Conteudo Avaliado: Fatoração - Primeiro passo da divisão sucessiva
SET @enunciado = 'Para fatorar o número 50 pelo método das divisões sucessivas, qual é o menor número primo pelo qual devemos começar a divisão?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '5';
SET @alternativa_b = '2';
SET @alternativa_c = '3';
SET @alternativa_d = '10';
SET @alternativa_e = '1';

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
-- PERGUNTA 8
-- ============================================================================
-- Conteudo Avaliado: Fatoração - Decomposição do número 24
SET @enunciado = 'Fatorando o número 24 em fatores primos, encontramos:';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '2 x 2 x 2 x 3';
SET @alternativa_b = '2 x 3 x 4';
SET @alternativa_c = '3 x 8';
SET @alternativa_d = '2 x 2 x 6';
SET @alternativa_e = '2 x 12';

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
-- PERGUNTA 9
-- ============================================================================
-- Conteudo Avaliado: Fatoração - Fator faltante
SET @enunciado = 'A fatoração incompleta do número 45 é representada por 3 X ?. Qual(is) número(s) primo substitui a interrogação corretamente?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '2 x 5';
SET @alternativa_b = '3 x 3';
SET @alternativa_c = '3 x 5';
SET @alternativa_d = '2 x 7';
SET @alternativa_e = '9 x 2';

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
-- PERGUNTA 10
-- ============================================================================
-- Conteudo Avaliado: Fatoração - Decomposição do número 100
SET @enunciado = 'Qual é a fatoração do número 100 expressa em fatores primos?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '10 x 10';
SET @alternativa_b = '2 x 2 x 5 x 5';
SET @alternativa_c = '4 x 25';
SET @alternativa_d = '2 x 50';
SET @alternativa_e = '2 x 5 x 10';

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