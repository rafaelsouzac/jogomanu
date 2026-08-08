-- PK_CONTEUDO   DESCRICAO
--     7           Elementos da comunicação

SET @enunciado = 'Qual é o traço visual mais característico do personagem Menino Maluquinho?';        -- Enunciado da pergunda
SET @temimagem = '0';  -- Sempre é char(1) igual a zero
SET @fk_conteudo = 7;  -- Já será informado
SET @fk_gerado = 0;    -- parâmetro de retorno da sp

 CALL usp_inserir_pergunta(@enunciado, @temimagem, @fk_conteudo, @fk_pergunta);

 SET @fk_pergunta = 81;
 SET @alternativa_a = 'A panela na cabeça.';       -- varchar(1020) enunciado
 SET @alternativa_b = 'Um boné azul.';             -- varchar(1020) enunciado
 SET @alternativa_c = 'Um chapéu de palha.';       -- varchar(1020) enunciado
 SET @alternativa_d = 'Um capacete de bicicleta.'; -- varchar(1020) enunciado
 SET @alternativa_e = 'Uma boina.';                -- varchar(1020) enunciado

 SET @status_a = 'C';  -- char(1) utiliza-se I para aletrenatuva incorreta
 SET @status_b = 'I';  
 SET @status_c = 'I';  -- char(1) utiliza-se C para aletrenatuva correta
 SET @status_d = 'I';  
 SET @status_e = 'I';  

SET @temimagem = '0';

Call usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a );

Call usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);

Call usp_inserir_resposta(@fk_pergunta, @status_c, @temimagem, @alternativa_c);

Call usp_inserir_resposta(@fk_pergunta, @status_d, @temimagem, @alternativa_d);

Call usp_inserir_resposta(@fk_pergunta, @status_e, @temimagem, @alternativa_e);
