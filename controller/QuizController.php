<?php
declare(strict_types=1);

require_once(BASE_PATH . 'model/QuizModel.php');

class QuizController{
   
    private ?QuizModel $objQuizModel;

    public function __construct()
    {
        $this->objQuizModel = new QuizModel;
    }

}

$parteCentro = 'Quiz.php';
$css_sistema = '';