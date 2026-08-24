-- Conteudo Avaliado: Utilização do HÁ (verbo) e do A (artigo).


/* ============================================================
   PERGUNTA 01
   ============================================================ */

SET @enuciado = 'Complete corretamente a frase: "___ muitos alunos na sala e ___ professora iniciou a aula."';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'A frase deve ser completada com "A" nas duas lacunas.';
SET @alternativa_b = 'A primeira lacuna deve ser "HÁ" e a segunda deve ser "A".';
SET @alternativa_c = 'A primeira lacuna deve ser "A" e a segunda deve ser "HÁ".';
SET @alternativa_d = 'As duas lacunas devem ser preenchidas com "HÁ".';
SET @alternativa_e = 'As duas lacunas devem ser preenchidas com "A".';

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


/* ============================================================
   PERGUNTA 02
   ============================================================ */

SET @enuciado = 'Em qual alternativa as palavras "HÁ" e "A" foram utilizadas corretamente?';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'HÁ menina chegou cedo para A escola.';
SET @alternativa_b = 'A dois livros sobre HÁ mesa.';
SET @alternativa_c = 'Há uma menina sentada A mesa.';
SET @alternativa_d = 'A muitos alunos na sala HÁ professora.';
SET @alternativa_e = 'HÁ professora levou o livro A biblioteca.';

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


/* ============================================================
   PERGUNTA 03
   ============================================================ */

SET @enuciado = 'Complete corretamente: "___ uma professora na sala e ela entregou ___ atividade aos alunos."';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'HÁ / A';
SET @alternativa_b = 'A / HÁ';
SET @alternativa_c = 'A / A';
SET @alternativa_d = 'HÁ / HÁ';
SET @alternativa_e = 'A / À';

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


/* ============================================================
   PERGUNTA 04
   ============================================================ */

SET @enuciado = 'Escolha a alternativa que completa corretamente a frase: "___ vários livros sobre ___ mesa."';
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


/* ============================================================
   PERGUNTA 05
   ============================================================ */

SET @enuciado = 'Observe a frase: "___ criança encontrou ___ bola no pátio." Qual opção completa corretamente as duas lacunas?';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'HÁ / HÁ';
SET @alternativa_b = 'HÁ / A';
SET @alternativa_c = 'A / HÁ';
SET @alternativa_d = 'A / A';
SET @alternativa_e = 'À / HÁ';

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


/* ============================================================
   PERGUNTA 06
   ============================================================ */

SET @enuciado = 'Complete corretamente: "___ três estudantes esperando ___ professora."';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'A / HÁ';
SET @alternativa_b = 'HÁ / HÁ';
SET @alternativa_c = 'HÁ / A';
SET @alternativa_d = 'A / A';
SET @alternativa_e = 'À / HÁ';

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


/* ============================================================
   PERGUNTA 07
   ============================================================ */

SET @enuciado = 'Qual alternativa utiliza corretamente "HÁ" como verbo e "A" como artigo?';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Há uma cadeira perto da porta e a cadeira está vazia.';
SET @alternativa_b = 'A uma cadeira perto da porta e há cadeira está vazia.';
SET @alternativa_c = 'A uma cadeira perto da porta e a cadeira está vazia.';
SET @alternativa_d = 'Há uma cadeira perto da porta e há cadeira está vazia.';
SET @alternativa_e = 'A uma cadeira perto da porta e há a cadeira está vazia.';

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


/* ============================================================
   PERGUNTA 08
   ============================================================ */

SET @enuciado = 'Preencha as lacunas: "___ muitos anos, ___ escola recebeu uma nova biblioteca."';
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


/* ============================================================
   PERGUNTA 09
   ============================================================ */

SET @enuciado = 'Em qual alternativa a palavra "HÁ" está sendo utilizada como verbo?';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'A professora corrigiu a atividade.';
SET @alternativa_b = 'A menina abriu a janela.';
SET @alternativa_c = 'Há muitos livros na biblioteca.';
SET @alternativa_d = 'A escola fechou cedo.';
SET @alternativa_e = 'A criança terminou a tarefa.';

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


/* ============================================================
   PERGUNTA 10
   ============================================================ */

SET @enuciado = 'Complete corretamente a frase: "___ uma nova atividade ___ disposição dos alunos."';
SET @temimagem = '0';
SET @fk_conteudo = 6;
SET @fk_gerado = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enuciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'A / A';
SET @alternativa_b = 'HÁ / HÁ';
SET @alternativa_c = 'A / HÁ';
SET @alternativa_d = 'HÁ / A';
SET @alternativa_e = 'À / HÁ';

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