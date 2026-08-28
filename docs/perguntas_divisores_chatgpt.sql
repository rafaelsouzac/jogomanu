-- Conteudo Avaliado: Divisores.
-- Arquivo gerado em UTF-8 sem BOM.

-- Pergunta 1
SET @enuciado = 'Qual dos números abaixo é divisor de 84?';
SET @temimagem = '0';
SET @fk_conteudo = 0;  -- Substituir pelo valor correto da fk_conteudo
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '5';
SET @alternativa_b = '6';
SET @alternativa_c = '10';
SET @alternativa_d = '16';
SET @alternativa_e = '25';

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

-- ----------------------------------------------------------------------

-- Pergunta 2
SET @enuciado = 'Qual conjunto contém somente divisores de 60?';
SET @temimagem = '0';
SET @fk_conteudo = 0;  -- Substituir pelo valor correto da fk_conteudo
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '2, 3, 5, 10';
SET @alternativa_b = '4, 7, 12, 15';
SET @alternativa_c = '3, 6, 8, 20';
SET @alternativa_d = '5, 9, 10, 30';
SET @alternativa_e = '2, 4, 11, 15';

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

-- ----------------------------------------------------------------------

-- Pergunta 3
SET @enuciado = 'Um número é divisor de 72 quando a divisão de 72 por esse número é exata. Qual alternativa apresenta um divisor de 72?';
SET @temimagem = '0';
SET @fk_conteudo = 0;  -- Substituir pelo valor correto da fk_conteudo
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '5';
SET @alternativa_b = '7';
SET @alternativa_c = '8';
SET @alternativa_d = '11';
SET @alternativa_e = '13';

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

-- ----------------------------------------------------------------------

-- Pergunta 4
SET @enuciado = 'Qual alternativa apresenta todos os divisores positivos de 18?';
SET @temimagem = '0';
SET @fk_conteudo = 0;  -- Substituir pelo valor correto da fk_conteudo
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '1, 2, 3, 6, 9, 18';
SET @alternativa_b = '1, 2, 4, 6, 9, 18';
SET @alternativa_c = '1, 3, 5, 6, 9, 18';
SET @alternativa_d = '2, 3, 6, 8, 9, 18';
SET @alternativa_e = '1, 2, 3, 6, 8, 18';

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

-- ----------------------------------------------------------------------

-- Pergunta 5
SET @enuciado = 'Entre os números 4, 6, 8, 9 e 12, qual é o único que NÃO é divisor de 36?';
SET @temimagem = '0';
SET @fk_conteudo = 0;  -- Substituir pelo valor correto da fk_conteudo
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '4';
SET @alternativa_b = '6';
SET @alternativa_c = '8';
SET @alternativa_d = '9';
SET @alternativa_e = '12';

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

-- ----------------------------------------------------------------------

-- Pergunta 6
SET @enuciado = 'Qual número possui 1, 2, 4, 7, 14 e 28 como seus divisores positivos?';
SET @temimagem = '0';
SET @fk_conteudo = 0;  -- Substituir pelo valor correto da fk_conteudo
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '24';
SET @alternativa_b = '26';
SET @alternativa_c = '28';
SET @alternativa_d = '32';
SET @alternativa_e = '42';

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

-- ----------------------------------------------------------------------

-- Pergunta 7
SET @enuciado = 'Se 96 é dividido por 12, qual afirmação está correta sobre o resultado dessa divisão?';
SET @temimagem = '0';
SET @fk_conteudo = 0;  -- Substituir pelo valor correto da fk_conteudo
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '12 não é divisor de 96 porque sobra 4.';
SET @alternativa_b = '12 é divisor de 96 porque a divisão é exata.';
SET @alternativa_c = '12 é divisor de 96 somente quando há resto.';
SET @alternativa_d = '12 não pode ser divisor de um número par.';
SET @alternativa_e = '12 é divisor de 96 porque 96 é menor que 12.';

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

-- ----------------------------------------------------------------------

-- Pergunta 8
SET @enuciado = 'Qual alternativa apresenta somente números que são divisores de 48?';
SET @temimagem = '0';
SET @fk_conteudo = 0;  -- Substituir pelo valor correto da fk_conteudo
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '2, 3, 4, 6, 8';
SET @alternativa_b = '2, 5, 6, 8, 12';
SET @alternativa_c = '3, 4, 7, 8, 16';
SET @alternativa_d = '4, 6, 9, 12, 24';
SET @alternativa_e = '2, 3, 5, 8, 24';

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

-- ----------------------------------------------------------------------

-- Pergunta 9
SET @enuciado = 'Qual é o maior divisor positivo de 45?';
SET @temimagem = '0';
SET @fk_conteudo = 0;  -- Substituir pelo valor correto da fk_conteudo
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '5';
SET @alternativa_b = '9';
SET @alternativa_c = '15';
SET @alternativa_d = '45';
SET @alternativa_e = '90';

SET @status_a = 'I';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'C';
SET @status_e = 'I';
SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);

-- ----------------------------------------------------------------------

-- Pergunta 10
SET @enuciado = 'Qual alternativa apresenta uma afirmação correta sobre os divisores de um número inteiro positivo?';
SET @temimagem = '0';
SET @fk_conteudo = 0;  -- Substituir pelo valor correto da fk_conteudo
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Um divisor sempre é maior que o número que ele divide.';
SET @alternativa_b = 'A divisão pelo divisor sempre apresenta resto diferente de zero.';
SET @alternativa_c = 'O próprio número é um de seus divisores positivos.';
SET @alternativa_d = 'Zero é divisor de todo número inteiro positivo.';
SET @alternativa_e = 'Todo número inteiro positivo possui exatamente dois divisores positivos.';

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

-- ----------------------------------------------------------------------
