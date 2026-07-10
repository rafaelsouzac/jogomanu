<?php
declare(strict_types=1);

class QuizModel{

    private $conexao;

    public function __construct()
    {
        $obj_ligaBanco = new VinculoBancoDeDados();
        $conexao = $obj_ligaBanco->ligado();
    }

    private function IniciaQuiz(int $fk_usuario): int{
        
        $id_sessao = session_id();
                
        $sql = 'CALL usp_inserir_inicio_quiz(:fk_acessousuario, @saida)';
        
        $stmt = $this->conexao->prepare($sql);

        $stmt->bindValue(
            ':fk_acessousuario',
            $fk_acessoUsuario,
            PDO::PARAM_INT
        );

        $stmt->execute();

        $stmt->closeCursor();

        $retorno = $this->conexao->query('SELECT @saida as saida')->fetch(PDO::FETCH_ASSOC);

        return $retorno['saida'];
    }
}