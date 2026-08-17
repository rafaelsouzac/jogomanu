# Contexto
Você atuará como um programador senior um codigo html5 com css3.

## Estrutura de Arquivos
- O código que será gerado é uma div.
- Essa div é integrada a um código html5 já existente.
- O código existente encontra-se no subtitulo *## Codigo Atual*
- O código CSS 3 encontra-se no arquivo em anexo.
- O layout do conteúdo da div, respeita integralmente o layout do código html em *## Codigo Atual*

## Requisitos
- A div deve manter a mesma largura do layout da página.
- A div deve ter scroll ativo quando o conteúdo ultrapassar sua altura.
- O conteúdo da div deve se ajustar a largura da div.
- O layout do conteúdo interno da div é igual ao do arquivo *resumo_pontuacao.pdf*.
- Gere o layout interno e um *conteudo fake* para analise do layout.
- As cores e tipografia da div respeitam integralmente as definições de layout em *Definições Para Codigos HTML5 e CSS3*.
- Se houver necessidade de gerar códigos extras, cada tecnologia deve respeitar a separação de código, formando arquivos independente ou atualizar arquivos já existentes.

## Entrega solicitada
- A div *id="resumo_resposta"* deve iniciar de forma oculta quando a página for carregada pelo browser.
- Quando o usuário clicar no link *Resumo Materia* que esta localizado dentro de <h2></h2> a div torne-se visivel.
- A div deve aparecer sobreposta, sobre o conteudo.
- Quando o usuário clcar no link *>>> fechar <<<* a div deve ser novamente oculta.

## Definições Para Codigos HTML5 e CSS3
```
======================== DEFINIÇÕES DO PRODUTO ===========================

Tabela de cores:
Papel                     Hex
Primária / foco        #1565C0
Fundo principal        #F8F9FA
Texto principal        #212121
Acerto / progresso     #2E7D32
Erro / alerta          #C62828
Engajamento / ação     #6A1B9A
Destaque / gamificação #F57F17

Fontes utilizadas
    Títulos e destaques: League Spartan
    Corpo e leitura:     Poppins

Escala Tipografica - base 18px:
Elemento   rem      px
H1         2.2rem  ~40px
H2         1.7rem  ~31px
H3         1.35rem ~24px
Corpo      1rem    ~18px
Label/meta 0.85rem ~15px

Estrutura de diretórios - Não deve ser alterada.

/jogomanu/index.php 
/jogomanu/.htacess
/jogomanu/view/home.php
/jogomanu/view/
/jogomanu/view/css/app.css
/jogomanu/view/js/app.js
/jogomanu/view/assets/Quiz.php
```

## Código Atual
```
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
        echo($_SESSION['perguntas'][$_SESSION['indice_pergunta']]['enunciado']); ?> <a href="#">Resumo Materia</a>
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
          <input type="radio" id="alt-a" name="alternativa" value="<?php echo($resposta['pk_resposta']); ?>" class="form-radio" style="accent-color: var(--cor-primaria); width: 1.1rem; height: 1.1rem; cursor: pointer;">
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
  <div id="resumo_materia">
      <a href="#">>>> Fechar <<<</a>
  </div>
</main>

```