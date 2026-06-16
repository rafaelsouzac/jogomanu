<?php
declare(strict_types=1);

require_once(BASE_PATH . 'model/VinculoBancoDeDados.php');

/**
 * Classe responsável pelo cadastro de usuários.
 */
class CadastroUsuarioModel
{

    /**
     * Verifica e valida as entradas do usuário.
     *
     * NOTA: O uso de Prepared Statements no PDO já anula o risco de SQL Injection.
     * Este método foi mantido para validação de regras de negócio/sanitização básica.
     *
     * @param string $email E-mail enviado pelo usuário.
     * @param string $senha Senha enviada pelo usuário.
     * @return bool Retorna true se os dados forem válidos, false caso contrário.
     */
    private function verificaEntradas(string $email, string $senha): bool
    {
        $emailLimpo = trim($email);
        $senhaLimpa = trim($senha);

        if (empty($emailLimpo) || empty($senhaLimpa)) {

            return false;
        }

        if (!filter_var($emailLimpo, FILTER_VALIDATE_EMAIL)) {

            return false;
        }

        return true;
    }

    /**
     * Executa a Stored Procedure para cadastrar o usuário e redireciona o navegador.
     *
     * @param string $email E-mail do usuário.
     * @param string $senha Senha do usuário (recomenda-se enviar já criptografada).
     * @return void
     */
    public function insereUsuario(string $email, string $senha): bool
    {
        
        if (!$this->verificaEntradas($email, $senha)) {
            return false;
        }

        try {

            // Gera o objeto de conexao com o banco de dados.
            $obj_conexao = new VinculoBancoDeDados();

            //Cria o objeto PDO para minupulação dos dados.
            $manipulaBanco = $obj_conexao->ligado();

            $sql = 'CALL usp_cadastrar_usuario(:email, :senha)';

            //Cria o objeto PDOStatement.
            $stmt = $manipulaBanco->prepare($sql);

            //Vincula os valores ao objeto stmt.
            $stmt->bindValue(
                ':email',
                $email,
                PDO::PARAM_STR
            );

            $stmt->bindValue(
                ':senha',
                $senha,
                PDO::PARAM_STR
            );

            //Executa a query
            $stmt->execute();

            // Captura o retorno numérico da Stored Procedure
            $resultado = (int) $stmt->fetch();

            //Elimina cursos
            $stmt = null;

            //Finaliza Conexao com SGDB.
            $obj_conexao->desligado();

            //Envia retorno para objeto instanciado.
            if ($resultado === 1) {
                return true;
            }
            return false;

        } catch (PDOException) {
            // Em ambiente de produção, registre o erro em um log aqui
            return false;
        }
    }
}
