<?php
declare(strict_types = 1);

require_once(BASE_PATH . 'model/VinculoBancoDeDados.php');

class EstatisticaModel{

    private ?VinculoBancoDeDados $conexao;
    private $banco;

    public function __construct()
    {
        $this->conexao = new VinculoBancoDeDados();
        $this->banco = $this->conexao->ligado();
    }

    private function estatisticaCabecalho(int $quiz){
        
        $sql = "call usp_selecionar_cabecalho_estatistica(:quiz)";

        $stmt = $this->banco->prepare($sql);

        $stmt->bindValue(
            ':quiz',
            $quiz,
            PDO::PARAM_INT
        );

        $stmt->execute();

        $retorno = $stmt->fetch(PDO::FETCH_ASSOC);

        return $retorno;
    }

    public function get_estatistica_cabecalho(int $quiz){
        
        return $this->estatisticaCabecalho($quiz);
    
    }
}