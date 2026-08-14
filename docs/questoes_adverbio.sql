-- ============================================================================
-- SCRIPT DE QUESTÕES: ADVÉRBIO (UTF-8 sem BOM)
-- Baseado no documento: resumo_adverbio_2.pdf
-- ============================================================================

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- ----------------------------------------------------------------------------
-- TÓPICO 1: O que é Advérbio?
-- ----------------------------------------------------------------------------

-- Pergunta 1.1
SET @enunciado = 'De acordo com o texto, qual é a definição gramatical de advérbio?';
SET @temimagem = '0';
SET @fk_conteudo = 7;
SET @fk_gerado = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @fk_pergunta);

SET @alternativa_a = 'É uma palavra variável que caracteriza ou qualifica um substantivo.';
SET @alternativa_b = 'É uma palavra invariável que modifica um verbo, um adjetivo ou outro advérbio.';
SET @alternativa_c = 'É um conjunto de duas ou mais palavras com valor de substantivo.';
SET @alternativa_d = 'É uma palavra variável que flexiona em gênero e número para concordar com a frase.';
SET @alternativa_e = 'É um termo variável que liga duas orações estabelecendo uma relação de sentido.';

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

-- Pergunta 1.2
SET @enunciado = 'Quais classes gramaticais podem ser modificadas por um advérbio, segundo o documento?';
SET @temimagem = '0';
SET @fk_conteudo = 7;
SET @fk_gerado = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @fk_pergunta);

SET @alternativa_a = 'Apenas o verbo.';
SET @alternativa_b = 'Substantivo, adjetivo e pronome.';
SET @alternativa_c = 'Verbo, adjetivo ou outro advérbio.';
SET @alternativa_d = 'Apenas adjetivos e substantivos.';
SET @alternativa_e = 'Verbo e numeral apenas.';

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

-- Pergunta 1.3
SET @enunciado = 'O advérbio atua no texto atribuindo às palavras modificadas qual tipo de informação?';
SET @temimagem = '0';
SET @fk_conteudo = 7;
SET @fk_gerado = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @fk_pergunta);

SET @alternativa_a = 'Uma qualidade física ou estado permanente.';
SET @alternativa_b = 'Uma circunstância (como tempo, lugar, modo, intensidade, etc.).';
SET @alternativa_c = 'Uma ação praticada por um sujeito determinado.';
SET @alternativa_d = 'Uma ordem ou pedido direcionado ao leitor.';
SET @alternativa_e = 'Uma quantidade exata e contável de elementos.';

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


-- ----------------------------------------------------------------------------
-- TÓPICO 2: Classificação dos Advérbios
-- ----------------------------------------------------------------------------

-- Pergunta 2.1
SET @enunciado = 'Assinale a alternativa que apresenta apenas advérbios classificados como de Tempo no PDF:';
SET @temimagem = '0';
SET @fk_conteudo = 7;
SET @fk_gerado = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @fk_pergunta);

SET @alternativa_a = 'aqui, ali, lá, perto';
SET @alternativa_b = 'hoje, ontem, amanhã, sempre';
SET @alternativa_c = 'bem, mal, devagar, depressa';
SET @alternativa_d = 'muito, pouco, bastante, demais';
SET @alternativa_e = 'talvez, acaso, possivelmente, quiçá';

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

-- Pergunta 2.2
SET @enunciado = 'Na frase "Ela explicou a matéria calmamente", qual é a classificação do advérbio destacado segundo a tabela do texto?';
SET @temimagem = '0';
SET @fk_conteudo = 7;
SET @fk_gerado = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @fk_pergunta);

SET @alternativa_a = 'Advérbio de Intensidade.';
SET @alternativa_b = 'Advérbio de Tempo.';
SET @alternativa_c = 'Advérbio de Modo.';
SET @alternativa_d = 'Advérbio de Afirmação.';
SET @alternativa_e = 'Advérbio de Dúvida.';

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

-- Pergunta 2.3
SET @enunciado = 'Quais dos seguintes termos são listados no material como exemplos de advérbios de Dúvida?';
SET @temimagem = '0';
SET @fk_conteudo = 7;
SET @fk_gerado = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @fk_pergunta);

SET @alternativa_a = 'sim, certamente, realmente';
SET @alternativa_b = 'não, nunca, jamais';
SET @alternativa_c = 'talvez, acaso, possivelmente';
SET @alternativa_d = 'muito, pouco, bastante';
SET @alternativa_e = 'acima, abaixo, dentro';

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


-- ----------------------------------------------------------------------------
-- TÓPICO 3: Locuções Adverbiais
-- ----------------------------------------------------------------------------

-- Pergunta 3.1
SET @enunciado = 'De acordo com o documento, o que é uma locução adverbial?';
SET @temimagem = '0';
SET @fk_conteudo = 7;
SET @fk_gerado = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @fk_pergunta);

SET @alternativa_a = 'É a junção de dois advérbios que passam a ter valor de adjetivo.';
SET @alternativa_b = 'É um conjunto de duas ou mais palavras com valor de advérbio.';
SET @alternativa_c = 'É uma única palavra invariável de origem estrangeira com valor de tempo.';
SET @alternativa_d = 'É a flexão do advérbio em gênero e número para dar tom exclamativo.';
SET @alternativa_e = 'É uma locução formada obrigatoriamente apenas por verbos no infinitivo.';

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

-- Pergunta 3.2
SET @enunciado = 'Geralmente, as locuções adverbiais apresentadas no PDF são formadas por qual estrutura?';
SET @temimagem = '0';
SET @fk_conteudo = 7;
SET @fk_gerado = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @fk_pergunta);

SET @alternativa_a = 'Preposição + substantivo/adjetivo.';
SET @alternativa_b = 'Verbo + pronome pessoal.';
SET @alternativa_c = 'Artigo + adjetivo qualificativo.';
SET @alternativa_d = 'Advérbio + numeral ordinal.';
SET @alternativa_e = 'Interjeição + verbo auxiliar.';

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

-- Pergunta 3.3
SET @enunciado = 'Qual das opções abaixo contém apenas exemplos de locuções adverbiais de Modo mencionadas no texto?';
SET @temimagem = '0';
SET @fk_conteudo = 7;
SET @fk_gerado = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @fk_pergunta);

SET @alternativa_a = 'ao lado, à direita, em cima';
SET @alternativa_b = 'às vezes, de repente, de manhã';
SET @alternativa_c = 'às pressas, em silêncio, ao acaso';
SET @alternativa_d = 'com certeza, sem dúvida, de modo algum';
SET @alternativa_e = 'por perto, de longe, à noite';

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


-- ----------------------------------------------------------------------------
-- TÓPICO 4: Regra da Invariabilidade
-- ----------------------------------------------------------------------------

-- Pergunta 4.1
SET @enunciado = 'O que estabelece a "Regra de Ouro da Invariabilidade" apresentada no documento?';
SET @temimagem = '0';
SET @fk_conteudo = 7;
SET @fk_gerado = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @fk_pergunta);

SET @alternativa_a = 'O advérbio flexiona apenas em número (singular e plural).';
SET @alternativa_b = 'O advérbio flexiona apenas em gênero (masculino e feminino).';
SET @alternativa_c = 'Por ser uma classe invariável, o advérbio não flexiona em gênero ou número.';
SET @alternativa_d = 'O advérbio deve obrigatoriamente concordar em gênero com o adjetivo que modifica.';
SET @alternativa_e = 'O advérbio deve variar sempre que modificar um verbo no plural.';

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

-- Pergunta 4.2
SET @enunciado = 'Segundo a nota de atenção do texto, qual é a forma correta ao usar a palavra "meio" com sentido de advérbio de intensidade?';
SET @temimagem = '0';
SET @fk_conteudo = 7;
SET @fk_gerado = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @fk_pergunta);

SET @alternativa_a = '"Ela está meia cansada."';
SET @alternativa_b = '"Ela está meio cansada."';
SET @alternativa_c = '"Ela está meias cansada."';
SET @alternativa_d = '"Ela está meios cansada."';
SET @alternativa_e = '"Ela está de meia cansada."';

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

-- Pergunta 4.3
SET @enunciado = 'De acordo com o exemplo do texto, em qual situação a palavra "meia" flexiona para o feminino?';
SET @temimagem = '0';
SET @fk_conteudo = 7;
SET @fk_gerado = 0;

CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @fk_pergunta);

SET @alternativa_a = 'Quando funciona como advérbio de intensidade modificando adjetivos.';
SET @alternativa_b = 'Quando funciona como advérbio de modo modificando verbos.';
SET @alternativa_c = 'Apenas quando é empregada como numeral ou substantivo (ex: "meia maçã").';
SET @alternativa_d = 'Sempre que se refere a um sujeito do gênero feminino.';
SET @alternativa_e = 'Em nenhuma hipótese, pois a palavra é totalmente proibida na língua portuguesa.';

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
