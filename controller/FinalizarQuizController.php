<?php
declare(strict_types = 1);

require_once(BASE_PATH . 'model/FinalizarQuizModel.php');
require_once(BASE_PATH . 'model/AcessoUsuarioModel.php');

$obj_quiz = new FinalizarQuizModel();
$obj_quiz->FinalizarQuiz();

$obj_acesso_usuario = new AcessoUsuario();
$obj_acesso_usuario->FinalizarAcessoUsuario();

// 2. Limpa todas as variáveis de sessão da memória
$_SESSION = [];

// 3. Deleta o cookie de sessão do navegador
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(
        session_name(), 
        '', 
        time() - 42000,
        $params["path"], 
        $params["domain"],
        $params["secure"], 
        $params["httponly"]
    );
}

// 4. Destrói os dados da sessão no servidor
session_destroy();


header("Location:/jogomanu/ ");


