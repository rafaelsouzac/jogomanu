<?php

declare(strict_types=1);

require_once(BASE_PATH . 'model/VinculoBancoDeDados.php');

class QuizModel{

    private $conexao;

    public function __construct()
    {
        $obj_ligaBanco = new VinculoBancoDeDados();
        $conexao = $obj_ligaBanco->ligado();
    }

    private function acessoUsuario(int $fk_usuario, string $idsessao): int{
        $sql = 'CALL usp_cadastrar_acessousuario(:fk_usuario, :idsessao, @saida)';
        $stmt = $this->conexao->prepare($sql);

        $stmt->bindValue(
            ':fk_usuario',
            $fk_usuario,
            PDO::PARAM_INT
        );

        $stmt->bindValue(
            ':idsessao',
            $idsessao,
            PDO::PARAM_STR
        );

        $stmt->execute();

        $stmt->closeCursor();

        $retorno = $this->conexao->query("Select @saida as Saida")->fetch(PDO::FETCH_ASSOC);
    
        return (int) $retorno['Saida'];
    }

    public function IniciaQuiz(int $fk_usuario): int{
        
        $id_sessao = session_id();
        
        $fk_acessoUsuario = $this->acessoUsuario($fk_usuario, $id_sessao);
        
        $sql = 'CALL usp_cadastrar_inicioQuiz(:fk_acessousuario, @saida)';
        
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