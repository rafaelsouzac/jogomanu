<?php
declare(strict_types = 1);

class GabaritoModel { 
    private int $quiz; 
    private array $perguntas; 

    public function __construct(int $fk_quiz, array $fk_perguntas) { 
        $this->quiz = $fk_quiz; 
        $this->perguntas = $fk_perguntas;
    } 

    public function CadastrarGabarito() { 
        $obj_banco = new VinculoBancoDeDados(); 
        $conexao = $obj_banco->ligado(); 
        
        $retorno = []; // Inicializa o array para evitar erros caso $perguntas esteja vazio

        $sql = 'Call usp_cadastar_gabarito(:fk_quiz, :fk_pergunta)'; 
        $stmt = $conexao->prepare($sql); // Prepare fora do loop é mais rápido

        foreach($this->perguntas as $fk_pergunta) { 
            $stmt->bindValue(':fk_quiz', $this->quiz, PDO::PARAM_INT); 
            $stmt->bindValue(':fk_pergunta', (int)$fk_pergunta['pk_pergunta'], PDO::PARAM_INT); 
            $stmt->execute(); 
            
            // Pega o ID retornado pela procedure
            $resultado = $stmt->fetch(PDO::FETCH_ASSOC);
            if ($resultado) {
                $retorno[] = $resultado['pk_gabarito']; // Guarda apenas o número do ID
            }
            
            $stmt->closeCursor(); // Libera a conexão para a próxima execução da procedure
        } 

        $stmt = null; 
        $conexao = null; 
        $obj_banco->desligado(); 
        $obj_banco = null; 

        // Salva o array de IDs diretamente na sessão
        $_SESSION['pks_gabarito'] = $retorno;
    } 
}
