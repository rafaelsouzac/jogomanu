document.addEventListener('DOMContentLoaded', () => {

    const form = document.getElementById('form-login');
    const email = document.getElementById('email');
    const senha = document.getElementById('senha');
    const redigitaSenha = document.getElementById('redigitasenha');
    
    // Elementos de erro específicos de cada campo
    const emailErro = document.getElementById('email-erro');
    const senhaErro = document.getElementById('senha-erro');
    const redigitaSenhaErro = document.getElementById('redigitasenha-erro');

    // Função auxiliar para exibir/esconder erros
    function gerenciarErro(input, elementoErro, mensagem) {
        if (mensagem) {
            elementoErro.textContent = mensagem;
            elementoErro.classList.add('visivel');
            input.setAttribute('aria-invalid', 'true');
            return false;
        } else {
            elementoErro.textContent = '';
            elementoErro.classList.remove('visivel');
            input.removeAttribute('aria-invalid');
            return true;
        }
    }

    // Validação individual do E-mail (Requer @ e pelo menos um ponto depois dele)
    function validarEmail() {
        const valorEmail = email.value.trim();
        
        if (!valorEmail) {
            return gerenciarErro(email, emailErro, 'O campo de e-mail não pode ficar vazio.');
        }
        
        // Expressão regular básica para validar formato: texto + @ + texto + . + sufixo
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(valorEmail)) {
            return gerenciarErro(email, emailErro, 'Por favor, insira um e-mail válido contendo "@" e um ponto (ex: usuario@provedor.net).');
        }
        
        return gerenciarErro(email, emailErro, '');
    }

    // Validação individual da Senha (Mínimo de 6 caracteres)
    function validarSenha() {
        const valorSenha = senha.value;

        if (!valorSenha) {
            return gerenciarErro(senha, senhaErro, 'O campo de senha não pode ficar vazio.');
        }
        
        if (valorSenha.length < 6) {
            return gerenciarErro(senha, senhaErro, 'A senha deve conter no mínimo 6 caracteres para criptografia.');
        }
        
        return gerenciarErro(senha, senhaErro, '');
    }

    // Validação individual da Confirmação de Senha
    function validarRedigitaSenha() {
        if (!redigitaSenha.value) {
            return gerenciarErro(redigitaSenha, redigitaSenhaErro, 'Por favor, digite a senha novamente.');
        }
        if (senha.value !== redigitaSenha.value) {
            return gerenciarErro(redigitaSenha, redigitaSenhaErro, 'As senhas não conferem.');
        }
        return gerenciarErro(redigitaSenha, redigitaSenhaErro, '');
    }

    // Escutadores de eventos para validar em tempo real enquanto o usuário digita
    email.addEventListener('input', validarEmail);
    senha.addEventListener('input', () => {
        validarSenha();
        if (redigitaSenha.value) validarRedigitaSenha(); // Revalida a confirmação se ela já tiver texto
    });
    redigitaSenha.addEventListener('input', validarRedigitaSenha);

    // Validação geral no envio do formulário
    form.addEventListener('submit', (e) => {
        // Executa todas as validações de uma vez para exibir todos os erros pendentes
        const isEmailValido = validarEmail();
        const isSenhaValida = validarSenha();
        const isRedigitaValido = validarRedigitaSenha();
    
        // Funcionalidade de Mostrar/Esconder Senha
    const botoesAlternar = document.querySelectorAll('.btn-alternar-senha');

    botoesAlternar.forEach(botao => {
        botao.addEventListener('click', () => {
            // Descobre qual input deve ser alterado usando o atributo data-alvo
            const idAlvo = botao.getAttribute('data-alvo');
            const inputAlvo = document.getElementById(idAlvo);

            if (inputAlvo.type === 'password') {
                inputAlvo.type = 'text';
                botao.textContent = '🙈'; // Muda o ícone para indicar que vai esconder
                botao.setAttribute('aria-label', 'Esconder senha');
            } else {
                inputAlvo.type = 'password';
                botao.textContent = '👁️'; // Retorna para o olho aberto
                botao.setAttribute('aria-label', 'Mostrar senha');
            }
        });
    });

    
        // Se qualquer uma das validações falhar, bloqueia o envio
        if (!isEmailValido || !isSenhaValida || !isRedigitaValido) {
            e.preventDefault();

            // Foca automaticamente no primeiro campo que estiver inválido
            if (!isEmailValido) {
                email.focus();
            } else if (!isSenhaValida) {
                senha.focus();
            } else if (!isRedigitaValido) {
                redigitaSenha.focus();
            }
        }
    });
});
