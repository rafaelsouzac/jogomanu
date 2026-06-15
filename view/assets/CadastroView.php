  <main id="conteudo-principal" role="main">
    <div class="card-login">

      <div class="logo" aria-label="Ensino Fundamental e Médio">
        Ensino Fundamental e Médio
      </div>
      <p class="subtitulo">Cadastre sua conta para continuar estudando</p>
                         
      <!-- Alertas do sistema -->
      <div id="alerta-sistema" class="alerta" role="alert" aria-live="assertive"></div>

      <form action="/jogomanu/cadastro/usuario" method="POST" id="form-login" novalidate aria-label="Formulário de login">
        <!-- E-mail -->
        <div class="mb-3">
          <label for="email">E-mail  <span class="subtitulo">- utilizado para recuperar senha </span></label>
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
        <div class="mb-3">
          <label for="senha">Senha</label>
          <div class="input-group">
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
            <button class="btn btn-outline-secondary btn-alternar-senha" type="button" data-alvo="senha" aria-label="Mostrar senha">👁️</button>
          </div>
          <span id="senha-erro" class="campo-mensagem-erro" role="alert" aria-live="polite"></span>
        </div>

        <!-- RedigitaSenha -->
        <div class="mb-3">
          <label for="redigitasenha">Digite Novamente a Senha</label>
          <div class="input-group">
            <input
              type="password"
              class="form-control"
              id="redigitasenha"
              name="redigitasenha"
              placeholder="••••••••"
              autocomplete="current-password"
              maxlength="16"
              required
              aria-required="true"
              aria-describedby="redigitasenha-erro"
            >
            <button class="btn btn-outline-secondary btn-alternar-senha" type="button" data-alvo="redigitasenha" aria-label="Mostrar senha">👁️</button>
          </div>
          <span id="redigitasenha-erro" class="campo-mensagem-erro" role="alert" aria-live="polite"></span>
        </div>

        <button type="submit" class="btn-entrar">Entrar</button>

      </form>

      <div class="links-rodape">
        <a href="/jogomanu/">Login</a>
        &nbsp;·&nbsp;
        
      </div>
      <script src="view/js/mesmo_email.js"></script>
    </div>
  </main>