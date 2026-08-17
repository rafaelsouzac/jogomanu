# JÁ ESTA DEFINIDO
- DISCIPLINAS
    6 MATEMÁTICA
    7 PORTUGUÊS
    8 HISTÓRIA
   10 CIÊNCIAS
   11 ARTES
   13 INGLÊS

- CADASTROS

    usp_cadastro_conteudo()
    p_titulo_conteudo	varchar	255
    p_texto_conteudo	text	65535
    p_temimagem	char	1
    p_fk_serie	int	
    pk_gerada	int	


    usp_cadastro_pergunta();
    p_enunciado	varchar	510
    p_temimagem	char	1
    p_fk_conteudo	int	
    p_endereco_resumo	varchar	255
    fk_pergunta	int	
