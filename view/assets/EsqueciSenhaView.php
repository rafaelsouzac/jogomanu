  <main id="conteudo-principal" role="main">
    <div class="card-login">

      <div class="logo" aria-label="Ensino Fundamental e Médio">
        Ensino Fundamental e Médio
      </div>
      <p class="subtitulo">Enviameros informações de como recuperar sua senha para seu email. </p>

      <!-- Alertas do sistema -->
      <div id="alerta-sistema" class="alerta" role="alert" aria-live="assertive"></div>

      <form action="/jogomanu/esqueci-senha" method="POST" id="form-login" novalidate aria-label="Formulário de login">
        <!-- E-mail -->
        <div class="mb-3">
          <label for="email">E-mail</label>
          <input
            type="email"
            class="form-control"
            id="email"
            name="email"
            placeholder="seu@email.com"
            autocomplete="email"
            required
            aria-required="true"
            aria-describedby="email-erro"
          >
          <span id="email-erro" class="campo-mensagem-erro" role="alert" aria-live="polite"></span>
        </div>
        
        <!-- Senha -->
        <div class="mb-3 invisivel">
          <label for="senha">Senha</label>
          <input
            type="password"
            class="form-control"
            id="senha"
            name="senha"
            placeholder="••••••••"
            autocomplete="current-password"
            maxlength="16"
            required
            aria-required="true"
            aria-describedby="senha-erro"
          >
          <span id="senha-erro" class="campo-mensagem-erro" role="alert" aria-live="polite"></span>
        </div>

        <button type="submit" class="btn-entrar">Entrar</button>

      </form>

      <div class="links-rodape">
        <a href="/jogomanu/">Login</a>
        &nbsp;·&nbsp;
        <a href="cadastro">Cadastro</a>
      </div>

    </div>
  </main>