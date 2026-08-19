-- Script de Carga de Perguntas e Respostas
-- Formato: UTF-8 sem BOM

-- Conteudo Avaliado: Pontuação na língua portuguesa (Dois pontos)

SET @enunciado = 'Conforme o uso correto da pontuação na língua portuguesa, assinale a alternativa que preenche corretamente a lacuna na frase a seguir: "Juliana foi à feira e comprou vários itens ___ maçãs, bananas, laranjas e morangos."';
SET @temimagem = '0';
SET @fk_conteudo = 4;
SET @fk_pergunta = 0;
SET @end_resumo = '';

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Dois pontos (:), pois introduzem uma enumeração de itens explicitando o que foi comprado.';
SET @alternativa_b = 'Reticências (...), pois a frase está incompleta e interrompe o pensamento expressado.';
SET @alternativa_c = 'Aspas (" "), pois indicam a citação direta do que a feirante disse durante a compra.';
SET @alternativa_d = 'Parênteses ( ), pois isolam uma informação explicativa secundária sobre a feira.';
SET @alternativa_e = 'Reticências (...), pois destacam uma ironia na lista de compras apresentada.';

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


-- Conteudo Avaliado: Pontuação na língua portuguesa (Dois pontos)

SET @enunciado = 'Analise a estrutura sintática da frase: "O diretor anunciou a decisão ___ A reunião será adiada para a próxima semana." Qual sinal de pontuação deve substituir os três underlines ___ para introduzir a declaração do diretor?';
SET @temimagem = '0';
SET @fk_conteudo = 4;
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Parênteses ( ), para indicar um comentário secundário do leitor.';
SET @alternativa_b = 'Reticências (...), para indicar uma dúvida em aberto no discurso.';
SET @alternativa_c = 'Dois pontos (:), para anunciar a fala ou a citação da decisão tomada.';
SET @alternativa_d = 'Aspas (" "), para indicar que o texto traz uma palavra em língua estrangeira.';
SET @alternativa_e = 'Reticências (...), para expressar hesitação por parte da diretoria.';

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


-- Conteudo Avaliado: Pontuação na língua portuguesa (Dois pontos)

SET @enunciado = 'Assinale a alternativa que explica corretamente a função dos dois pontos na frase: "Ele tinha apenas um desejo ___ passar no exame final."';
SET @temimagem = '0';
SET @fk_conteudo = 4;
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Introduzir uma explicação ou esclarecimento sobre qual era o desejo do personagem.';
SET @alternativa_b = 'Indicar que o pensamento do personagem foi interrompido antes do término.';
SET @alternativa_c = 'Isolar um vocativo dirigido diretamente ao leitor do texto.';
SET @alternativa_d = 'Marcar o uso de uma expressão metafórica ou de um termo estrangeiro.';
SET @alternativa_e = 'Demonstrar incerteza em relação ao resultado final do exame.';

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


-- Conteudo Avaliado: Pontuação na língua portuguesa (Reticências, Aspas e Parênteses)

SET @enunciado = 'Na frase "O autor afirmou no capítulo 2 ___ A leitura transforma o mundo ___ e encerrou a palestra", os dois espaços indicados por ___ devem ser preenchidos por qual sinal de pontuação para indicar uma citação textual?';
SET @temimagem = '0';
SET @fk_conteudo = 4;
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Parênteses ( ), pois estão isolando uma dúvida do autor.';
SET @alternativa_b = 'Reticências (...), pois indicam que o autor começou a hesitar ao falar.';
SET @alternativa_c = 'Aspas (" "), pois delimitam uma transcrição exata das palavras do autor.';
SET @alternativa_d = 'Dois pontos (:), pois introduzem uma lista de livros transformadores.';
SET @alternativa_e = 'Parênteses ( ), para indicar a data de publicação da palestra.';

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


-- Conteudo Avaliado: Pontuação na língua portuguesa (Reticências, Aspas e Parênteses)

SET @enunciado = 'Considere a frase: "Eu estava pensando se deveríamos ir até lá ___ mas talvez seja melhor esperar até amanhã." Qual sinal de pontuação no espaço ___ expressa adequadamente a ideia de hesitação ou suspensão do pensamento?';
SET @temimagem = '0';
SET @fk_conteudo = 4;
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Dois pontos (:), para anunciar uma consequência lógica do fato.';
SET @alternativa_b = 'Aspas (" "), para indicar que a palavra "mas" é uma gíria.';
SET @alternativa_c = 'Parênteses ( ), para separar o sujeito do verbo da oração.';
SET @alternativa_d = 'Reticências (...), pois indicam a continuidade suspensa ou dúvida na fala.';
SET @alternativa_e = 'Dois pontos (:), para indicar que uma enumeração será iniciada a seguir.';

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


-- Conteudo Avaliado: Pontuação na língua portuguesa (Reticências, Aspas e Parênteses)

SET @enunciado = 'Na frase "A Segunda Guerra Mundial ___ 1939-1945 ___ causou transformações profundas na história da humanidade", qual sinal deve ser utilizado nos espaços de três underlines ___ para inserir essa informação explicativa sobre as datas?';
SET @temimagem = '0';
SET @fk_conteudo = 4;
SET @fk_pergunta = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @end_resumo, @fk_pergunta);

SET @alternativa_a = 'Reticências (...), para indicar que faltam fatos históricos a serem narrados.';
SET @alternativa_b = 'Parênteses ( ), para intercalar uma explicação ou cronologia acessória no texto.';
SET @alternativa_c = 'Dois pontos (:), para dar início a uma citação direta do historiador.';
SET @alternativa_d = 'Aspas (" "), para indicar o uso de sentido figurado no termo cronológico.';
SET @alternativa_e = 'Reticências (...), para deixar o período da guerra em aberto.';

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
