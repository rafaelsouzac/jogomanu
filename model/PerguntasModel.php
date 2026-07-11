<?php
declare(strict_types=1);

class PerguntasModel{

    private ?VinculoBancoDeDados $conexao;

    public function __construct()
    {
        $obj_ligaBanco = new VinculoBancoDeDados();
        $conexao = $obj_ligaBanco->ligado();

    }

    private function selecionaPerguntas(int $pk_conteudo){
        $sql = "call usp_selecionar_perguntas(:pk_conteudo)";
        $banco = $this->conexao->prepare($sql);
        $banco->bindValue(
            ':pk_conteudo',
            $pk_conteudo,
            PDO::PARAM_INT
        );
        $banco->execute();

        $pk_perguntas = $banco->fetch(PDO::FETCH_ASSOC);

        return $pk_perguntas;
    }

    public function getPk_pergunta(int $pk_conteudo): array{
        return $this->selecionaPerguntas($pk_conteudo);
    }
}