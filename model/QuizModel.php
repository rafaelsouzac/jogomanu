<?php

declare(strict_types=1);

require_once(BASE_PATH . 'model/VinculoBancoDeDados.php');

class QuizModel{

    public function IniciaQuiz(string $usuario): void{
        $obj_ligaBanco = new VinculoBancoDeDados();
        $conexao = $obj_ligaBanco->ligado();
        $conexao = null;
        $obj_ligaBanco->desligado();
    }
}