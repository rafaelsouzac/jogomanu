<?php
declare(strict_types = 1);

class AcessoUsuario{

    private int $fk_usuario;
    private string $pk_sessao;
    private ?VinculoBancoDeDados $conexao;

    public function __construct()
    {
        $this->fk_usuario = (int) $_SESSION['usuario'];
        $this->pk_sessao  = session_id();
        $this->conexao = new VinculoBancoDeDados();
        $this->conexao->ligado();
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

        $retorno = $this->conexao->query("Select @saida as Saida")->fetch(PDO::FETCH_ASSOC);

        $stmt->closeCursor();

        $this->conexao->desligado();

        return (int) $retorno['Saida'];
    }

    public function getAcessoUsuario(){
        return $this->acessoUsuario($this->fk_usuario, $this->pk_sessao);
    }
}