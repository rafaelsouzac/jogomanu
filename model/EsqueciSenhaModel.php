<?php

declare(strict_types = 1);

require_once(BASE_PATH . 'model/VinculoBancoDeDados.php');
require_once(BASE_PATH . 'model/ValidaEmailModel.php');
// Nota: O PHPMailer deve ser incluído manualmente conforme definido anteriormente
require_once(BASE_PATH . 'model/PHPMailer/Exception.php');
require_once(BASE_PATH . 'model/PHPMailer/PHPMailer.php');
require_once(BASE_PATH . 'model/PHPMailer/SMTP.php');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class RecuperacaoSenhaModel {
    private ?PDO $conexao;
    private ?PDOStatement $stmt; // Corrigido para o tipo correto do PDO para prepared statements
    private string $sql;
    private string $logPath;

    public function __construct() {
        $this->conexao = null; 
        $this->stmt = null;
        $this->sql = '';
        $this->logPath = BASE_PATH . 'model/logs/';
    }

    /**
     * Valida o formato do e-mail com as regras específicas solicitadas
     */
    private function validarFormatoEmail(string $email): bool {
        $objEmail = new ValidaEmailModel();
        return $objEmail->emailValido($email);
    }
    /**
     * Verifica se o e-mail está persistido via usp_email_pesistido
     */
    private function verificarEmailNoBanco(string $email): bool {
        $db = new VinculoBancoDeDados();
        $this->conexao = $db->ligado();
        $persistido = false;

        try {
            // SQL Injection evitado via Prepared Statements nativo do PDO
            $this->sql = "CALL usp_email_pesistido(?)";
            $this->stmt = $this->conexao->prepare($this->sql);
            $this->stmt->execute([$email]);
            
            $resultado = $this->stmt->fetch(PDO::FETCH_ASSOC);
            
            if ($resultado && isset($resultado['persistido']) && (int)$resultado['persistido'] === 1) {
                $persistido = true;
            }
        } catch (PDOException $e) {
            error_log("Erro ao verificar e-mail: " . $e->getMessage());
            $persistido = false;
        } finally {
            if ($this->stmt) {
                $this->stmt->closeCursor();
            }
            $db->desligado();
            $this->conexao = null;
        }

        return $persistido;
    }

    /**
     * Gera e persiste o token de recuperação (Banco ou Arquivo)
     */
    private function gerarEPersistirToken(string $email): string {
        // Criptografia temporizada (Token seguro via random_bytes)
        $tokenBase = bin2hex(random_bytes(32));
        
        $db = new VinculoBancoDeDados();
        $this->conexao = $db->ligado();
        $gravouNoBanco = false;

        try {
            $this->sql = "CALL usp_link_esqueci_senha(?, ?)";
            $this->stmt = $this->conexao->prepare($this->sql);
            $this->stmt->execute([$email, $tokenBase]);
            
            $resultado = $this->stmt->fetch(PDO::FETCH_ASSOC);
            if ($resultado && isset($resultado['persistido']) && (int)$resultado['persistido'] === 1) {
                $gravouNoBanco = true;
            }
        } catch (PDOException $e) {
            error_log("Erro na procedure usp_link_esqueci_senha: " . $e->getMessage());
            $gravouNoBanco = false;
        } finally {
            if ($this->stmt) {
                $this->stmt->closeCursor();
            }
            $db->desligado();
            $this->conexao = null;
        }

        if ($gravouNoBanco) {
            // Sutilidade: adiciona o marcador identificador de DB
            return "db_" . $tokenBase;
        }

        // Se falhar a persistência no banco, efetua o Fallback em Arquivo Seguro
        return $this->persistirEmArquivo($email, $tokenBase);
    }

    /**
     * Fallback de contingência para salvar em arquivos temporizados
     */
    private function persistirEmArquivo(string $email, string $tokenBase): string {
        if (!is_dir($this->logPath)) {
            mkdir($this->logPath, 0755, true);
        }

        // Tempo final adicionado diretamente no conteúdo de persistência (+30 minutos)
        $tempoFinal = time() + (10 * 60); 
        $dadosLog = [
            'email' => $email,
            'expira' => $tempoFinal,
            'token' => $tokenBase
        ];

        // Nome do arquivo baseado no próprio token para busca rápida O(1) posterior
        $arquivoNome = $this->logPath . "reset_" . $tokenBase . ".json";
        
        if (file_put_contents($arquivoNome, json_encode($dadosLog)) !== false) {
            // Sutilidade: adiciona o marcador identificador de Arquivo
            return "file_" . $tokenBase;
        }

        // Se ambos falharem catastroficamente, desvia para erro de reenvio
        $this->redirecionarParaErro();
        exit;
    }

    /**
     * Envia o e-mail utilizando o PHPMailer
     */
    private function dispararEmail(string $email, string $tokenCompleto): bool {
        $mail = new PHPMailer(true);
        try {
            // Configurações do Servidor SMTP (Substitua pelos dados reais de produção)
            $mail->isSMTP();
            $mail->Host       = 'smtp.exemplo.com'; 
            $mail->SMTPAuth   = true;
            $mail->Username   = 'seu_usuario';
            $mail->Password   = 'sua_senha';
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port       = 587;
            $mail->CharSet    = 'UTF-8';

            // Destinatários
            $mail->setFrom('suporte@seusite.com', 'Suporte');
            $mail->addAddress($email);

            // Conteúdo
            $linkCompleto = BASE_PATH . "recuperar/" . $tokenCompleto; // Link amigável tratado por slug no router
            
            $mail->isHTML(true);
            $mail->Subject = 'Recuperação de Senha';
            $mail->Body    = "Olá,<br><br>Você solicitou a alteração de sua senha.<br>"
                           . "Clique no link abaixo para cadastrar uma nova senha:<br>"
                           . "<a href='{$linkCompleto}'>{$linkCompleto}</a><br><br>"
                           . "Este link expira em breve.";
            $mail->AltBody = "Olá, clique no link a seguir para recuperar sua senha: " . $linkCompleto;

            $mail->send();
            return true;
        } catch (Exception $e) {
            error_log("Falha no envio do e-mail PHPMailer: " . $mail->ErrorInfo);
            return false;
        }
    }

    /**
     * Desvia o usuário via header location gerando o slug dinâmico de erro
     */
    private function redirecionarParaErro(): void {
        $slugErro = bin2hex(random_bytes(16));
        header("Location: " . BASE_PATH . "error/reenvio_senha/" . $slugErro);
        exit;
    }

    /**
     * Método público de entrada principal que orquestra todo o fluxo
     */
    public function processarRecuperacao(string $emailBruto): bool {
        // 1. Sanitiza/Valida formato visual solicitado
        if (!$this->validarFormatoEmail($emailBruto)) {
            $this->redirecionarParaErro();
        }

        // 2. Verifica se está persistido no banco de dados
        if (!$this->verificarEmailNoBanco($emailBruto)) {
            $this->redirecionarParaErro();
        }

        // 3. Gera e persiste a criptografia temporizada
        $tokenFinal = $this->gerarEPersistirToken($emailBruto);

        // 4. Envia o e-mail via PHPMailer
        return $this->dispararEmail($emailBruto, $tokenFinal);
    }
}