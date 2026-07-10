<?php
declare(strict_types=1);

require_once(BASE_PATH . 'model/QuizModel.php');
require_once(BASE_PATH . 'model/AcessoUsuarioModel.php');
require_once(BASE_PATH . 'model/GabaritoModel.php');

class QuizController{
    public function __construct()
    {
        $obj_AcessoUsuario = new AcessoUsuario();
        $fk_acesso_usuario = $obj_AcessoUsuario->getAcessoUsuario();

        
    }
}

//pega informações do formulario para ver quais perguntas selecionar
$conteudo = 1;
$serie = 1;

$parteCentro = 'Quiz.php';
$css_sistema = '';