<?php
declare(strict_types=1);

class RespostasModel{

    private ?VinculoBancoDeDados $conexao;

    public function __construct()
    {
        $obj_ligaBanco = new VinculoBancoDeDados();
        $conexao = $obj_ligaBanco->ligado();

    }

    private function selecionaRespostas(int $pk_pergunta){
        $sql = "call usp_selecionar_respostas(:pk_pergunta)";
        $banco = $this->conexao->prepare($sql);
        $banco->bindValue(
            ':pk_pergunta',
            $pk_pergunta,
            PDO::PARAM_INT
        );
        $banco->execute();

        $pk_respostas = $banco->fetch(PDO::FETCH_ASSOC);

        return $pk_respostas;
    }

    public function getRespostas(int $pk_pergunta): array{
        return $this->selecionaRespostas($pk_pergunta);
    }
}