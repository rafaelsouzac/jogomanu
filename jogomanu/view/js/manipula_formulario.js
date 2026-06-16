document.addEventListener("DOMContentLoaded", () => {
    const serie = document.getElementById("serie");
    const disciplina = document.getElementById("disciplina");
    const mateira = document.getElementById("mateira");
    const num_quest = document.getElementById("num_quest");

    // Pega os pedaços da URL amigável
    // Exemplo: /5serie/matematica/geometria/20questoes -> ["5serie", "matematica", "geometria", "20questoes"]
    const partes = window.location.pathname.split('/').filter(p => p !== '' && p !== 'jogomanu');

    // --- LÓGICA DE HABILITAÇÃO ---
    // Reseta todos para desabilitado (exceto série)
    disciplina.disabled = true;
    mateira.disabled = true;
    num_quest.disabled = true;

    // Habilita conforme a profundidade da URL

    if (partes[0]){
        serie.value = partes[0];
        disciplina.disabled = false;
    }

    if(partes[1]){
        disciplina.value = partes[1];
        mateira.disabled = false;
        
    }
    
    if(partes[2]){
        mateira.value = partes[2];
        num_quest.disabled = false;
        
    }

    if(partes[4]){
        num_quest.value = partes[4];
    }

    // --- EVENTOS DE MUDANÇA (REDIRECT) ---
    serie.addEventListener("change", () => {
        if (serie.value) {
            // Se mudar a série, a URL recomeça
            window.location.href = `/jogomanu/${serie.value}`;
        }
    });

    disciplina.addEventListener("change", () => {
        if (disciplina.value) {
            // Se mudar a disciplina, mantém a série e adiciona ela
            window.location.href = `/jogomanu/${partes[0]}/${disciplina.value}`;
        }
    });

    mateira.addEventListener("change", () => {
        if (mateira.value) {
            // Mantém série e disciplina, adiciona matéria
            window.location.href = `/jogomanu/${partes[0]}/${partes[1]}/${mateira.value}`;
        }
    });

    num_quest.addEventListener("change", () => {
        if (num_quest.value) {
            // URL Final completa
            window.location.href = `/jogomanu/${partes[0]}/${partes[1]}/${partes[2]}/exercicios/${num_quest.value}`;
        }
    });
});