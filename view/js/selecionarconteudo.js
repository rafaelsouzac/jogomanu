document.addEventListener('DOMContentLoaded', () => {
    const selectDisciplina = document.getElementById('disciplina');
    const selectConteudo = document.getElementById('conteudo');
    const btnSubmeter = document.getElementById('btn-submeter');
    const alertaSistema = document.getElementById('alerta-sistema');

    // Carrega disciplinas cadastradas ao iniciar a página
    carregarDisciplinas();

    selectDisciplina.addEventListener('change', async (e) => {
        const pkDisciplina = e.target.value;

        // Reset do campo de conteúdos
        selectConteudo.innerHTML = '<option value="">Selecione um conteúdo...</option>';
        selectConteudo.disabled = true;
        btnSubmeter.disabled = true;

        if (!pkDisciplina) {
            return;
        }

        try {
            const response = await fetch(`BuscarConteudosApiController.php?fk_disciplina=${pkDisciplina}`);
            
            if (!response.ok) {
                throw new Error('Erro ao buscar conteúdos do servidor.');
            }

            const conteudos = await response.json();

            if (conteudos.length === 0) {
                selectConteudo.innerHTML = '<option value="">Nenhum conteúdo encontrado</option>';
                return;
            }

            conteudos.forEach(conteudo => {
                const option = document.createElement('option');
                option.value = conteudo.pk_conteudo;
                option.textContent = conteudo.tituloconteudo;
                selectConteudo.appendChild(option);
            });

            selectConteudo.disabled = false;
        } catch (error) {
            exibirAlerta(error.message);
        }
    });

    selectConteudo.addEventListener('change', (e) => {
        btnSubmeter.disabled = e.target.value === '';
    });

    async function carregarDisciplinas() {
        try {
            const response = await fetch('BuscarDisciplinasApiController.php');
            if (!response.ok) throw new Error('Erro ao carregar disciplinas.');
            
            const disciplinas = await response.json();
            disciplinas.forEach(disc => {
                const option = document.createElement('option');
                option.value = disc.pk_disciplina;
                option.textContent = `${disc.nomedisciplina} (${disc.grau === 'F' ? 'Fundamental' : 'Médio'})`;
                selectDisciplina.appendChild(option);
            });
        } catch (error) {
            exibirAlerta(error.message);
        }
    }

    function exibirAlerta(mensagem) {
        alertaSistema.textContent = mensagem;
        alertaSistema.className = 'alerta alerta-perigo';
    }
});
