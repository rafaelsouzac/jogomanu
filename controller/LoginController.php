<?php
declare(strict_types=1);

require_once(BASE_PATH . 'model/LoginModel.php');

class LoginController
{
    private LoginModel $login;

    public function __construct()
    {
        $this->login = new LoginModel();
    }

    public function validaLogin(string $usuario, string $senha): array {

        return $this->login->autenticaLogin($usuario, $senha);
    }

}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $usuario = trim($_POST['email'] ?? '');
    $senha = trim($_POST['senha'] ?? '');

    $obj_login= new LoginController();
    
    $retornoLogin = $obj_login->validaLogin($usuario, $senha);
    
    if($retornoLogin['pk_usuario'] > 0){       
        $_SESSION['usuario'] = $retornoLogin['pk_usuario'];
        header("Location:/jogomanu/quiz");
    }else{
        header("Location:/jogomanu/erro_login");
    }
}

$css_sistema = '';