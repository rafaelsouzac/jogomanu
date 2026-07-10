<?php
declare(strict_types = 1);

class GabaritoModel{
    private int $quiz;
    private array $perguntas;

    public function __construct(int $fk_quiz, array $fk_perguntas)
    {
        $this->quiz = $fk_quiz;
        $this->perguntas = $fk_perguntas;
    }

    private function GerarGabarito(){
        //fazer insert para gerar o gabarito no estado incial.
        $obj_banco = new VinculoBancoDeDados();
        
        $conexao = $obj_banco->ligado();

        foreach($fk_pergunta as $this->fk_perguntas){
            $sql = 'Call usp_cadastar_gabarito(:fk_quiz, :fk_pergunta)';
            $stmt = $conexao->prepare($sql);

            $stmt->bindValue(
                ':fk_quiz',
                $this->quiz,
                PDO::PARAM_INT
            );

            $stmt->bindValue(
                ':fk_pergunta',
                $fk_pergunta,
                PDO::PARAM_INT
            );
            
            $stmt->execute();
        }
        
        $retorno = $stmt->fetch(PDO::FETCH_ASSOC);

        $stmt = null;

        $conexao = null;

        $obj_banco->desligado();

        $obj_banco  = null;

        return $retorno['gabarito_gerado'];
    }
}