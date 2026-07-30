<?php

declare(strict_types = 1);

require_once(BASE_PATH . 'model/VinculoBancoDeDados.php');

class SelecionarMateriaModel{

    private ?VinculoBancoDeDados $acesso;
    
    public function __construct()
    {
        $this->acesso = new VinculoBancoDeDados();
        $stmt = $this->acesso->ligado();
        $sql = "";
        $stmt = $stmt->prepare($sql);
        $stmt->bindValue();
        $stmt->execute();
        $this->acesso->desligado();
    }
}