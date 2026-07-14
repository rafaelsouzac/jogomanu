<?php
declare(strict_types=1);

require_once(BASE_PATH . 'model/VinculoBancoDeDados.php');

class QuizModel{

    private ?VinculoBancoDeDados $conexao;

    public function __construct()
    {
        $this->conexao = new VinculoBancoDeDados();
    }

    public function CadastrarQuiz(int $acesso_usuario){

        $sql = "call usp_cadastrar_quiz(:acesso_usuario)";

        $banco = $this->conexao->ligado();

        $stmt = $banco->prepare($sql);

        $stmt->bindValue(
            ':acesso_usuario',
            $acesso_usuario,
            PDO::PARAM_INT
        );

        $stmt->execute();
        
        $retorno = $stmt->fetch(PDO::FETCH_ASSOC);

        return $retorno['pk_quiz'];

    }
}