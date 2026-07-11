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

        $sql = "call cadastrar_quiz(:acesso_usuario)";

        $banco = $this->conexao->ligado();

        $stmt = $banco->prepare($sql);

        $stmt->bindValue(
            ':acesso_usuario',
            $acesso_usuario,
            PDO::PARAM_INT
        );

        $stmt->execute();

        return $stmt->query('Select @retorno as retorno')->fetch(PDO::FETCH_ASSOC);

    }
}