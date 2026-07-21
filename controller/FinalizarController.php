<?php
declare(strict_types = 1);

require_once(BASE_PATH . 'model/FinalizarModel.php');

// 1. Verificar se tanto o acessousuario quanto quiz estao finalizados
//  significa que fimdasessao em acessousuario é != de null
// e finalizado em quiz é != de null.

// Se ambos os campo não forem null deve ser feito a alteração nos campos
// Se os campos estão preenchidos, somente destruir a sessao e encaminhar
// para o /jogomanu/

// Para Pesquisas e finalizar, usar os seguintes parametros:
// $session_id na tabela acessousuario
// $_SESSION['pk_quiz']