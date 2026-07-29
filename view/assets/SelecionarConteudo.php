<main id="conteudo-principal" role="main">
  <div class="card-login">

    <div class="logo" aria-label="Ensino Fundamental e Médio">
      Ensino Fundamental e Médio
    </div>
    <p class="subtitulo">Selecione a disciplina e o conteúdo para continuar</p>

    <!-- Alertas do sistema -->
    <div id="alerta-sistema" class="alerta" role="alert" aria-live="assertive"></div>

    <form action="SelecionarConteudoController.php" method="POST" id="form-conteudo" novalidate aria-label="Formulário de seleção de conteúdo">
      
      <!-- Disciplina -->
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
          <option value="">Selecione uma disciplina...</option>
          <!-- Populado via PHP na renderização inicial ou via API se preferir. Exemplo estático/base: -->
        </select>
        <span id="disciplina-erro" class="campo-mensagem-erro" role="alert" aria-live="polite"></span>
      </div>
      
      <!-- Matéria / Conteúdo -->
      <div class="mb-3">
        <label for="conteudo">Conteúdo (Matéria)</label>
        <select 
          class="form-control" 
          id="conteudo" 
          name="pk_conteudo" 
          required 
          aria-required="true"
          disabled
          aria-describedby="conteudo-erro"
        >
          <option value="">Selecione primeiro uma disciplina...</option>
        </select>
        <span id="conteudo-erro" class="campo-mensagem-erro" role="alert" aria-live="polite"></span>
      </div>

      <button type="submit" class="btn-entrar" id="btn-submeter" disabled>Acessar Conteúdo</button>

    </form>

    <div class="links-rodape">
      <a href="/jogomanu/dashboard">Voltar ao início</a>
    </div>

  </div>
</main>
