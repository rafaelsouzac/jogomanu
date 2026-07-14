<?php
declare(strict_types=1);

require_once(BASE_PATH . 'model/VinculoBancoDeDados.php');

class PerguntasModel{

    private ?VinculoBancoDeDados $conexao;
    private $banco;

    public function __construct()
    {

        $this->conexao = new VinculoBancoDeDados();
        $this->banco = $this->conexao->ligado();
    }

    private function selecionaPerguntas(int $pk_conteudo){
        $sql = "call usp_selecionar_perguntas(:pk_conteudo)";
        $banco = $this->banco->prepare($sql);
        $banco->bindValue(
            ':pk_conteudo',
            $pk_conteudo,
            PDO::PARAM_INT
        );
        $banco->execute();
        $pk_pergunta = array();
        
        while($pks = $banco->fetch(PDO::FETCH_ASSOC)){
            $pk_pergunta[] = $pks;
        };

        return $pk_pergunta;
    }

    public function getPk_pergunta(int $pk_conteudo): array{
        return $this->selecionaPerguntas($pk_conteudo);
    }

}