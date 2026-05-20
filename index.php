<?php
define('BASE_PATH', __DIR__ . '/');

require_once(BASE_PATH . 'controller/gerenciacontrollers.php'); 

require_once(BASE_PATH . 'controller/controller_usuario.php');

if(session_status() == PHP_SESSION_NONE){
    session_start();
    $_SESSION['idsessao'] = session_id();
    $_SESSION['idusuario'] = '01';
    $_SESSION['idacessousuario'] = '';
    $_SESSION['identificacao_usuario'] = 'Manuela Amaral Corrêa';
    $_SESSION['tipoplano'] = 'O'; //F = free, B = Bronze, P = Prata, O = Ouro, Pr = Professor
    $_SESSION['url_chamada'] = '';

    //atualizar a tabela acesso usuario
    //necessito dos seguintes dados: idusuario, idacesso, idsessao.
    //Os campos iniciodasessao e fimdasessao serao atualizados de forma automática. Tenho que pegar o IDACESSOUSUARIO para atualizações. ficara registro na propria $_SESSION.
}


$url = $_SERVER['REQUEST_URI'];

$url = str_replace('/jogomanu/','',$url);

$_SESSION['url_chamda'] = $url;

//echo("</br>".$_SESSION['url_chamda']."</br>");

if(strrpos($url, '/') > 0){
    $url = substr($url, 0, strrpos($url, '/'));
}

$gerencia_controllers = new gerencia_controllers();

$controller = $gerencia_controllers->gerencia($url);

print_r($controller);

require_once(BASE_PATH . 'controller/'.$controller[0]['slug']); 

require_once(BASE_PATH . 'view/home.php');