-- Conteudo Avaliado: Pontuacao na escrita da lingua portuguesa.
-- Origem: Conteudo Avaliativo do arquivo ENTRADA_CONTEUDO_PORTUGUES(2).MD
-- Observacao: nao ha imagem enviada; portanto, nao ha numero de pagina a referenciar.

SET @fk_conteudo = 2;

-- Pergunta 1
SET @enuciado = 'Assinale a alternativa em que a pontuacao completa corretamente a frase: "Pedro ___ disse a professora ___ entregarei o trabalho amanha."';
SET @temimagem = '0';
SET @fk_gerado = 0;

CALL usp_cadastro_pergunta(@enuciado, @temimagem, @fk_conteudo, @fk_pergunta);

SET @alternativa_a = 'Pedro, disse a professora: entregarei o trabalho amanha.';
SET @alternativa_b = 'Pedro disse, a professora: entregarei o trabalho amanha.';
SET @alternativa_c = 'Pedro disse a professora, entregarei o trabalho amanha.';
SET @alternativa_d = 'Pedro, disse a professora, entregarei o trabalho amanha.';
SET @alternativa_e = 'Pedro disse a professora: entregarei o trabalho amanha.';

SET @status_a = 'I';
SET @status_b = 'I';
SET @status_c = 'I';
SET @status_d = 'I';
SET @status_e = 'C';

SET @temimagem = '0';

CALL usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a);
CALL usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
CALL usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);
CALL usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);
CALL usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);


-- Pergunta 2
SET @enuciado = 'Em qual alternativa a pontuacao dos tres espacos completa corretamente a frase? "Maria levou tres objetos ___ um caderno ___ uma caneta ___ e uma agenda."';
SET @temimagem = '0';
SET @fk_gerado = 0;

CALL usp_cadastro_pergunta(@enuciado, @temimagem, @fk_conteudo, @fk_pergunta);

SET @alternativa_a = 'Maria levou tres objetos: um caderno, uma caneta e uma agenda.';
SET @alternativa_b = 'Maria levou tres objetos, um caderno: uma caneta, e uma agenda.';
SET @alternativa_c = 'Maria levou tres objetos; um caderno, uma caneta: e uma agenda.';
SET @alternativa_d = 'Maria levou tres objetos: um caderno; uma caneta; e uma agenda.';
SET @alternativa_e = 'Maria levou tres objetos, um caderno, uma caneta, e uma agenda.';

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


-- Pergunta 3
SET @enuciado = 'Considere a frase: "Quando terminou a aula ___ os alunos organizaram a sala ___ depois foram para casa." Qual alternativa apresenta a pontuacao mais adequada para completar os dois espacos?';
SET @temimagem = '0';
SET @fk_gerado = 0;

CALL usp_cadastro_pergunta(@enuciado, @temimagem, @fk_conteudo, @fk_pergunta);

SET @alternativa_a = 'Quando terminou a aula, os alunos organizaram a sala; depois foram para casa.';
SET @alternativa_b = 'Quando terminou a aula; os alunos organizaram a sala, depois foram para casa.';
SET @alternativa_c = 'Quando terminou a aula os alunos, organizaram a sala; depois foram para casa.';
SET @alternativa_d = 'Quando terminou a aula: os alunos organizaram a sala, depois foram para casa.';
SET @alternativa_e = 'Quando terminou a aula, os alunos organizaram a sala, depois; foram para casa.';

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
