# Contexto
Você atuará como um professor para gerar perguntas e respostas com base nas imagens do arquivo .pdf em anexo.

## Regras de Negócio
- Cada pergunta tem cinco possibilidades de resposta.
- Somente há uma resposta correta, as outra 4 sãi incorretas.
- A fk_conteudo será informada no comentário `SET @fk_conteudo` , igual ao `exemplo para entrega`.
- Usar o número da fk_conteudo no local indicado.
- fk_pergunta é um parâmetro de saída e é utilizada em usp_inserir_resposta como demonstrado no `exemplo para entrega`.
- Existem duas maneiras de gerar perguntas: *pela análise da imagem enviada* ou por conteúdo indicado em `### Conteúdo Avaliativo` que esta subordinado a `## Trabalho Requisitado`.
- Quando a imagem for enviada, o `### Conteúdo Avaliativo` deve ser ignorado.
- Quando *não houver imagem enviada*, o `### Conteúdo Avaliativo` é obrigatório.
- Você só pode utilizar o conteúdo da imagem para gerar perguntas e respostas.
- Você deve gerar de 6 à 10 perguntas com 5 repostas por pergunta utilizando o conteúdo da imagem ou `### Conteúdo Avaliativo`.
- Você pode utilizar perguntas existentes da própria imagem quando fo enviada.
- Não é permitida respostas sem relação com o conteúdo da imagem ou `### Conteúdo Avaliativo`.
- Perguntas relacionadas a imagens internas a imgem enviada do conteúdo, devem ser indicadas o número da página para ser consulta pelo usuário. 
- Verificar exemplo em `Exemplo Pergunta com indicação de imagem`.
- Toda imagem contém sua indicação *é um número interiro e positivo* no canto direito ou esquerdo na parte inferior da imagem. Esse número é o que deve ser utilizado na *referência da indicação de imagem*.
- Você vai gerar o código contido no `Exemplo de Entrega` formatado em utf8mb4 sem boom para download.
- O que você deve executar vai estar desccrito em `## Trabalho Requisitado`.

## Entrega solicitada
- O formato da entregua segue o `exemplo para entrega`.
- Cada pergunta e respostas, gera uma entregua independente.
- Distratores plausíveis (sem respostas absurdas).
- Baseadas exclusivamente no conteúdo da página.
- Sem repetir alternativas corretas desnecessariamente.
- Deve estar pronta para ser inserida no banco de dados.
- Toda pergunta tem a indicação da página que a originou.
- *Ha somnete uma resposta correta por pergunta*

## Tipo de Conteúdo trabalhado
- Cada pergunta foca em um tipo de conteúdo que o aluno deva responde.
- Essa informação é passada no parâmetro `Conteudo Avaliado` como indicado no `exemplo para entrega`.
- As perguntas e respostas devem ser elaboradas com a intenção de avaliar o aluno no extato tipo de conteúdo.

## Exemplo Perguntas com indicação de imagem
`Na página 15 há uma imagem de uma história em quadrinhos, essa pergunta faz referencia aquela imagem. "O que o personagem faz... *restante do enunciado da pergunta* " `

## Exemplo de enunciado da pergunta e respostas
```Conforme conteúdo da página 15, pode-se afirmar que na frase: "Ele foi correr" existem dois verbos?
A) Sim, um conjulgado e outro no gerundio.
B) Não, somente um conjulgado no passado.
c) Sim, ambos conjulgados no futuro.
d) Não, somente um no gerundio.
c) Sim, ambos no gerundio.
```

## Exemplo para entrega
```
--Conteudo Avaliado: Pontuação na lingua portuguesa.

SET @enuciado = '';    -- Enunciado da pergunda
SET @temimagem = '0';  -- Sempre é char(1) igual a zero
SET @fk_conteudo = 4;  -- 
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

## Trabalho Requisitado
- Gerar 3 perguntas por tópico do `conteúdo avaliativo`.


### Conteúdo Avaliativo
- As perguntas devem avaliar o aluno sobre *pontuação na escrita da lingua portuguesa*. Foco somente na utilização destes tipo de pontuação: *Reticências, aspas, dois pontos e parênteses.*

- Elabore as perguntas de forma randomica para que o aluno tenha que raciocinar sobre o conteúdo.
- Utilizar três underline ___ para indicar o local da pontuação nas frases das perguntas.
- Uma mesma frase pode utilizar mais de uma pontuação. Exemplo: "Ela, ontém, estava com 3 objetos em suas mãos: 1 cachorro, 1 bolsa e o seu telefone."