<?php
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
    $_SESSION['conteudo_selecionado'] = 2;  
    $_SESSION['Pergunta_Atual'] = 0; // temporario mudar após página de seleção de conteudo estiver pronta  
}

define('BASE_PATH', __DIR__ . '/');

require_once(BASE_PATH . 'controller/buscaControllers.php'); 

$url = $_SERVER['REQUEST_URI'];

$url = str_replace('/jogomanu/','',$url);

$controller = new BuscaControllers();

$nomeController = $controller->slugController($url);

require_once(BASE_PATH . 'controller/'.$nomeController); 

require_once(BASE_PATH . 'view/home.php');