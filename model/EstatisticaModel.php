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

    private function estatisticasQuiz(int $quiz, bool $query = false){
        
        if($query){
            $sql = "call usp_selecionar_cabecalho_estatistica(:quiz)";   
        }
        else{
            $sql = "call usp_selecionar_correcao_quiz(:quiz)";
        }
        
        $stmt = $this->banco->prepare($sql);

        $stmt->bindValue(
            ':quiz',
            $quiz,
            PDO::PARAM_INT
        );

        $stmt->execute();

        $retorno = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $retorno;
    }

    public function get_estatistica_cabecalho(int $quiz, bool $query = true){
        
        return $this->estatisticasQuiz($quiz, $query);
    
    }
}