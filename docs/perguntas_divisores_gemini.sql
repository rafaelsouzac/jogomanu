-- ============================================================================
-- SCRIPT DE INSERÇÃO DE PERGUNTAS E RESPOSTAS - BANCO DE DADOS
-- Tema: Divisores
-- Quantidade: 10 Perguntas (com 5 alternativas cada)
-- Encoding: UTF-8 (utf8mb4)
-- ============================================================================

-- PERGUNTA 1
-- Conteudo Avaliado: Divisores de um número natural
SET @enunciado = 'Quais dos números abaixo são todos divisores de 36?';
SET @temimagem = '0';
SET @fk_conteudo = 0; -- Ajuste a fk_conteudo conforme necessário
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '1, 2, 3, 4, 6, 9, 12, 18 e 36.';
SET @alternativa_b = '1, 2, 3, 5, 6, 9, 12 e 36.';
SET @alternativa_c = '2, 4, 6, 8, 10, 12, 18 e 36.';
SET @alternativa_d = '1, 3, 6, 9, 15, 18 e 36.';
SET @alternativa_e = '0, 1, 2, 3, 4, 6, 9 e 36.';

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


-- PERGUNTA 2
-- Conteudo Avaliado: Identificação de divisores e propriedades
SET @enunciado = 'Qual dos seguintes números NÃO é um divisor de 120?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '15';
SET @alternativa_b = '24';
SET @alternativa_c = '18';
SET @alternativa_d = '30';
SET @alternativa_e = '40';

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


-- PERGUNTA 3
-- Conteudo Avaliado: Quantidade total de divisores
SET @enunciado = 'Quantos divisores naturais possui o número 20?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '4 divisores.';
SET @alternativa_b = '5 divisores.';
SET @alternativa_c = '6 divisores.';
SET @alternativa_d = '8 divisores.';
SET @alternativa_e = '10 divisores.';

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


-- PERGUNTA 4
-- Conteudo Avaliado: Maior Divisor Comum (MDC)
SET @enunciado = 'Qual é o maior divisor comum entre os números 24 e 36?';
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

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- PERGUNTA 5
-- Conteudo Avaliado: Propriedade conceitual dos divisores
SET @enunciado = 'Sobre os divisores de um número natural maior que zero, é correto afirmar que:';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'O número 0 é divisor de todos os números naturais.';
SET @alternativa_b = 'O número 1 é divisor de qualquer número natural.';
SET @alternativa_c = 'O conjunto dos divisores de um número é infinito.';
SET @alternativa_d = 'Todo número ímpar possui apenas divisores ímpares e pares.';
SET @alternativa_e = 'O maior divisor de um número é sempre o dobro dele mesmo.';

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


-- PERGUNTA 6
-- Conteudo Avaliado: Resolução de problemas práticos usando divisores
SET @enunciado = 'Uma professora deseja distribuir 45 canetas igualmente entre seus alunos, sem sobra de canetas. Quantos alunos ela PODE ter nessa turma?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '6 alunos.';
SET @alternativa_b = '8 alunos.';
SET @alternativa_c = '9 alunos.';
SET @alternativa_d = '10 alunos.';
SET @alternativa_e = '12 alunos.';

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


-- PERGUNTA 7
-- Conteudo Avaliado: Relação entre números primos e divisores
SET @enunciado = 'Qual das opções abaixo apresenta um número que possui exatamente dois divisores distintos (o 1 e ele mesmo)?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '15';
SET @alternativa_b = '21';
SET @alternativa_c = '27';
SET @alternativa_d = '29';
SET @alternativa_e = '33';

SET @status_a = 'I';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'C';
SET @status_e = 'I';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- PERGUNTA 8
-- Conteudo Avaliado: Divisores comuns
SET @enunciado = 'Quais são os divisores comuns entre os números 18 e 30?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '1, 2, 3 e 6.';
SET @alternativa_b = '1, 3, 5 e 6.';
SET @alternativa_c = '2, 3, 6 e 9.';
SET @alternativa_d = '1, 2, 6 e 10.';
SET @alternativa_e = '3, 6, 9 e 15.';

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


-- PERGUNTA 9
-- Conteudo Avaliado: Análise e dedução de divisores
SET @enunciado = 'Se o número 8 é divisor de um número natural N, qual outro número TAMBÉM é garantidamente divisor de N?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '3';
SET @alternativa_b = '4';
SET @alternativa_c = '6';
SET @alternativa_d = '12';
SET @alternativa_e = '16';

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


-- PERGUNTA 10
-- Conteudo Avaliado: Soma dos divisores de um número
SET @enunciado = 'Qual é o resultado da soma de todos os divisores naturais do número 12?';
SET @temimagem = '0';
SET @fk_conteudo = 0;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '16';
SET @alternativa_b = '21';
SET @alternativa_c = '28';
SET @alternativa_d = '30';
SET @alternativa_e = '36';

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