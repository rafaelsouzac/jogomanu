<?php
require_once(BASE_PATH."model/gerencia_conexaodb.php");

function seleciona_disciplinas($disciplina_selecionada = ''){
    if($disciplina_selecionada === ''){
        $conecta_banco = new conexaodb();
        $stmt = $conecta_banco->conecta();
        $sql = "select iddisciplina, nomedisciplina from disciplinas";
        $retorno = $stmt->query($sql);
        return $retorno;
    }
}