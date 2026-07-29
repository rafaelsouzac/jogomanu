<?php
declare(strict_types = 1);

require_once(BASE_PATH . 'model/VinculoBancoDeDados.php');

class FinalizarQuizModel{

    private ?PDO $conexao;
    private string $sql;

    public function __construct()
    {
        $obj_banco = new VinculoBancoDeDados();
        $this->conexao = $obj_banco->ligado();
    }

    public function FinalizarQuiz(){

        $this->sql = 'call usp_atualizar_quizes(:acesso_usuario)';

        $stmt = $this->conexao->prepare($this->sql);

        $stmt->bindValue(
            ':acesso_usuario',
            $_SESSION['acesso_usuario'],
            PDO::PARAM_INT
        );

        $stmt->execute();
    }
}