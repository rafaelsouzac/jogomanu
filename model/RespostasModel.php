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
    private function inserirResposta(int $pk_resposta, string $alternativa){
        $sql = 'call usp_atualizar_gabarito(:pk_quiz, :pk_pergnta, :pk_resposta)';
        $banco = $this->banco->prepare($sql);

        $banco->bindValue(
            'pk_quiz',
            $_SESSION['x'],
            PDO::PARAM_INT
        );
        $banco->bindValue(
            ':pk_pergunta',
            $_SESSION['x'],
            PDO::PARAM_INT
        );
        $banco->bindValue(
            ':pk_resposta',
            $_SESSION['x'],
            PDO::PARAM_INT
        );

        $banco->execute();

        $banco->closeCursor();

        $banco = null;

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

        $banco->closeCursor();

        $banco = null;
        return $pk_respostas;
    }

    public function getRespostas(int $pk_pergunta): array{
        return $this->selecionaRespostas($pk_pergunta);
    }

    public function setResposta(int $pk_quiz, int $pk_pergunta, int $pk_resposta){
        $this->inserirResposta($pk_quiz, $pk_pergunta, $pk_reposta);
    }
}