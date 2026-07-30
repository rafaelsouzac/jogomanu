<?php

declare(strict_types=1);

class Database
{
    private static ?PDO $instance = null;

    public static function getConnection(): PDO
    {
        if (self::$instance === null) {
            $host = '127.0.0.1';
            $db   = 'nome_do_seu_banco';
            $user = 'usuario';
            $pass = 'senha';
            $charset = 'utf8mb4';

            $dsn = "mysql:host=$host;dbname=$db;charset=$charset";
            
            $options = [
                PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                PDO::ATTR_EMULATE_PREPARES   => false,
            ];

            try {
                self::$instance = new PDO($dsn, $user, $pass, $options);
            } catch (\PDOException $e) {
                throw new \PDOException($e->getMessage(), (int)$e->getCode());
            }
        }

        return self::$instance;
    }
}


require_dirname(__DIR__) . '/Database.php'; // Ajuste o path conforme sua estrutura

header('Content-Type: application/json; charset=utf-8');

try {
    $pdo = Database::getConnection();
    $stmt = $pdo->query('SELECT pk_disciplina, nomedisciplina, grau FROM disciplinas ORDER BY nomedisciplina ASC');
    $disciplinas = $stmt->fetchAll();

    echo json_encode($disciplinas, JSON_UNESCAPED_UNICODE);
} catch (\Throwable $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Erro interno ao processar dados das disciplinas.']);
}


<?php

declare(strict_types=1);

require_dirname(__DIR__) . '/Database.php';

header('Content-Type: application/json; charset=utf-8');

$fkDisciplina = filter_input(INPUT_GET, 'fk_disciplina', FILTER_VALIDATE_INT);

if (!$fkDisciplina) {
    http_response_code(400);
    echo json_encode(['error' => 'Parâmetro fk_disciplina inválido ou ausente.']);
    exit;
}

try {
    $pdo = Database::getConnection();
    $stmt = $pdo->prepare('SELECT pk_conteudo, tituloconteudo FROM conteudos WHERE fk_disciplina = :fk_disciplina ORDER BY tituloconteudo ASC');
    $stmt->execute(['fk_disciplina' => $fkDisciplina]);
    $conteudos = $stmt->fetchAll();

    echo json_encode($conteudos, JSON_UNESCAPED_UNICODE);
} catch (\Throwable $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Erro interno ao processar dados dos conteúdos.']);
}




<?php

declare(strict_types=1);

require_dirname(__DIR__) . '/Database.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo "Método Não Permitido.";
    exit;
}

$pkDisciplina = filter_input(INPUT_POST, 'pk_disciplina', FILTER_VALIDATE_INT);
$pkConteudo   = filter_input(INPUT_POST, 'pk_conteudo', FILTER_VALIDATE_INT);

if (!$pkDisciplina || !$pkConteudo) {
    // Redireciona de volta com erro ou exibe mensagem
    http_response_code(400);
    echo "Erro: Seleção de disciplina ou conteúdo inválida.";
    exit;
}

try {
    $pdo = Database::getConnection();
    
    // Validação de segurança no Back-end: Garante que o conteúdo pertence àquela disciplina
    $stmt = $pdo->prepare('
        SELECT c.*, d.nomedisciplina 
        FROM conteudos c
        INNER JOIN disciplinas d ON c.fk_disciplina = d.pk_disciplina
        WHERE c.pk_conteudo = :pk_conteudo AND c.fk_disciplina = :fk_disciplina
    ');
    
    $stmt->execute([
        'pk_conteudo'   => $pkConteudo,
        'fk_disciplina' => $pkDisciplina
    ]);
    
    $dadosFinais = $stmt->fetch();

    if (!$dadosFinais) {
        throw new \Exception("Inconsistência nos dados enviados.");
    }

    // Processamento com sucesso (Ex: Salvar na sessão, redirecionar para a view do jogo/aula)
    session_start();
    $_SESSION['conteudo_atual'] = $dadosFinais;
    
    // Exemplo de redirecionamento pós-sucesso:
    // header('Location: /jogomanu/view-conteudo');
    
    echo "<h1>Sucesso!</h1>";
    echo "<p>Disciplina: " . htmlspecialchars($dadosFinais['nomedisciplina']) . "</p>";
    echo "<p>Conteúdo Liberado: " . htmlspecialchars($dadosFinais['tituloconteudo']) . "</p>";

} catch (\Throwable $e) {
    http_response_code(500);
    echo "Erro ao processar sua solicitação: " . htmlspecialchars($e->getMessage());
}
