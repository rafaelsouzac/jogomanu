<?php

declare(strict_types = 1);

require_once(BASE_PATH . 'model/RecuperacaoSenhaModel.php');

class RecuperacaoSenhaController {
    private ?RecuperacaoSenhaModel $recuperacaoModel;

    public function __construct() {
        $this->recuperacaoModel = new RecuperacaoSenhaModel();
    }

    /**
     * Método do Controller acionado pelo Router (index.php) no POST do formulário
     */
    public function solicitarLink(string $email): bool {
        return $this->recuperacaoModel->processarRecuperacao($email);
    }
}

// 1. BLOCO PROCEDURAL DE SEGURANÇA E ACESSO
$dominioPermitido = 'https://www.fundamentalemedio.com.br';
$acessoAutorizado = false;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Validação moderna Sec-Fetch-Site (Navegadores atuais)
    if (!isset($_SERVER['HTTP_SEC_FETCH_SITE']) || $_SERVER['HTTP_SEC_FETCH_SITE'] === 'same-origin') {
        
        // Validação complementar por Origin ou Referer
        if (isset($_SERVER['HTTP_ORIGIN']) && $_SERVER['HTTP_ORIGIN'] === $dominioPermitido) {
            $acessoAutorizado = true;
        } elseif (isset($_SERVER['HTTP_REFERER']) && str_starts_with($_SERVER['HTTP_REFERER'], $dominioPermitido)) {
            $acessoAutorizado = true;
        }
    }
}

// Se falhar no bloco de segurança, corta a execução imediatamente com erro HTTP 403
if (!$acessoAutorizado) {
    header('HTTP/1.1 403 Forbidden');
    exit('Acesso negado: Origem não autorizada.');
}

// Função utilitária para registrar o erro na linha 1 do arquivo e desviar o usuário
$encerrarComErroGrave = function (string $mensagemErro) use ($dominioPermitido): void {
    $caminhoLog = BASE_PATH . 'model/erro/log_esquecisenha.txt';
    $diretorioLog = dirname($caminhoLog);

    if (!is_dir($diretorioLog)) {
        mkdir($diretorioLog, 0755, true);
    }

    // Leitura e inserção na primeira linha (Prepend)
    $conteudoAntigo = file_exists($caminhoLog) ? file_get_contents($caminhoLog) : '';
    $dataHora = date('Y-m-d H:i:s');
    $novaLinha = "[{$dataHora}] Erro: {$mensagemErro}" . PHP_EOL;
    
    file_put_contents($caminhoLog, $novaLinha . $conteudoAntigo);

    // Redirecionamento em caso de erro interno ou exceção
    header("Location: " . $dominioPermitido . "/projetos/esqueci_senha/erro_0001");
    exit;
};

// 2. BLOCO PRINCIPAL (PROCESSAMENTO)
try {
    // Garante que as dependências básicas estejam instanciadas/incluídas
    if (!defined('BASE_PATH')) {
        throw new Exception("A constante BASE_PATH não foi definida.");
    }

    // Recupera unicamente o campo solicitado do formulário
    if (!isset($_POST['email_esquecisenha'])) {
        throw new Exception("O campo obrigatório 'email_esquecisenha' não foi enviado.");
    }

    $emailInformado = (string)$_POST['email_esquecisenha'];

    // Inclusão das classes necessárias (Ajuste os caminhos se necessário)
    require_once(BASE_PATH . 'model/ValidarEmail.php');
    require_once(BASE_PATH . 'model/EsqueciSenhaModel.php'); // Onde se assume que a classe de negócio reside

    // Utilização da classe ValidarEmail
    $validador = new ValidarEmail();
    $emailValido = $validador->emailValido($emailInformado);

    // Se o retorno for 0 (E-mail inválido), desvia para a página de erro_0001
    if ($emailValido === 0) {
        throw new Exception("O e-mail fornecido foi rejeitado pela classe ValidarEmail.");
    }

    // Criação do objeto da classe EsqueciSenhaController para execução do fluxo de negócio
    // Nota: Como este script já é o arquivo EsqueciSenhaController.php, assume-se a instanciação 
    // da classe de mesmo nome mapeada pelo seu autoload ou inclusão manual.
    $processoRecuperacao = new EsqueciSenhaController();
    $resultadoLink = $processoRecuperacao->solicitarLink($emailInformado);

    // Tratamento dos retornos (1 para concluído, 0 para erro)
    if ($resultadoLink === 1) {
        header("Location: " . $dominioPermitido . "/projeto/esquecisenha/1");
        exit;
    } elseif ($resultadoLink === 0) {
        header("Location: " . $dominioPermitido . "/projeto/esquecisenha/0");
        exit;
    } else {
        throw new Exception("Retorno inesperado do método solicitarLink: " . $resultadoLink);
    }

} catch (Throwable $e) {
    // Captura qualquer Exception ou Error (PHP 8) e manda para o log/redirecionamento de erro grave
    $mensagemParaLog = $e->getMessage() . " em " . $e->getFile() . " na linha " . $e->getLine();
    $encerrarComErroGrave($mensagemParaLog);
}