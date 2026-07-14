<?php
declare(strict_types=1);

require_once(BASE_PATH . 'model/VinculoBancoDeDados.php');

class RespostasModel{

    private ?VinculoBancoDeDados $conexao;
    private $banco;
    public function __construct()
    {
        $obj_ligaBanco = new VinculoBancoDeDados();
        $conexao = $obj_ligaBanco->ligado();
        $this->banco = $conexao;
    }

    private function selecionaRespostas(int $pk_pergunta){
        $sql = "call usp_selecionar_respostas(:pk_pergunta)";
        $banco = $this->banco->prepare($sql);
        $banco->bindValue(
            ':pk_pergunta',
            $pk_pergunta,
            PDO::PARAM_INT
        );
        $banco->execute();

        while($linha = $banco->fetch(PDO::FETCH_ASSOC)){
            $pk_respostas[] = $linha;
        }

        return $pk_respostas;
    }

    public function getRespostas(int $pk_pergunta): array{
        return $this->selecionaRespostas($pk_pergunta);
    }
}