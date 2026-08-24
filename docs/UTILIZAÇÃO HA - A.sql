-- Conteudo Avaliado: Utilização do HÁ (verbo) e do A (artigo).

/* PERGUNTA 11 */

SET @enuciado = 'Complete corretamente: "___ uma biblioteca nesta escola e ___ biblioteca possui muitos livros."';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'A / A';
SET @alternativa_b = 'HÁ / A';
SET @alternativa_c = 'A / HÁ';
SET @alternativa_d = 'HÁ / HÁ';
SET @alternativa_e = 'À / A';

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


/* PERGUNTA 12 */

SET @enuciado = 'Em qual alternativa as duas lacunas estão preenchidas corretamente?';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = '"___ muitos alunos na escola e ___ escola possui uma quadra." — HÁ / A';
SET @alternativa_b = '"___ muitos alunos na escola e ___ escola possui uma quadra." — A / HÁ';
SET @alternativa_c = '"___ muitos alunos na escola e ___ escola possui uma quadra." — A / A';
SET @alternativa_d = '"___ muitos alunos na escola e ___ escola possui uma quadra." — HÁ / HÁ';
SET @alternativa_e = '"___ muitos alunos na escola e ___ escola possui uma quadra." — À / A';

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


/* PERGUNTA 13 */

SET @enuciado = 'Complete corretamente: "___ dois meses começou ___ nova atividade na escola."';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'A / HÁ';
SET @alternativa_b = 'HÁ / A';
SET @alternativa_c = 'A / A';
SET @alternativa_d = 'HÁ / HÁ';
SET @alternativa_e = 'À / A';

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


/* PERGUNTA 14 */

SET @enuciado = 'Qual alternativa apresenta uma frase em que "HÁ" indica existência?';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'A professora explicou a matéria.';
SET @alternativa_b = 'A turma iniciou a atividade.';
SET @alternativa_c = 'Há muitos livros sobre a mesa.';
SET @alternativa_d = 'A menina terminou o exercício.';
SET @alternativa_e = 'A escola organizou uma competição.';

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


/* PERGUNTA 15 */

SET @enuciado = 'Complete corretamente: "___ uma nova professora na escola e ela apresentou ___ turma sua proposta."';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'A / HÁ';
SET @alternativa_b = 'HÁ / A';
SET @alternativa_c = 'A / A';
SET @alternativa_d = 'HÁ / HÁ';
SET @alternativa_e = 'À / A';

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


/* PERGUNTA 16 */

SET @enuciado = 'Qual opção completa corretamente a frase: "___ muitos anos, ___ escola utiliza esse método de ensino."';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'A / HÁ';
SET @alternativa_b = 'HÁ / A';
SET @alternativa_c = 'A / A';
SET @alternativa_d = 'HÁ / HÁ';
SET @alternativa_e = 'À / A';

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


/* PERGUNTA 17 */

SET @enuciado = 'Observe: "___ uma bola sobre ___ mesa." Qual alternativa completa corretamente a frase?';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'A / A';
SET @alternativa_b = 'HÁ / A';
SET @alternativa_c = 'A / HÁ';
SET @alternativa_d = 'HÁ / HÁ';
SET @alternativa_e = 'À / A';

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


/* PERGUNTA 18 */

SET @enuciado = 'Em qual alternativa "A" funciona como artigo antes de um substantivo?';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Há muitos alunos na escola.';
SET @alternativa_b = 'A professora iniciou a aula.';
SET @alternativa_c = 'Há dois livros na mesa.';
SET @alternativa_d = 'Há uma atividade nova.';
SET @alternativa_e = 'Há poucos estudantes presentes.';

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


/* PERGUNTA 19 */

SET @enuciado = 'Complete corretamente: "___ muitos estudantes na sala, mas ___ sala estava silenciosa."';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'A / HÁ';
SET @alternativa_b = 'HÁ / A';
SET @alternativa_c = 'A / A';
SET @alternativa_d = 'HÁ / HÁ';
SET @alternativa_e = 'À / A';

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


/* PERGUNTA 20 */

SET @enuciado = 'Qual alternativa completa corretamente: "___ uma atividade sobre ___ mesa e ___ alunos começaram a resolvê-la."';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'A / A / HÁ';
SET @alternativa_b = 'HÁ / HÁ / A';
SET @alternativa_c = 'HÁ / A / A';
SET @alternativa_d = 'A / HÁ / A';
SET @alternativa_e = 'HÁ / A / HÁ';

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