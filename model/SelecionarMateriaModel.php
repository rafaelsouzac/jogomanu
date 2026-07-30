<?php

declare(strict_types = 1);

require_once(BASE_PATH . 'model/VinculoBancoDeDados.php');

class SelecionarMateriaModel{

    private ?VinculoBancoDeDados $acesso;
    
    public function __construct()
    {
        $this->acesso = new VinculoBancoDeDados();
    }

    public function SelecionarDisciplina(){
        $stmt = $this->acesso->ligado();
        $sql = "call usp_seleionar_disciplina()";
        $stmt = $stmt->prepare($sql);
        $stmt->execute();
        $retorno = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $this->acesso->desligado();
        $stmt->closeCursor();

        return $retorno;
    }

    public function SelecionarConteudo(int $disciplina){
        $stmt = $this->acesso->ligado();
        $sql = "call usp_seleionar_conteudo(:disciplina)";
        $stmt = $stmt->prepare($sql);
        $stmt->bindValue(':disciplina', $disciplina, PDO::PARAM_INT);
        $stmt->execute();
        $retorno = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $this->acesso->desligado();
        $stmt->closeCursor();

        return $retorno;
    }
}