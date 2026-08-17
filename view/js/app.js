  'use strict';

    /* ============================================================
       VALIDAÇÕES
    ============================================================ */
    function validarEmail(email) {
      return /^.+@.{4,}\.[a-zA-Z]{3,}$/.test(email.trim());
    }

    function campoPreenchido(valor) {
      return valor.trim().length > 0;
    }

    /* ============================================================
       FEEDBACK VISUAL
    ============================================================ */
    function exibirErroCampo(campo, mensagem) {
      campo.classList.add('campo-erro');
      var span = document.getElementById(campo.id + '-erro');
      if (span) {
        span.textContent = mensagem;
        span.classList.add('visivel');
      }
    }

    function limparErroCampo(campo) {
      campo.classList.remove('campo-erro');
      var span = document.getElementById(campo.id + '-erro');
      if (span) {
        span.textContent = '';
        span.classList.remove('visivel');
      }
    }

    function validarAoSair(campo, fnValidar) {
      campo.addEventListener('blur', function() {
        var erro = fnValidar(campo.value);
        if (erro) {
          exibirErroCampo(campo, erro);
        } else {
          limparErroCampo(campo);
        }
      });
      campo.addEventListener('input', function() {
        limparErroCampo(campo);
      });
    }

    /* ============================================================
       ALERTAS
    ============================================================ */
    function exibirAlerta(mensagem, tipo) {
      var alerta = document.getElementById('alerta-sistema');
      if (!alerta) return;
      alerta.className = 'alerta alerta-' + tipo + ' visivel';
      alerta.textContent = mensagem;
    }

    /* ============================================================
       FORMULÁRIO DE LOGIN
    ============================================================ */
    document.addEventListener('DOMContentLoaded', function() {

      var form  = document.getElementById('form-login');
      var email = document.getElementById('email');
      var senha = document.getElementById('senha');

      validarAoSair(email, function(valor) {
        if (!campoPreenchido(valor)) return 'O e-mail é obrigatório.';
        if (!validarEmail(valor))    return 'Digite um e-mail válido.';
        return null;
      });

      validarAoSair(senha, function(valor) {
        if (!campoPreenchido(valor)) return 'A senha é obrigatória.';
        return null;
      });

      form.addEventListener('submit', function(e) {
        var valido = true;

        if (!campoPreenchido(email.value) || !validarEmail(email.value)) {
          exibirErroCampo(email, !campoPreenchido(email.value)
            ? 'O e-mail é obrigatório.'
            : 'Digite um e-mail válido.'
          );
          valido = false;
        }

        if (!campoPreenchido(senha.value)) {
          exibirErroCampo(senha, 'A senha é obrigatória.');
          valido = false;
        }

        if (!valido) e.preventDefault();
      });

    });
//======================================================
//  DIV RESUMO MATERIA
//======================================================
function inicializarResumoMateria() {
  // Captura cliques globais na página
  document.addEventListener('click', function (event) {
    
    // Identifica clique no link "Resumo Materia" (por ID ou pela classe)
    const btnAbrir = event.target.closest('#btn-abrir-resumo');
    if (btnAbrir) {
      event.preventDefault();
      const resumoDiv = document.getElementById('resumo_resposta');
      if (resumoDiv) {
        resumoDiv.style.setProperty('display', 'block', 'important');
        resumoDiv.classList.add('visivel');
        resumoDiv.setAttribute('aria-hidden', 'false');
        btnAbrir.setAttribute('aria-expanded', 'true');
      } else {
        console.error('Div #resumo_resposta não foi encontrada no DOM.');
      }
      return;
    }

    // Identifica clique no link ">>> Fechar <<<"
    const btnFechar = event.target.closest('#btn-fechar-resumo');
    if (btnFechar) {
      event.preventDefault();
      const resumoDiv = document.getElementById('resumo_resposta');
      if (resumoDiv) {
        resumoDiv.style.setProperty('display', 'none', 'important');
        resumoDiv.classList.remove('visivel');
        resumoDiv.setAttribute('aria-hidden', 'true');
        
        const btnAbrirEl = document.getElementById('btn-abrir-resumo');
        if (btnAbrirEl) {
          btnAbrirEl.setAttribute('aria-expanded', 'false');
        }
      }
      return;
    }
  });
}

// Inicializa a escuta de eventos
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', inicializarResumoMateria);
} else {
  inicializarResumoMateria();
}

