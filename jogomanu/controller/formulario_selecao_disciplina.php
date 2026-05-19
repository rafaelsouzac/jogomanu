<?php
require_once(BASE_PATH.'/model/seleciona_disciplinas.php');


if(isset($_GET['disciplina']) && isset($_GET['materia']) && isset($_GET['numero_questoes'])){
    $nome_disciplina = $_GET['disciplina'];
    $nome_materia = $_GET['materia'];
    $quantidade_questoes = $_GET['quant_questoes'];
    echo('entrei no 3');
    exit;
    //executa query sql para as 3 opções
    //header("Location: ../exercicios/$nome_disciplina/$nome_materia/
    //$quantidade_questoes");

}elseif(isset($_GET['disciplina']) && isset($_GET['materia'])){
    $nome_disciplina = $_GET['disciplina'];
    $nome_materia = $_GET['materia'];

    //executa query sql para as 3 opções
    //header("Location: questionario.php/");
      echo('entrei no 3');
    exit;
}elseif(isset($_GET['disciplina'])){
        $nome_disciplina = $_GET['disciplina'];
        echo('$nome_disciplina');
        exit;
}
function disciplinas_nao_selecionadas(){
      echo('entrei no função');
    exit;
    return seleciona_disciplinas();
}