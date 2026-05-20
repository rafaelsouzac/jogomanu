<?php
require_once(BASE_PATH.'model/incere_resposta_quiz.php');

//================ PROCESSA FORMULARIO DE ENVIO DE RESPOSTAS DO QUIZ ==============
if(isset($_POST['questionario_aluno'])){
    $id_resposta = $_POST['alternativa'];
    $id_acesso_usuario = $_SESSION['idacessousuario'];
    $ob_incere_resposta = new incere_resposta_quiz();
    $retorno = $ob_incere_resposta->set_incere_resposta($id_resposta, $id_acesso_usuario);
    $indice_questao = $_SESSION['numeroquestao'];
    $indice_questao = $indice_questao + 1;
    

    if($retorno && $indice_questao < 10){
        header("Location: quarta-serie/matematica/geometria/exercicios/");
    }
    elseif($retorno && $indice_questao == 10){
        //apresenta desempenho
    }
}
else{
    //cadastra o inicio do quiz
    require_once(BASE_PATH.'model/model_inicializa_quiz.php');

    $id_quiz_aluno = new insere_dados_quiz_aluno();
    $id_acesso_usuario = $_SESSION['acessousuario'];
    $_SESSION['idacessousuario'] = $id_quiz_aluno->insere_dados($id_acesso_usuario);
    $_SESSION['numeroquestao'] = 0;
}

//TODAS AS DEFINIÇÕES DE SEO ACONTECEM NO CONTROLLER
$titulo_pagina = 'Jogo Manu - Conteúdo Para Ensino Fundamental E Ensino Médido';

//PARTES FIXAS DA PÁGINA
$parte = 'exercicios.php';

