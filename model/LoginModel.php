<?php
declare(strict_types=1);

require_once(BASE_PATH . 'model/VinculoBancoDeDados.php');

class LoginModel{
    
    private VinculoBancoDeDados $obj_Vinculo;

    private function utilizaBanco(array $valor){

        $this->obj_Vinculo = new VinculoBancoDeDados();
        
        $conexao = $this->obj_Vinculo->ligado();

        $sql = 'call usp_autentica_usuario(:usuario, :senha);';

        $conexao = $conexao->prepare($sql);
        
        $conexao->bindValue(
            ':usuario',
            $valor[0],
            PDO::PARAM_STR
        );

        $conexao->bindValue(
            ':senha',
            $valor[1],
            PDO::PARAM_STR
        );
        
        $conexao->execute();

        $retorno = $conexao->fetch(PDO::FETCH_ASSOC);

        $this->obj_Vinculo->desligado();

        $conexao = null;
        
        return (bool) $retorno['valido'];
    }

    public function autenticaLogin(string $email, string $senha): bool {
        
        $param = [$email, $senha];

        $retorno = $this->utilizaBanco($param);

        if($retorno){
            return true;
        }

        return false;
    }
}