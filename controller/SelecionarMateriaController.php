<?php
declare(strict_types = 1);

require_once(BASE_PATH . 'model/SelecionarMateriaModel.php');

if(!$_POST){
    $obj_materia = new SelecionarMateriaModel();
    $disciplina = $obj_materia->SelecionarDisciplina();
}
$parteCentro = 'SelecionarConteudo.php';