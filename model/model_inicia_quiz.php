<?php

require_once(BASE_PATH.'model/gerencia_conexaodb.php');

class incia_quiz{

    private $idquizaluno;
    private $sql;
    private $db_acessado;
    private $stmt;
    private $conexao;
    private $retorno;

    public function __construct()
    {
        $this->idquizaluno = '';
        $this->sql = '';
        $this->db_acessado = null;
        $this->stmt = null;
        $this->conexao = null;
        $this->retorno = [];
    }

    private function insere_retorna_dados_quizalunos(int $idacessousuario){
        $this->conexao = new conexaodb();
        $this->sql = 'call sp_inicia_quiz(?)';
        $this->db_acessado = $this->conexao->conecta();
        $this->stmt = $this->db_acessado->prepare($this->sql);
        $this->stmt->bind_param('i', $idacessousuario);
        $this->stmt->execute();
        $this->retorno = $this->stmt->get_result();
        return $this->retorno;
    }

    public function get_id_quiz_aluno(int $idacessousuario){
        return $this->insere_retorna_dados_quizalunos($idacessousuario);
    }
}