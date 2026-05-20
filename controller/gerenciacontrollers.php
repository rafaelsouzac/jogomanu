<?php 
require_once(BASE_PATH . 'model/conexaodb.php');

class gerencia_controllers {
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

    public function gerencia(string $slug) {
        $this->conexao = new conexaodb();
        $this->db = $this->conexao->conecta();
        //Busca ID do slug vazio
        $this->sql = "(SELECT controller as slug FROM slugs WHERE slug = ?) UNION ALL (SELECT 'controller_home.php' AS slug) LIMIT 1;";
        //echo("$this->sql");
        //echo("$slug");
        $this->stmt = $this->db->prepare($this->sql);
        $this->stmt->bind_param("s", $slug);
        $this->stmt->execute();
        $this->resultado = $this->stmt->get_result();
        $this->retorno = $this->resultado->fetch_all(MYSQLI_ASSOC);
        $this->stmt->close();
        $this->db->close();
        return $this->retorno;
    }
}