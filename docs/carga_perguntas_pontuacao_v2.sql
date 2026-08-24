-- Script de Carga de Perguntas e Respostas
-- Formato: UTF-8 sem BOM

-- Conteudo Avaliado: Pontuação na língua portuguesa.

SET @enunciado = 'Assinale a alternativa que preenche corretamente a lacuna na frase: "Maria comprou vários legumes na feira ___ cenoura, abóbora, tomate e pimentão."';
SET @temimagem = '0';
SET @fk_conteudo = 4;
SET @end_resumo = '';
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Dois pontos (:), pois introduzem a enumeração dos legumes comprados.';
SET @alternativa_b = 'Ponto final (.), pois encerra o pensamento completo da frase.';
SET @alternativa_c = 'Ponto de interrogação (?), pois indica uma dúvida sobre os itens.';
SET @alternativa_d = 'Reticências (...), pois indicam interrupção por hesitação.';
SET @alternativa_e = 'Parênteses ( ), pois isolam o termo explicativo secundário.';

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


-- Conteudo Avaliado: Pontuação na língua portuguesa.

SET @enunciado = 'Na frase "Gostaria de saber ___ quando começam as inscrições para o campeonato de futebol?", qual sinal de pontuação substitui corretamente o espaço ___?';
SET @temimagem = '0';
SET @fk_conteudo = 4;
SET @end_resumo = '';
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Dois pontos (:), para anunciar o questionamento formulado na sequência.';
SET @alternativa_b = 'Ponto de exclamação (!), para indicar entusiasmo imediato do falante.';
SET @alternativa_c = 'Vírgula (,), para separar a oração sem introduzir enunciado direto.';
SET @alternativa_d = 'Reticências (...), para indicar uma pausa prolongada e incerteza.';
SET @alternativa_e = 'Ponto-e-vírgula (;), para separar termos de uma lista complexa.';

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


-- Conteudo Avaliado: Pontuação na língua portuguesa.

SET @enunciado = 'Qual sinal de pontuação deve ser utilizado no espaço ___ na frase: "O técnico gritou à beira do campo ___ Atenção com a marcação no segundo tempo!"?';
SET @temimagem = '0';
SET @fk_conteudo = 4;
SET @end_resumo = '';
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Reticências (...), por demonstrar dúvida no grito do técnico.';
SET @alternativa_b = 'Dois pontos (:), pois antecedem a fala direta do personagem.';
SET @alternativa_c = 'Parênteses ( ), para indicar uma citação bibliográfica.';
SET @alternativa_d = 'Ponto e vírgula (;), para conectar duas orações independentes.';
SET @alternativa_e = 'Ponto final (.), para encerrar antecipadamente a frase.';

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


-- Conteudo Avaliado: Pontuação na língua portuguesa.

SET @enunciado = 'Analise a frase: "Eu não sei se deveria ir à festa de aniversário ___ talvez seja melhor ficar em casa descansando." O sinal de pontuação correto para substituir ___ e indicar dúvida ou suspensão é:';
SET @temimagem = '0';
SET @fk_conteudo = 4;
SET @end_resumo = '';
SET @fk_pergunta = 0;

CALL usp_cadastro_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Dois pontos (:), para iniciar uma lista de razões.';
SET @alternativa_b = 'Ponto de interrogação (?), pois trata-se de uma pergunta direta.';
SET @alternativa_c = 'Ponto de exclamação (!), pois demonstra ordem rigorosa.';
SET @alternativa_d = 'Reticências (...), pois sinalizam a hesitação ou o pensamento suspenso.';
SET @alternativa_e = 'Aspas (" "), pois destacam uma palavra estrangeira.';

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


-- Conteudo Avaliado: Pontuação na língua portuguesa.

SET @enunciado = 'Considere a frase: "O texto extraído do livro dizia o seguinte ___ ___A educação é a arma mais poderosa para mudar o mundo___ ___." Quais sinais preenchem a sequência de espaços respectivamente?';
SET @temimagem = '0';
SET @fk_conteudo = 4;
SET @end_resumo = '';
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Dois pontos (:) para introduzir e aspas (" ") para delimitar a citação direta.';
SET @alternativa_b = 'Ponto final (.) para encerrar e parênteses ( ) para isolar a opinião.';
SET @alternativa_c = 'Reticências (...) para hesitar e travessão (—) para indicar diálogo.';
SET @alternativa_d = 'Vírgula (,) para pausar e dois pontos (:) para enumerar.';
SET @alternativa_e = 'Ponto de interrogação (?) para questionar e aspas (" ") para destacar a ironia.';

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


-- Conteudo Avaliado: Pontuação na língua portuguesa.

SET @enunciado = 'Na frase: "A Independência do Brasil ___ 1822 ___ marcou o fim do período colonial no país", os sinais que devem preencher os espaços ___ para delimitar a data explicativa são:';
SET @temimagem = '0';
SET @fk_conteudo = 4;
SET @end_resumo = '';
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Dois pontos (:), pois antecedem uma citação histórica.';
SET @alternativa_b = 'Parênteses ( ), pois isolam a informação cronológica explicativa no texto.';
SET @alternativa_c = 'Reticências (...), pois indicam que o ano é incerto.';
SET @alternativa_d = 'Ponto de interrogação (?), pois questionam a exatidão da data.';
SET @alternativa_e = 'Ponto e vírgula (;), pois separam duas frases completas.';

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


-- Conteudo Avaliado: Pontuação na língua portuguesa.

SET @enunciado = 'Na frase "Que dia maravilhoso para fazer um passeio no parque ___", qual sinal de pontuação no espaço ___ expressa adequadamente um sentimento de admiração e entusiasmo?';
SET @temimagem = '0';
SET @fk_conteudo = 4;
SET @end_resumo = '';
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Ponto de interrogação (?), pois busca confirmação do ouvinte.';
SET @alternativa_b = 'Ponto de exclamação (!), pois enfatiza emoção e admiração na declaração.';
SET @alternativa_c = 'Dois pontos (:), pois introduz uma explicação sobre o parque.';
SET @alternativa_d = 'Ponto e vírgula (;), pois separa duas orações coordenadas.';
SET @alternativa_e = 'Parênteses ( ), pois isola uma expressão irrelevante.';

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


-- Conteudo Avaliado: Pontuação na língua portuguesa.

SET @enunciado = 'Qual opção preenche corretamente a lacuna na frase: "Você conseguiu terminar todos os exercícios da aula de matemática ___"?';
SET @temimagem = '0';
SET @fk_conteudo = 4;
SET @end_resumo = '';
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Ponto de interrogação (?), pois trata-se de uma pergunta direta.';
SET @alternativa_b = 'Dois pontos (:), pois introduz o resultado dos exercícios.';
SET @alternativa_c = 'Ponto de exclamação (!), pois indica espanto obrigatório.';
SET @alternativa_d = 'Reticências (...), pois deixa o final da frase sem sentido.';
SET @alternativa_e = 'Parênteses ( ), pois envolve uma informação secundária.';

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
