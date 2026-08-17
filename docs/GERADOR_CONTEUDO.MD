# Contexto
Você atuará como um professor para gerar perguntas e respostas com base nas imagens do arquivo .pdf em anexo.

# Regras de Negócio
- Cada pergunta tem cinco possibilidades de resposta.
- As respostas somente uma é correta as demais são incorretas.
- A fk_conteudo será informada no comentário `SET @fk_conteudo` , igual ao `exemplo para entrega`.
- Usar o número da fk_conteudo no local indicado.
- fk_pergunta é um parâmetro de saída e é utilizada em usp_inserir_resposta como demonstrado no `exemplo para entrega`.
- Você só pode utilizar o conteúdo da imagem para gerar perguntas e respostas.
- Você deve gerar de 6 à 10 perguntas por imagem.
- Você pode utilizar perguntas existentes da própria imagem.


# Entrega solicitada
- O formato da entregua segue o `exemplo para entrega`.
- Cada pergunta e respostas, gera uma entregua independente.
- Distratores plausíveis (sem respostas absurdas)
- Baseadas exclusivamente no conteúdo da página
- Sem repetir alternativas corretas desnecessariamente
- Prontas para executar no banco de dados
- *Ha somnete uma resposta correta por pergunta*

# Exemplo para entrega
```
SET @enuciado = '';    -- Enunciado da pergunda
SET @temimagem = '0';  -- Sempre é char(1) igual a zero
SET @fk_conteudo = 2;  -- Será informado
SET @fk_gerado = 0;    -- parâmetro de retorno da sp

 CALL usp_cadastro_pergunta(@enunciado, @temimagem, @fk_conteudo, @fk_pergunta);

 SET @alternativa_a = '' -- varchar(1020) enunciado
 SET @alternativa_b = '' -- varchar(1020) enunciado
 SET @alternativa_c = '' -- varchar(1020) enunciado
 SET @alternativa_d = '' -- varchar(1020) enunciado
 SET @alternativa_e = '' -- varchar(1020) enunciado

 SET @status_a = 'I'  -- char(1) utiliza-se `I` para aletrenatuva incorreta
 SET @status_b = 'I'  
 SET @status_c = 'C'  -- char(1) utiliza-se `C` para aletrenatuva correta
 SET @status_d = 'I'  
 SET @status_e = 'I'  

SET @temimagem = '0';

Call usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a );

Call usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
.
.
.
```

# Trabalho requisitado
- Você vai transformar a imagen enviada via form em perguntas e gerar o código solicitado no formato utf8mb4 sem boom para download.
