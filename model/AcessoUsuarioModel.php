<?php
declare(strict_types = 1);

class AcessoUsuario{
    public function __construct()
    {
        $fk_usuario = $_SESSION['usuario'];
        $pk_sessao  = session_id();
        $conexao = new VinculoBancoDeDados();
        $conexao->ligado();
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

        $this->conexao->desligado();

        $retorno = $this->conexao->query("Select @saida as Saida")->fetch(PDO::FETCH_ASSOC);

        return (int) $retorno['Saida'];
    }

    public function getAcessoUsuario(){
        return $this->acessoUsuario($this->fk_usuario, $this->pk_sessao);
    }
}