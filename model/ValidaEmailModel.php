<?php
declare(strict_types = 1);

class ValidaEmailModel{
    /**
     * Valida o formato do e-mail com as regras específicas solicitadas
     */
    private function validarFormatoEmail(string $email): bool {
        if (!str_contains($email, '@')) {
            return false;
        }

        $partesObjeto = explode('@', $email, 2);
        $depoisDoArroba = $partesObjeto[1] ?? '';

        if (!str_contains($depoisDoArroba, '.')) {
            return false;
        }

        // Divide a partir do último ponto encontrado
        $posicaoUltimoPonto = strrpos($depoisDoArroba, '.');
        $stringAntesDoPonto = substr($depoisDoArroba, 0, $posicaoUltimoPonto);
        $stringDepoisDoPonto = substr($depoisDoArroba, $posicaoUltimoPonto + 1);

        // Regra: No mínimo 3 caracteres após o @ (antes do ponto conta na string total após o @)
        if (strlen($stringAntesDoPonto) < 3 || strlen($depoisDoArroba) < 3) {
            return false;
        }

        // Regra: No mínimo 3 caracteres após o ponto final
        if (strlen($stringDepoisDoPonto) < 3) {
            return false;
        }

        return true;
    }

    public function emailValido(string $email): bool{
        return $this->validarFormatoEmail($email);
    }
}