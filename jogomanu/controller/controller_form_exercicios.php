<?php
require_once(BASE_PATH.'model/conexaodb.php');

if(isset($_POST['questionario_aluno'])){
    $id_resposta = $_POST['alternativa'];
    $id_acesso_usuario = $_SESSION['idacessousuario'];
}
else{
    //cadastra o inicio do quiz
    require_once(BASE_PATH.'model/model_inicializa_quiz.php');
    $id_quiz_aluno = new insere_dados_quiz_aluno;
    $id_acesso_usuario = $_SESSION['acessousuario'];
    $_SESSION['idacessousuario'] = $id_quiz_aluno->insere_dados($id_acesso_usuario);
}

//TODAS AS DEFINIÇÕES DE SEO ACONTECEM NO CONTROLLER
$titulo_pagina = 'Jogo Manu - Conteúdo Para Ensino Fundamental E Ensino Médido';

//PARTES FIXAS DA PÁGINA
$parte = 'exercicios.php';

header("Location: quarta-serie/matematica/geometria/exercicios/One");
