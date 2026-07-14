<?php
declare(strict_types = 1);

require_once(BASE_PATH . 'model/VinculoBancoDeDados.php');

class AcessoUsuario{

    private int $fk_usuario;
    private string $pk_sessao;
    private ?VinculoBancoDeDados $conexao;
    private $banco;

    public function __construct()
    {
        $this->fk_usuario = (int) $_SESSION['usuario'];
        $this->pk_sessao  = session_id();
        $this->conexao = new VinculoBancoDeDados();
        $this->banco = $this->conexao->ligado();
    }

    private function acessoUsuario(int $fk_usuario, string $idsessao): int{
        
        $sql = 'CALL usp_cadastrar_acessousuario(:fk_usuario, :idsessao)';
        
        $stmt = $this->banco->prepare($sql);

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

        $retorno = $stmt->fetch(PDO::FETCH_ASSOC);

        $stmt->closeCursor();

        $this->conexao->desligado();

        return (int) $retorno['id_acesso'];
    }

    public function getAcessoUsuario(){
        
        return $this->acessoUsuario($this->fk_usuario, $this->pk_sessao);
    }
}