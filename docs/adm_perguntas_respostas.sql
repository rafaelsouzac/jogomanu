-- GERENCIAMENTO DO BANCO DE DADOS.
CALL sp_parametros_procedure('usp_selecionar_respostas');

-- =============================================================
-- PASSO 1 CADASTRAR E ATUALIZAÇÃO DE CONTEÚDO
/*
	Método de trabalho:
    - Cadastrar Conteúdo da seguinte maneira:
		* titulo_conteudo = Livro<numero> - 
        * texto_conteudo = tópico da materia (Pontuação - reticências - aspas - parênteses - dois pontos)
        * texto_conteudo = tópico da materia (Interpretação de Texto - pág.7 a 12)
		* temimagem = Na v1 sempre será 0
        * fk_serie = Na v1 sempre será 05

	6	Matemática
	7	Português
	8	História
	10	Ciências
	11	Artes
	13	Inglês
*/
select * from conteudos;
CALL usp_cadastro_conteudos('Caderno 2 - ', 'Pontuação', '0', 7, @saida);
Select @saida;
/* PARAMETRO(S) usp_cadastro_conteudos
	p_titulo_conteudo	varchar	255
	p_texto_conteudo	text	65535
	p_temimagem	char	1
	p_fk_disciplina 	int	
	pk_gerada	int  OUT	
*/

CALL usp_selecionar_conteudo(7);
/* PARAMETRO(S) usp_selecionar_conteudo
	p_disciplina	int
*/

CALL usp_atualizar_conteudo('textoconteudo', 'Traz, Trás, Atrás e Detrás', 5);
/* PARAMETRO(S) usp_atualizar_conteudo
	p_nome_campo	varchar	255
	p_valor_campo	text	65535
	p_pk	int	
*/

-- ============================================================
-- PASSO 2 CADASTRAR A PERGUNTA

-- CALL usp_apagar_pergunta();
/* PARAMETRO(S) usp_apagar_pergunta
	p_pk_pergunta	int
*/

CALL usp_inserir_pergunta();
/* PARAMETRO(S) usp_inserir_pergunta
	p_enunciado	varchar	510
	p_temimagem	char	1
	p_fk_conteudo	int	
	p_endereco_resumo	varchar	255
	fk_pergunta	int	OUT
*/

select * from perguntas;

CALL usp_selecionar_perguntas(4);
/* PARAMETRO(S) usp_selecionar_perguntas
	p_pk_conteudo	int
*/

-- ============================================================
-- PASSO 3 CADASTRAR AS RESPOSTAS

CALL usp_inserir_resposta();
/* PARAMETRO(S) usp_inserir_resposta
	fk_pergunta	int	
	status_resposta	char	1
	temimagem	char	1
	enunciado_resposta	varchar	1020	
*/

CALL usp_selecionar_respostas();
/* PARAMETRO(S) usp_selecionar_respostas
	p_pk_pergunta	int
*/
