<?php
declare(strict_types=1);


require_once(BASE_PATH . 'model/CadastroUsuarioModel.php');

// Certifique-se de incluir o arquivo da classe e do banco de dados aqui
// require_once 'CadastroUsuarioModel.php';
// require_once 'conexao.php';

// Verifica se a requisição foi enviada via método POST do formulário
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Captura os dados do formulário removendo espaços em branco extras
    $email = isset($_POST['email']) ? trim((string)$_POST['email']) : '';
    $senha = isset($_POST['senha']) ? (string)$_POST['senha'] : '';
    $redigitaSenha = isset($_POST['redigitasenha']) ? (string)$_POST['redigitasenha'] : '';

    // REGRA DE VALIDAÇÃO DO E-MAIL:
    // Deve ter '@', no mínimo 1 caractere após o '@', e um ponto '.' depois desse caractere.
    // Expressão regular: ^[^@]+ @ [^@.]+ \. .+
    $padraoEmail = '/^[^@]+@[^@.]+\..+/';

    // 1. Valida o formato personalizado do e-mail
    if (!preg_match($padraoEmail, $email)) {
        header('Location: /jogomanu/error');
        exit;
    }

    // 2. Valida se o campo 'redigitasenha' é exatamente igual a 'senha'
    if ($senha !== $redigitaSenha) {
        header('Location: /jogomanu/error');
        exit;
    }

    // 3. Valida se os campos não estão vazios
    if (empty($email) || empty($senha)) {
        header('Location: /jogomanu/error');
        exit;
    }

    try {
        // Presume-se que a variável $pdo seja a sua conexão ativa com o banco de dados
        // $cadastroUsuario = new CadastroUsuarioModel($pdo);
        
        $cadastroUsuario = new CadastroUsuarioModel();

        $retorno = $cadastroUsuario->insereUsuario($email, $senha);
        
        header('Location: /jogomanu/');
 
    } catch (\Throwable) {
        // Redireciona para erro em caso de falha crítica inesperada
        header('Location: /jogomanu/error');
        exit;
    }
}
$css_sistema = '';