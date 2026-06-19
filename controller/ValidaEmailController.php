<?php
declare(strict_types = 1);

require_once(BASE_PATH . 'model/ValidaEmailModel.php');

class ValidaEmailController{

    public function validarEmail(string $email):bool{
        $objValido = new ValidaEmailModel();
        return $objValido->emailValido($email);
    }
}