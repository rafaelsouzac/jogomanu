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
        
        $_SESSION['pk_quiz'] = $pk_quiz;
        
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

if(array_key_exists('indice_pergunta',$_SESSION)){
    $_SESSION['indice_pergunta'] += 1;
    $_SESSION['respostas'] = BuscaResposta($_SESSION['perguntas'][$_SESSION['indice_pergunta']]['pk_pergunta']);

}else{
    $obj_quiz_controller = new QuizController(2);
    $_SESSION['indice_pergunta'] = 0;
    $_SESSION['numero_perguntas'] = count($_SESSION['perguntas']);
    $_SESSION['respostas'] = BuscaResposta($_SESSION['perguntas'][$_SESSION['indice_pergunta']]['pk_pergunta']);

}

$parteCentro = 'Quiz.php';

$css_sistema = '';