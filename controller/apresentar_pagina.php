<?php 
require_once(BASE_PATH . 'model/conexaodb.php');

class apresentar_pagina {
    private string $sql;
    private $conexao;
    private $db;
    private array $retorno;
    private $stmt;
    private $resultado;

    public function __construct() {
        $this->sql = "";
        $this->retorno = [];
    }

    public function pesquisa_pagina(string $slug) {
        $this->conexao = new conexaodb();
        $this->db = $this->conexao->conecta();
        $this->sql = "SELECT pagina FROM slugs WHERE slug = ?";
        $this->stmt = $this->db->prepare($this->sql);

        if($this->stmt){
            $this->stmt->bind_param("s", $slug);
            $this->stmt->execute();
            $this->resultado = $this->stmt->get_result();
            $this->retorno = $this->resultado->fetch_all(MYSQLI_ASSOC);
            $this->stmt->close();
        }
        $this->db->close();
        return $this->retorno;
    }
}