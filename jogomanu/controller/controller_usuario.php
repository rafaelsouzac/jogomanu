<?php 
require_once(BASE_PATH . 'model/valida_usuario.php');

class controller_usuario{
    private string $email_usuario;
    private string $senha_usuario;
    private string $tipo_conta;
    private $conexao;

    public function __construct()
    {
        $this->$email_usuario = "";
        $this->$senha_usuario = "";
        $this->$tipo_conta = "";
    }

    private function valida_usuario(string $usuario, string $senha, string $tipoconta){


    }
}