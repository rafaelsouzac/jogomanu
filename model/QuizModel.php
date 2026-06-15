<?php

declare(strict_types=1);

require_once(BASE_PATH . 'model/VinculoBancoDeDados.php');

class QuizModel{

    public function IniciaQuiz(string $usuario): void{
        $obj_ligaBanco = new VinculoBancoDeDados();
        $conexao = $obj_ligaBanco->ligado();
        $sql = "call usp_inicia_quiz(:usuario)";
        $stmt = $conexao->prepare($sql);
        $stmt->bindValue(
            ':usuario',
            $usuario,
            PDO::PARAM_STR
        );
        $retorno = $stmt->execute();
        $stmt = null;
        $conexao = null;
        $obj_ligaBanco->desligado();
    }
}