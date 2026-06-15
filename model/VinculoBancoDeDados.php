<?php

declare(strict_types=1);

class VinculoBancoDeDados
{
    private ?PDO $conexao = null;

    public function ligado(): PDO
    {
        $dsn = sprintf(
            'mysql:host=localhost;port=3306;dbname=jogomanu;charset=utf8mb4'
        );

        $this->conexao = new PDO(
            $dsn,
            'root',
            '',
            [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                PDO::ATTR_EMULATE_PREPARES => false,
            ]
        );

        return $this->conexao;
    }

    public function desligado(): void
    {
        $this->conexao = null;
    }
}