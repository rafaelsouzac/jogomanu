<?php
declare(strict_types = 1);

require_once(BASE_PATH . 'model/RespostasModel.php');

$recepcao = $_POST['escolha'];

$pergunta_atual = $_SESSION['Pergunta_Atual'];

$pergunta_atual += 1;

$_SESSION['Pergunta_Atual'] = $pergunta_atual;



header("Location: /jogomanu/quiz");