-- ============================================================
-- PERGUNTA 1
-- ============================================================
-- Conteudo Avaliado: Identificação do verbo auxiliar em locuções verbais.

SET @enunciado = 'Na frase: "O aluno ___ estudando para a prova final desde a semana passada", qual locução verbal preenche corretamente a lacuna mantendo o verbo auxiliar "estar"?';
SET @temimagem = '0';
SET @fk_conteudo = 8;
SET @fk_gerado = 0;
SET @end_resumo = 'resumo_locucoes_verbais.html';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'está continuado';
SET @alternativa_b = 'está estudando';
SET @alternativa_c = 'estudou bastante';
SET @alternativa_d = 'vai estudar';
SET @alternativa_e = 'ficou estudo';

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


-- ============================================================
-- PERGUNTA 2
-- ============================================================
-- Conteudo Avaliado: Reconhecimento da locução verbal e forma nominal do verbo principal.

SET @enunciado = 'Na oração: "Nós ___ organizando os arquivos amanhã cedo", qual opção preenche a lacuna com uma locução verbal adequada e com o verbo principal no gerúndio?';
SET @temimagem = '0';
SET @fk_conteudo = 8;
SET @fk_gerado = 0;
SET @end_resumo = 'resumo_locucoes_verbais.html';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'vamos organizar';
SET @alternativa_b = 'havemos de organizar';
SET @alternativa_c = 'estaremos organizando';
SET @alternativa_d = 'tínhamos organizado';
SET @alternativa_e = 'organizamos';

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


-- ============================================================
-- PERGUNTA 3
-- ============================================================
-- Conteudo Avaliado: Uso do verbo principal no particípio em locuções verbais.

SET @enunciado = 'Analise a frase: "Os relatórios já ___ entregues pelo diretor antes da reunião". Assinale a alternativa que completa a lacuna formando uma locução verbal com o verbo no particípio:';
SET @temimagem = '0';
SET @fk_conteudo = 8;
SET @fk_gerado = 0;
SET @end_resumo = 'resumo_locucoes_verbais.html';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'tinham entregando';
SET @alternativa_b = 'haviam sido';
SET @alternativa_c = 'vão entregar';
SET @alternativa_d = 'estão entregar';
SET @alternativa_e = 'foram entregando';

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


-- ============================================================
-- PERGUNTA 4
-- ============================================================
-- Conteudo Avaliado: Locução verbal indicando ação futura com infinitivo.

SET @enunciado = 'Para expressar uma intenção futura na frase "A equipe ___ o projeto no próximo mês", qual locução verbal formada por verbo auxiliar + infinitivo deve ser utilizada?';
SET @temimagem = '0';
SET @fk_conteudo = 8;
SET @fk_gerado = 0;
SET @end_resumo = 'resumo_locucoes_verbais.html';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'vai apresentar';
SET @alternativa_b = 'tinha apresentado';
SET @alternativa_c = 'estava apresentando';
SET @alternativa_d = 'apresentou';
SET @alternativa_e = 'foi apresentado';

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


-- ============================================================
-- PERGUNTA 5
-- ============================================================
-- Conteudo Avaliado: Diferenciação entre verbo único e locução verbal.

SET @enunciado = 'Dentre as opções abaixo para preencher a lacuna na frase "O garoto ___ a ler aos cinco anos de idade", assinale a única que representa uma locução verbal:';
SET @temimagem = '0';
SET @fk_conteudo = 8;
SET @fk_gerado = 0;
SET @end_resumo = 'resumo_locucoes_verbais.html';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Aprendeu';
SET @alternativa_b = 'Começou';
SET @alternativa_c = 'Passou a';
SET @alternativa_d = 'Conseguiu';
SET @alternativa_e = 'Sabia';

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


-- ============================================================
-- PERGUNTA 6
-- ============================================================
-- Conteudo Avaliado: Identificação de verbos auxiliares de obrigação em locuções verbais.

SET @enunciado = 'Na frase: "Todos os candidatos ___ apresentar o documento de identidade na entrada", qual estrutura forma uma locução verbal que indica necessidade ou obrigação?';
SET @temimagem = '0';
SET @fk_conteudo = 8;
SET @fk_gerado = 0;
SET @end_resumo = 'resumo_locucoes_verbais.html';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'devem apresentar';
SET @alternativa_b = 'apresentariam';
SET @alternativa_c = 'estavam apresentados';
SET @alternativa_d = 'tinham apresentação';
SET @alternativa_e = 'vão apresentação';

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


-- ============================================================
-- PERGUNTA 7
-- ============================================================
-- Conteudo Avaliado: Múltiplas lacunas com locuções verbais e continuidade da ação.

SET @enunciado = 'Assinale a alternativa que preenche corretamente as duas lacunas da frase: "Ela ___ chorando quando o pai ___ consolar a menina."';
SET @temimagem = '0';
SET @fk_conteudo = 8;
SET @fk_gerado = 0;
SET @end_resumo = 'resumo_locucoes_verbais.html';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'foi ___ tentou';
SET @alternativa_b = 'continuou ___ veio';
SET @alternativa_c = 'estava ___ começou a';
SET @alternativa_d = 'ficava ___ resolveu';
SET @alternativa_e = 'estava ___ quis';

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


-- ============================================================
-- PERGUNTA 8
-- ============================================================
-- Conteudo Avaliado: Concordância do verbo auxiliar em locuções verbais.

SET @enunciado = 'Na oração no plural: "Eles ___ para o teste final amanhã", qual locução verbal apresenta concordância adequada?';
SET @temimagem = '0';
SET @fk_conteudo = 8;
SET @fk_gerado = 0;
SET @end_resumo = 'resumo_locucoes_verbais.html';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'vai estudar';
SET@alternativa_b = 'está estudando';
SET @alternativa_c = 'hão de estudar';
SET @alternativa_d = 'havia estudado';
SET @alternativa_e = 'tinha estudando';

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


-- ============================================================
-- PERGUNTA 9
-- ============================================================
-- Conteudo Avaliado: Locução verbal composta no tempo pretérito mais-que-perfeito.

SET @enunciado = 'Em: "Nós já ___ o jantar quando os convidados chegaram", qual opção completa a lacuna com a locução verbal equivalente ao pretérito mais-que-perfeito do indicativo?';
SET @temimagem = '0';
SET @fk_conteudo = 8;
SET @fk_gerado = 0;
SET @end_resumo = 'resumo_locucoes_verbais.html';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'vamos preparar';
SET @alternativa_b = 'estamos preparando';
SET @alternativa_c = 'víamos preparando';
SET @alternativa_d = 'tínhamos preparado';
SET @alternativa_e = 'ficamos preparados';

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


-- ============================================================
-- PERGUNTA 10
-- ============================================================
-- Conteudo Avaliado: Substituição de verbo simples por locução verbal equivalente.

SET @enunciado = 'Na frase "Ela cantava todas as noites", a forma verbal simples "cantava" pode ser substituída mantendo o sentido de ação contínua no passado pela seguinte locução verbal:';
SET @temimagem = '0';
SET @fk_conteudo = 8;
SET @fk_gerado = 0;
SET @end_resumo = 'resumo_locucoes_verbais.html';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'tinha cantado';
SET @alternativa_b = 'ia cantar';
SET @alternativa_c = 'vinha cantando';
SET @alternativa_d = 'foi cantar';
SET @alternativa_e = 'haveria de cantar';

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