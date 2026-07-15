<?php
declare(strict_types = 1);

require_once(BASE_PATH . 'model/RespostasModel.php');

//  p1. Buscar a escolha do usuario
if(isset($_POST['alternativa'])){
    $alternativa_selecionada = $_POST['alternativa'];
    $pergunta_atual = $_SESSION['Pergunta_Atual'];

    $obj_resp = new RespostasModel();

    $obj_resp->inserirResposta($pergunta_atual);
}

//  p2. insere resposta no banco

//  p3.verifica se é a ultima pergunta do quiz

//  p4. se for a lutima pergunta envia para a EstatisticaController.php

// p4. se não for, atualiza a pergunta e reenvia para o quiz.

$pergunta_atual = $_SESSION['Pergunta_Atual'];
$pergunta_atual += 1;
$_SESSION['Pergunta_Atual'] = $pergunta_atual;
header("Location: /jogomanu/quiz");