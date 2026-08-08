# Contexto
Você atuará como um professor para gerar perguntas e respostas com base na imagem em anexo.

# Regras de Negócio
- Cada pergunta tem cinco possibilidades de resposta.
- As respostas somente uma é correta as demais são incorretas.
- A fk_conteudo será informada no comentário `SET @fk_conteudo` , igual ao `exemplo para entrega`.
- Usar o número da fk_conteudo no local indicado.
- fk_pergunta é um parâmetro de saída e é utilizada em usp_inserir_resposta como demonstrado no `exemplo para entrega`.

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
- Você vai transformar o código json contido em `codigo json` e gerar a entrega solicitada.

## Codigo Json
```
-- ==========================================================
-- QUESTÃO 1
-- ==========================================================

SET @cad_pergunta_respostas = json_object(
    'enunciado', 'Qual é o traço visual mais característico do personagem Menino Maluquinho?',
    'temimagem', 0,
    'fk_disciplina', 7,
    'respostas', json_array(

        json_object(
            'fk_pergunta', @id_pergunta,
            'status_resposta','C',
            'temimagem','0',
            'enunciado_resposta','A panela na cabeça.'
        ),

        json_object(
            'fk_pergunta', @id_pergunta,
            'status_resposta','I',
            'temimagem','0',
            'enunciado_resposta','Um boné azul.'
        ),

        json_object(
            'fk_pergunta', @id_pergunta,
            'status_resposta','I',
            'temimagem','0',
            'enunciado_resposta','Um chapéu de palha.'
        ),

        json_object(
            'fk_pergunta', @id_pergunta,
            'status_resposta','I',
            'temimagem','0',
            'enunciado_resposta','Um capacete de bicicleta.'
        ),

        json_object(
            'fk_pergunta', @id_pergunta,
            'status_resposta','I',
            'temimagem','0',
            'enunciado_resposta','Uma boina.'
        )
    )
);

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 2
-- ==========================================================

SET @cad_pergunta_respostas = json_object(
    'enunciado', 'Segundo o texto da página, o Menino Maluquinho convidou seus amigos para uma aventura de:',
    'temimagem',0,
    'fk_disciplina',7,
    'respostas',json_array(

        json_object(
            'fk_pergunta',@id_pergunta,
            'status_resposta','I',
            'temimagem','0',
            'enunciado_resposta','Pescar no rio.'
        ),

        json_object(
            'fk_pergunta',@id_pergunta,
            'status_resposta','C',
            'temimagem','0',
            'enunciado_resposta','Combate à dengue.'
        ),

        json_object(
            'fk_pergunta',@id_pergunta,
            'status_resposta','I',
            'temimagem','0',
            'enunciado_resposta','Acampar na floresta.'
        ),

        json_object(
            'fk_pergunta',@id_pergunta,
            'status_resposta','I',
            'temimagem','0',
            'enunciado_resposta','Caçar tesouros.'
        ),

        json_object(
            'fk_pergunta',@id_pergunta,
            'status_resposta','I',
            'temimagem','0',
            'enunciado_resposta','Viajar para a praia.'
        )
    )
);

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 3
-- ==========================================================

SET @cad_pergunta_respostas=json_object(

'enunciado','Na página apresentada, o Menino Maluquinho chega em qual lugar?',
'temimagem',0,
'fk_disciplina',7,

'respostas',json_array(

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','C',
'temimagem','0',
'enunciado_resposta','Em casa.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Na escola.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','No parque.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Na biblioteca.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','No mercado.'
)

));

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 4
-- ==========================================================

SET @cad_pergunta_respostas=json_object(

'enunciado','Quem é chamado pelo Menino Maluquinho quando ele chega?',
'temimagem',0,
'fk_disciplina',7,

'respostas',json_array(

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','C',
'temimagem','0',
'enunciado_resposta','Sua mãe.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Seu pai.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Seu avô.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Seu irmão.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Seu amigo.'
)

));

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 5
-- ==========================================================

SET @cad_pergunta_respostas=json_object(

'enunciado','Qual elemento visual mostra que o Menino Maluquinho está falando?',
'temimagem',0,
'fk_disciplina',7,

'respostas',json_array(

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','C',
'temimagem','0',
'enunciado_resposta','O balão de fala.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','As gotas de suor.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Os traços de movimento.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','A cor da roupa.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','A porta aberta.'
)

));

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 6
-- ==========================================================

SET @cad_pergunta_respostas=json_object(

'enunciado','Que tipo de balão aparece sobre a mãe do Menino Maluquinho?',
'temimagem',0,
'fk_disciplina',7,

'respostas',json_array(

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','C',
'temimagem','0',
'enunciado_resposta','Balão de pensamento.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Balão de grito.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Balão de sussurro.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Legenda.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Caixa de narração.'
)

));

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 7
-- ==========================================================

SET @cad_pergunta_respostas=json_object(

'enunciado','As gotas desenhadas ao lado do rosto da mãe indicam:',
'temimagem',0,
'fk_disciplina',7,

'respostas',json_array(

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','C',
'temimagem','0',
'enunciado_resposta','Preocupação ou nervosismo.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Alegria.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Sono.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Frio.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Fome.'
)

));

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 8
-- ==========================================================

SET @cad_pergunta_respostas=json_object(

'enunciado','Os traços desenhados ao redor do Menino Maluquinho no segundo quadrinho representam:',
'temimagem',0,
'fk_disciplina',7,

'respostas',json_array(

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','C',
'temimagem','0',
'enunciado_resposta','Movimento.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Chuva.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Vento.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Calor.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Som.'
)

));

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 9
-- ==========================================================

SET @cad_pergunta_respostas=json_object(

'enunciado','O balão acima da mãe mostra que ela está:',
'temimagem',0,
'fk_disciplina',7,

'respostas',json_array(

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','C',
'temimagem','0',
'enunciado_resposta','Pensando.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Cantando.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Dormindo.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Escrevendo.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Lendo.'
)

));

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 10
-- ==========================================================

SET @cad_pergunta_respostas=json_object(

'enunciado','Pelos quadrinhos, é possível concluir que o Menino Maluquinho é uma criança:',
'temimagem',0,
'fk_disciplina',7,

'respostas',json_array(

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','C',
'temimagem','0',
'enunciado_resposta','Muito agitada e cheia de energia.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Muito tímida.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Sempre triste.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Muito silenciosa.'
),

json_object(
'fk_pergunta',@id_pergunta,
'status_resposta','I',
'temimagem','0',
'enunciado_resposta','Desinteressada pelas brincadeiras.'
)

));

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);
```