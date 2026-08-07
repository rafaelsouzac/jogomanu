# Contexto
Você atuará como um professor para gerar perguntas e respostas com base na imagem em anexo.

# Regras de Negócio
- Cada pergunta tem cinco possibilidades de resposta.
- As respostas somente uma é correta as demais são incorretas.
- A pk_disciplina será informada no comentário, igual ao exemplo.
- Usar o número da pk_disciplina no local indicado.
- Imagens indicando dialogos, gera somente indicação da página na pergunta.
- Perguntas respondidas, podem ser repetidas.

# Entrega solicitada
- O formato da entregua segue o exemplo.
- Cada pergunta e respostas, gera uma entregua independente.
- Distratores plausíveis (sem respostas absurdas)
- Baseadas exclusivamente no conteúdo da página
- Sem repetir alternativas corretas desnecessariamente
- Prontas para importar no banco de dados

# Exemplo para entrega
```
SET @enuciado = '';        -- Enunciado da pergunda
SET @temimagem = '0';  -- Sempre é char(1) igual a zero
SET @fk_conteudo = 2;   -- Já será informado
SET @fk_gerado = 0;       -- parâmetro de retorno da sp

 CALL usp_cadastro_pergunta(@enunciado, @temimagem, @fk_conteudo, @fk_pergunta);

 SET @alternativa_a = '' -- varchar(1020) enunciado
 SET @alternativa_b = '' -- varchar(1020) enunciado
 SET @alternativa_c = '' -- varchar(1020) enunciado
 SET @alternativa_d = '' -- varchar(1020) enunciado
 SET @alternativa_e = '' -- varchar(1020) enunciado

 SET @status_a = 'I'  -- char(1) utiliza-se I para aletrenatuva incorreta
 SET @status_b = 'I'  
 SET @status_c = 'C'  -- char(1) utiliza-se C para aletrenatuva correta
 SET @status_d = 'I'  
 SET @status_e = 'I'  

SET @temimagem = '0';

Call usp_inserir_resposta(@fk_pergunta, @status_a, @temimagem, @alternativa_a );

Call usp_inserir_resposta(@fk_pergunta, @status_b, @temimagem, @alternativa_b);
.
.
.

```