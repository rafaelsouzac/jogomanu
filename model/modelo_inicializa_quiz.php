<?php
require_once(BASE_PATH."model/gerencia_conexaodb.php");

class inicializa_quiz_usuario{

    private ?mysqli $conexao;
    private string $sql;
    private $stmt;
    private array $retorno;

    public function __construct()
    {
        $this->conexao = null;
        $this->sql = '';
        $this->stmt = null;
        $this->retorno = [];
    }

    public function incere_dados($id_acesso_usuario){
        $this->conexao = new conexaodb();
        $this->stmt = $this->conexao->conecta();
    }
}