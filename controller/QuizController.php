<?php
declare(strict_types=1);

require_once(BASE_PATH . 'model/QuizModel.php');
require_once(BASE_PATH . 'model/AcessoUsuarioModel.php');
require_once(BASE_PATH . 'model/GabaritoModel.php');
require_once(BASE_PATH . 'model/PerguntasModel.php');
require_once(BASE_PATH . 'model/RespostasModel.php');

class QuizController{

    private int $pk_conteudo;
    private int $pk_quiz;
    private int $fk_acesso_usuario;
    private array $pk_perguntas;

    public function __construct(int $conteudo)
    {
        $this->pk_conteudo = $conteudo;

        $_SESSION['conteudo_selecionado'] = $this->pk_conteudo;

        $obj_AcessoUsuario = new AcessoUsuario();
        $this->fk_acesso_usuario = $obj_AcessoUsuario->getAcessoUsuario();

        $obj_perguntas = new PerguntasModel();
        $this->pk_perguntas = $obj_perguntas->getPk_pergunta($this->pk_conteudo);

        $_SESSION['perguntas'] = $this->pk_perguntas;

        $this->GerarGabarito();

    }

    public function IniciarQuiz(){
        $obj_quiz = new QuizModel();
        $this->pk_quiz = $obj_quiz->CadastrarQuiz($this->fk_acesso_usuario);
        return $this->pk_quiz;
    }

    public function GerarGabarito(){
        
        $pk_quiz = $this->IniciarQuiz();

        $obj_quiz_model = new GabaritoModel($pk_quiz, $this->pk_perguntas);
        
        $obj_quiz_model->CadastrarGabarito();

        $obj_quiz_model = null;
    }

}

function BuscaResposta(int $pk_pergunta){
    $obj_respostas = new RespostasModel();
    return $obj_respostas->getRespostas($pk_pergunta);
}

//pega informações do formulario para ver quais perguntas selecionar
// Trabalhar somente com $_Session();

if($_SESSION['Pergunta_Atual'] !== 0){
    echo("Segunda: {$_SESSION['Pergunta_Atual']}");
    $_SESSION['respostas'] = BuscaResposta($_SESSION['Pergunta_Atual']);

}else{
    
    //inicio todo processo de geração do gabarito e primeira pergunta com resposta
    $obj_quiz_controller = new QuizController(2);

    $_SESSION['Pergunta_Atual'] = $_SESSION['perguntas'][0]['pk_pergunta'];
    echo("Primeira: {$_SESSION['Pergunta_Atual']}");
    $_SESSION['respostas'] = BuscaResposta($_SESSION['Pergunta_Atual']);
}

$parteCentro = 'Quiz.php';

$css_sistema = '';