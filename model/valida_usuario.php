<?php
require_once(BASE_PATH."model/gerencia_conexaodb.php");

class valida_usuario{

    private ?conexaodb $conexao;
    private $sql;
    private $retorno;
    private $stmt;
    private $mysql;

    public function  __construct()
    {
        $this->conexao = null;
        $this->sql = '';
        $this->stmt = null;
        $this->mysql = null;
        $this->retorno = [];
    }

    public function verifica_existencia(string $email, string $senha){
        $this->conexao = new conexaodb();
        $this->mysql = $this->conexao->conecta();
        $this->sql = "select email, senha, tipoconta
        from validausuario where email = ? and senha = ENCRYPT(?, senha)";
        $this->stmt = $this->mysql->prepare($this->sql);
        $this->stmt->bind_param('ss', $email, $senha);
        $this->stmt->execute();
        $this->retorno = $this->stmt->get_result();
        return $this->retorno;
    }
}