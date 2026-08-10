<main id="conteudo-principal" role="main">
  <div class="card-login">

    <div class="logo" aria-label="Ensino Fundamental e Médio">
      Ensino Fundamental e Médio
    </div>
    <p class="subtitulo">Selecione a disciplina e o conteúdo para continuar</p>

    <!-- Alertas do sistema -->
    <div id="alerta-sistema" class="alerta" role="alert" aria-live="assertive"></div>

    <form action="selecionarmateria" method="POST" id="form-conteudo" novalidate aria-label="Formulário de seleção de conteúdo">
      
      <!-- Disciplina -->
       <?php if($view_disciplina){ ?>
      <div class="mb-3">
        <label for="disciplina">Disciplina</label>
        <select 
          class="form-control" 
          id="disciplina" 
          name="pk_disciplina" 
          required 
          aria-required="true"
          aria-describedby="disciplina-erro"
        >
          <option value="">
            Selecione primeiro a disciplina
          </option>

        <?php foreach($disciplina as $linha) { ?>
          <option value="<?php echo($linha['pk_disciplina']); ?>">
            <?php echo($linha['nomedisciplina']); ?>
          </option>
        <?php } ?>
        </select>
        <span id="disciplina-erro" class="campo-mensagem-erro" role="alert" aria-live="polite"></span>
      </div>
      <?php }?>
      <?php if($conteudo){?>
      <!-- Matéria / Conteúdo -->
      <div class="mb-3">
        <label for="conteudo">Conteúdo (Matéria)</label>
        <select 
          class="form-control" 
          id="conteudo" 
          name="pk_conteudo" 
          required 
          aria-required="true"
          aria-describedby="conteudo-erro"
        >
          <option value="">
            Selecione o conteúdo.
          </option>
        <?php 
          foreach($conteudo as $linha) 
          { ?>
          <option value="<?php echo($linha['pk_conteudo']); ?>">
            <?php echo($linha['tituloconteudo']); ?>
          </option>
        <?php } ?>
        </select>
        <span id="conteudo-erro" class="campo-mensagem-erro" role="alert" aria-live="polite"></span>
      </div>
      <?php } ?>
      <button type="submit" class="btn-entrar" id="btn-submeter"><?php echo($texto_botao); ?></button>

    </form>

    <div class="links-rodape">
      <a href="/jogomanu/selecionarmateria">Voltar ao início</a>
    </div>

  </div>
</main>
