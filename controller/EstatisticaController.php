<?php
declare(strict_types = 1);

require_once(BASE_PATH . 'model/EstatisticaModel.php');


$objEstatistica = new EstatisticaModel();
$info_cabecalho = $objEstatistica->get_estatistica_cabecalho((int)$_SESSION['pk_quiz']);
$info_respostas = $objEstatistica->get_estatistica_cabecalho((int)$_SESSION['pk_quiz'], false);
$parteCentro = 'Estatistica.php';
$css_sistema = 'estatistica.css';