-- ==========================================================
-- QUESTÃO 1
-- ==========================================================

SET @cad_pergunta_respostas = json_object(
    "enunciado", "Qual é o traço visual mais característico do personagem Menino Maluquinho?",
    "temimagem", 0,
    "fk_conteudo", 7,
    "respostas", json_array(

        json_object(
            "fk_pergunta", @id_pergunta,
            "status_resposta","C",
            "temimagem","0",
            "enunciado_resposta","A panela na cabeça."
        ),

        json_object(
            "fk_pergunta", @id_pergunta,
            "status_resposta","I",
            "temimagem","0",
            "enunciado_resposta","Um boné azul."
        ),

        json_object(
            "fk_pergunta", @id_pergunta,
            "status_resposta","I",
            "temimagem","0",
            "enunciado_resposta","Um chapéu de palha."
        ),

        json_object(
            "fk_pergunta", @id_pergunta,
            "status_resposta","I",
            "temimagem","0",
            "enunciado_resposta","Um capacete de bicicleta."
        ),

        json_object(
            "fk_pergunta", @id_pergunta,
            "status_resposta","I",
            "temimagem","0",
            "enunciado_resposta","Uma boina."
        )
    )
);

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 2
-- ==========================================================

SET @cad_pergunta_respostas = json_object(
    "enunciado", "Segundo o texto da página, o Menino Maluquinho convidou seus amigos para uma aventura de:",
    "temimagem",0,
    "fk_conteudo", 7,
    "respostas",json_array(

        json_object(
            "fk_pergunta",@id_pergunta,
            "status_resposta","I",
            "temimagem","0",
            "enunciado_resposta","Pescar no rio."
        ),

        json_object(
            "fk_pergunta",@id_pergunta,
            "status_resposta","C",
            "temimagem","0",
            "enunciado_resposta","Combate à dengue."
        ),

        json_object(
            "fk_pergunta",@id_pergunta,
            "status_resposta","I",
            "temimagem","0",
            "enunciado_resposta","Acampar na floresta."
        ),

        json_object(
            "fk_pergunta",@id_pergunta,
            "status_resposta","I",
            "temimagem","0",
            "enunciado_resposta","Caçar tesouros."
        ),

        json_object(
            "fk_pergunta",@id_pergunta,
            "status_resposta","I",
            "temimagem","0",
            "enunciado_resposta","Viajar para a praia."
        )
    )
);

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 3
-- ==========================================================

SET @cad_pergunta_respostas=json_object(

"enunciado","Na página apresentada, o Menino Maluquinho chega em qual lugar?",
"temimagem",0,
"fk_conteudo",7,

"respostas",json_array(

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","C",
"temimagem","0",
"enunciado_resposta","Em casa."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Na escola."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","No parque."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Na biblioteca."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","No mercado."
)

));

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 4
-- ==========================================================

SET @cad_pergunta_respostas=json_object(

"enunciado","Quem é chamado pelo Menino Maluquinho quando ele chega?",
"temimagem",0,
"fk_conteudo",7,

"respostas",json_array(

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","C",
"temimagem","0",
"enunciado_resposta","Sua mãe."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Seu pai."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Seu avô."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Seu irmão."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Seu amigo."
)

));

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 5
-- ==========================================================

SET @cad_pergunta_respostas=json_object(

"enunciado","Qual elemento visual mostra que o Menino Maluquinho está falando?",
"temimagem",0,
"fk_conteudo", 7,

"respostas",json_array(

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","C",
"temimagem","0",
"enunciado_resposta","O balão de fala."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","As gotas de suor."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Os traços de movimento."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","A cor da roupa."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","A porta aberta."
)

));

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 6
-- ==========================================================

SET @cad_pergunta_respostas=json_object(

"enunciado","Que tipo de balão aparece sobre a mãe do Menino Maluquinho?",
"temimagem",0,
"fk_conteudo",7,

"respostas",json_array(

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","C",
"temimagem","0",
"enunciado_resposta","Balão de pensamento."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Balão de grito."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Balão de sussurro."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Legenda."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Caixa de narração."
)

));

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 7
-- ==========================================================

SET @cad_pergunta_respostas=json_object(

"enunciado","As gotas desenhadas ao lado do rosto da mãe indicam:",
"temimagem",0,
"fk_conteudo",7,

"respostas",json_array(

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","C",
"temimagem","0",
"enunciado_resposta","Preocupação ou nervosismo."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Alegria."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Sono."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Frio."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Fome."
)

));

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 8
-- ==========================================================

SET @cad_pergunta_respostas=json_object(

"enunciado","Os traços desenhados ao redor do Menino Maluquinho no segundo quadrinho representam:",
"temimagem",0,
"fk_conteudo",7,

"respostas",json_array(

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","C",
"temimagem","0",
"enunciado_resposta","Movimento."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Chuva."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Vento."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Calor."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Som."
)

));

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 9
-- ==========================================================

SET @cad_pergunta_respostas=json_object(

"enunciado","O balão acima da mãe mostra que ela está:",
"temimagem",0,
"fk_conteudo",7,

"respostas",json_array(

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","C",
"temimagem","0",
"enunciado_resposta","Pensando."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Cantando."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Dormindo."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Escrevendo."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Lendo."
)

));

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);

-- ==========================================================
-- QUESTÃO 10
-- ==========================================================

SET @cad_pergunta_respostas=json_object(

"enunciado","Pelos quadrinhos, é possível concluir que o Menino Maluquinho é uma criança:",
"temimagem",0,
"fk_conteudo",7,

"respostas",json_array(

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","C",
"temimagem","0",
"enunciado_resposta","Muito agitada e cheia de energia."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Muito tímida."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Sempre triste."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Muito silenciosa."
),

json_object(
"fk_pergunta",@id_pergunta,
"status_resposta","I",
"temimagem","0",
"enunciado_resposta","Desinteressada pelas brincadeiras."
)

));

CALL usp_cadastro_pergunta_respostas(@cad_pergunta_respostas);