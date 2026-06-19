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