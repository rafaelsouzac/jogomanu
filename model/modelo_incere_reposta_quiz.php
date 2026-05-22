<?php
require_once(BASE_PATH.'model/gerencia_conexaodb.php');

class incere_resposta_quiz{
    private $conexao;
    private $stmt;
    private $sql;
    private $resultado;
    private $retorno;
    private $db_ativa;
    private $stmt;

    public function __construct()
    {
        $this->conexao = null;
        $this->db_ativa = null;
        $this->stmt = null;
        $this->sql = '';
        $this->resultado = [];
        $this->retorno = [];
    }

    private function incere_resposta(int $id_acessousuario, string $idresposta){
        $this->conexao = new conexaodb();
        $this->db_ativa = $this->conexao->conecta();
        $this->sql = 'call sp_insere_reposta_quiz(?, ?)';
        $this->stmt = $this->db_ativa->prepare($this->sql);
        $this->stmt->bind_param('is', $id_acessousuario, $idresposta);
        $this->stmt->execute();
        $this->retorno = $this->stmt->affected_rows;
        return $this->retorno;
    }

    public function set_incere_resposta(int $id_acessousuario, string $idresposta){
        return $this->incere_resposta($id_acessousuario, $idresposta);
    }
}