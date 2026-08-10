<?php
declare(strict_types = 1);

require_once(BASE_PATH . 'model/SelecionarMateriaModel.php');

if(!$_POST){
    $obj_materia = new SelecionarMateriaModel();
    $disciplina = $obj_materia->SelecionarDisciplina();
    $conteudo = false;
    $view_disciplina = true;
    $texto_botao = "Enviar Disciplina";
}

if(isset($_POST['pk_disciplina'])){
    $disciplina_selecionada = (int) $_POST['pk_disciplina'];
    $obj_materia = new SelecionarMateriaModel();
    $disciplina = $obj_materia->SelecionarDisciplina();
    
    $conteudo = $obj_materia->SelecionarConteudo($disciplina_selecionada);
    $texto_botao = "Enviar Conteúdo";
    $view_disciplina = false;
}

if(isset($_POST['pk_conteudo'])){
    //envia para o quiz com a seleção do conteudo;
        $_SESSION['conteudo_selecionado'] = $_POST['pk_conteudo'];
        header("Location: /jogomanu/quiz");
}

$parteCentro = 'SelecionarConteudo.php';