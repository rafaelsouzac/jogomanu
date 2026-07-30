# Contexto
Você atuara como um programador senior em desenvolvimento web utilizando php 8, mariadb 10.4.28, html5, css3, javascript. Sem framework.

## Entregável Solicitado
- Deve ser adaptado um `formulário` ao código html que esta neste arquivo, em ## Código HTML, o formulário deve conter dois campos, `disciplina` e `matéria`.
- Cada `materia` esta relacionada a uma única `disciplina`.
- Quando o usuário selecionar a `disciplina`, o sistema busca no `banco de dados` os `conteúdos` vinculados para preencher o `campo` conteúdo.
- O `formulário` deve conter um botão para submeter os dados para a `página` de processamento chamada `SelecionarConteudoController.php`.

## Requisitos
- Utilizar PSRs para gerar código PHP 8.
- Entregar código separados. HTML, CSS, JavaScript e PHP, cada script forma um arquivo.

## Código HTML
```
  <main id="conteudo-principal" role="main">
    <div class="card-login">

      <div class="logo" aria-label="Ensino Fundamental e Médio">
        Ensino Fundamental e Médio
      </div>
      <p class="subtitulo">Acesse sua conta para continuar estudando</p>

      <!-- Alertas do sistema -->
      <div id="alerta-sistema" class="alerta" role="alert" aria-live="assertive"></div>

      <form action="/jogomanu/login" method="POST" id="form-login" novalidate aria-label="Formulário de login">
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
        <div class="mb-3">
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
        <a href="/jogomanu/cadastro">Criar conta</a>
        &nbsp;·&nbsp;
        <a href="esqueci-senha">Esqueci minha senha</a>
      </div>

    </div>
  </main>
```

## Tabelas Banco de Dados

### Tabela disciplinas
| Campo             | Tipo         | Restrição              | Descrição                                  |
| :---------------- | :----------- | :--------------------- | :----------------------------------------- |
| `pk_disciplina`   | INT          | **PK**, AUTO_INCREMENT | Identificador único da disciplina          |
| `nomedisciplina`  | VARCHAR(100) | NOT NULL               | Nome da disciplina acadêmica               |
| `serie`           | CHAR(2)      | NULL                   | Ano ou série escolar correspondente        |
| `grau`            | CHAR(1)      | NULL                   | F = Ensino Fundamental \| M = Ensino Médio |

### Tabela Conteudos

| Campo            | Tipo         | Restrição              | Descrição                                     |
| :--------------- | :----------- | :--------------------- | :-------------------------------------------- |
| `pk_conteudo`    | INT          | **PK**, AUTO_INCREMENT | Identificador único do conteúdo               |
| `tituloconteudo` | VARCHAR(255) | NOT NULL               | Título do conteúdo programático               |
| `textoconteudo`  | TEXT         | NOT NULL               | Texto ou corpo do conteúdo                    |
| `fk_disciplina`  | INT          | **FK**                 | Relacionamento com a tabela de disciplinas    |
| `temimagem`      | CHAR(1)      | NULL                   | Indicador se o conteúdo possui imagem ou não  |

