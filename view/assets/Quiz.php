<main id="conteudo-principal" role="main">
  <!-- Reutiliza a estrutura de Card (Modelo 2) adaptada para o Quiz -->
  <div class="card-login" style="max-width: 520px;"> 
    
    <!-- Logo do Produto -->
    <div class="logo" aria-label="Ensino Fundamental e Médio">
      Ensino Fundamental e Médio
    </div>
    
    <!-- Pergunta estilizada como H2 com a fonte League Spartan via CSS do tema -->
    <h2 class="pergunta-quiz" style="font-family: var(--fonte-titulo); font-size: 1.20rem; font-weight: 500; color: var(--cor-texto); margin: 1.5rem 0 1rem 0; line-height: 1.4;">
      <?php
        echo($_SESSION['perguntas'][0]['enunciado']); ?>
    </h2>

    <!-- Alertas do sistema (para feedback de acerto/erro/aviso se necessário) -->
    <div id="alerta-sistema" class="alerta" role="alert" aria-live="assertive"></div>

    <!-- Formulário do Quiz -->
    <form action="/jogomanu/quiz/resposta" method="POST" id="form-quiz" novalidate aria-label="Formulário de resposta do quiz">
      
      <div class="alternativas-container" style="display: flex; flex-direction: column; gap: 0.75rem; margin-bottom: 1.5rem;">
        
        <!-- Alternativa -->
      <?php
        foreach($_SESSION['respostas'] as $resposta){
      ?>
        <div class="opcao-radio" style="display: flex; align-items: center; gap: 0.75rem; padding: 0.75rem 1rem; border: 1.5px solid #cfd8dc; border-radius: 8px; background: #fafafa; transition: border-color .2s ease;">
          <input type="radio" id="alt-a" name="alternativa" value="<?php echo($resposta['status_resposta']); ?>" class="form-radio" style="accent-color: var(--cor-primaria); width: 1.1rem; height: 1.1rem; cursor: pointer;">
          <label for="alt-a" style="margin-bottom: 0; font-weight: 500; width: 100%; cursor: pointer;"><?php echo($resposta['enunciado_resposta']); ?></label>
        </div>
      <?php 
      }
      ?>
      </div>

      <!-- Mensagem de erro caso o usuário tente enviar sem selecionar nada -->
      <span id="quiz-erro" class="campo-mensagem-erro" role="alert" aria-live="polite" style="margin-bottom: 1rem;">Por favor, selecione uma alternativa.</span>

      <!-- Botão Enviar utilizando o padrão do Modelo 2 do produto -->
      <button type="submit" class="btn-entrar">Confirmar Resposta</button>

    </form>

    <!-- Rodapé de navegação do quiz 
    <div class="links-rodape">
      <a href="#">← Pergunta Anterior</a>
      &nbsp;·&nbsp;
      <a href="pular-quiz">Pular Pergunta</a>
    </div>
    -->
  </div>
</main>
