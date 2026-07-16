<?php
declare(strict_types = 1);

require_once(BASE_PATH . 'model/RespostasModel.php');

//  p1. Buscar a escolha do usuario
if(isset($_POST['alternativa'])){
    $alternativa_selecionada = (int) $_POST['alternativa'];
    
    $pergunta_atual = (int) $_SESSION['pk_Pergunta_Atual'];

    $pk_quiz = (int) $_SESSION['pk_quiz'];

    $obj_resp = new RespostasModel();

    $obj_resp->setResposta($pk_quiz, $pergunta_atual, $alternativa_selecionada);

    $slug = '';
    
    if($_SESSION['indice_pergunta'] + 1 > array_key_last($_SESSION['numero_perguntas'])){
        $slug = "/jogomanu/statistica";
    }else{
        $slug = "/jogomanu/quiz";
    }
}

header("Location: $slug");