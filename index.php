<?php
<<<<<<< HEAD
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

=======
// 1. O session_start DEVE vir antes de qualquer leitura ou escrita de $_SESSION
if (session_status() === PHP_SESSION_NONE) {
    session_start([
        'cookie_lifetime' => 0, // Fecha a sessão ao fechar o navegador
        'cookie_secure' => true,
        'cookie_httponly' => true,
        'use_strict_mode' => true
    ]);
}

// 2. Validação do Domínio (Agora com a sessão já iniciada para o logout funcionar)
if (isset($_SERVER['HTTP_REFERER'])) {
    $referencia = parse_url($_SERVER['HTTP_REFERER'], PHP_URL_HOST);
    $dominioAtual = $_SERVER['SERVER_NAME'];

    if ($referencia !== $dominioAtual) {
        header("Location: /jogomanu/logout.php"); // Ajuste o caminho conforme seu padrão
        exit;
    }
}

// 3. Inicializa os dados APENAS se a sessão for nova (Evita sobrescrever o login)
if (!isset($_SESSION['inicio_sessao'])) {
    date_default_timezone_set('America/Sao_Paulo');
    $_SESSION['usuario'] = '';
    $_SESSION['inicio_sessao'] = date('Y-m-d H:i:s');
    $_SESSION['fim_sessao'] = null;     
}

define('BASE_PATH', __DIR__ . '/');

require_once(BASE_PATH . 'controller/buscaControllers.php'); 
>>>>>>> 7fdf6aa (Commit dia 150626)

$url = $_SERVER['REQUEST_URI'];

$url = str_replace('/jogomanu/','',$url);

<<<<<<< HEAD
$_SESSION['url_chamda'] = $url;

//echo("</br>".$_SESSION['url_chamda']."</br>");

if(strrpos($url, '/') > 0){
    $url = substr($url, 0, strrpos($url, '/'));
}

$gerencia_controllers = new gerencia_controllers();

$controller = $gerencia_controllers->gerencia($url);

print_r($controller);

require_once(BASE_PATH . 'controller/'.$controller[0]['slug']); 
=======
$controller = new BuscaControllers();

$nomeController = $controller->slugController($url);

require_once(BASE_PATH . 'controller/'.$nomeController); 
>>>>>>> 7fdf6aa (Commit dia 150626)

require_once(BASE_PATH . 'view/home.php');