<?php
declare(strict_types=1);

require_once(BASE_PATH . 'model/QuizModel.php');
require_once(BASE_PATH . 'model/AcessoUsuarioModel.php');
require_once(BASE_PATH . 'model/GabaritoModel.php');
require_once(BASE_PATH . 'model/PerguntasModel.php');

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

//pega informações do formulario para ver quais perguntas selecionar


if(isset($_SESSION['Perguntas'])){
    $idpergunta_atual = $_POST['idpergunta'];
    //monto perguta + respostas.
    $obj_respostas_pergunta = new PerguntasModel();
    $respostas = $obj_respostas_pergunta->getRespostas($idpergunta_atual);

}else{
    $_SESSION['conteudo_selecionado'] = $_POST['conteudo'];
    //inicio todo processo de geração do gabarito e primeira pergunta com resposta
    $obj_quiz_controller = new QuizController($_SESSION['conteudo_selecionado']);
    $obj_quiz_controller->IniciarQuiz();
    $obj_quiz_controller->GerarGabarito();    
}



$serie = 1;

$parteCentro = 'Quiz.php';

$css_sistema = '';