# Contexto
Você atuará como um *programador senior* para gerar o código requerido em `## Trabalho solicitado` respeitando integralmente as `## Regras de Negócio` e utilizando de forma adaptativa o `## Modelo de código`.

## Trabalho solicitado
- Gere um resumo sobre a utilização das palavras `Traz`, `Trás`, `Atrás`e `Detrás`.
- O resumo *não* necessita de exemplos.
- Todo o resumo deve ser inserido dentro do código contido em `## Modelo de código`.
- Deve ser gerado um arquivo e este deve estar em utf8mb4.

## Regras de Negócio
- Utilizar as definições de cores e fontes o tamanho da fonte pode variar usando o atributo style na tag.
```
:root {
      --cor-primaria:  #1565C0;
      --cor-fundo:     #F8F9FA;
      --cor-texto:     #212121;
      --cor-acerto:    #2E7D32;
      --cor-erro:      #C62828;
      --cor-acao:      #6A1B9A;
      --cor-destaque:  #F57F17;
      --fonte-titulo:  'League Spartan', sans-serif;
      --fonte-corpo:   'Poppins', sans-serif;
      font-size: 18px;
    }

```
## Modelo de código
```
  <!-- Modal sobreposto com o conteúdo do resumo -->
  <div id="resumo_resposta" class="resumo-overlay" style="display: none;" aria-hidden="true">
    <div class="fechar-resumo">
      <a href="#" id="btn-fechar-resumo" class="btn-fechar-resumo">&gt;&gt;&gt; Fechar &lt;&lt;&lt;</a>
    </div>
    <div class="resumo-titulo-secao">
      Minimo Multiplo Comum
    </div>
      <div class="opcao-radio" style="display: flex; align-items: center; gap: 0.75rem; padding: 0.75rem 1rem; border: 1.5px solid #cfd8dc; border-radius: 8px; background: #f1f0f0; transition: border-color .2s ease;" >
        <span class="resumo-item-titulo">
          1. Faça a decomposição do(s) número(s). </br>
          2. Inicie sempre pelo menor número que divida ambos os numeros. </br>
          3. Faça o calculo dos expoente.</br>
          </br>
          Ex. 20 40 | 2</br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10&nbsp;20&nbsp;|&nbsp;2</br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5&nbsp;10&nbsp;|&nbsp;2</br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5&nbsp;&nbsp;5&nbsp;|&nbsp;5</br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;|&nbsp;---</br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;2³&nbsp;=&nbsp;8&nbsp;*&nbsp;5&nbsp;=&nbsp;40</br>
        </span>
      </div>
  </div>

```