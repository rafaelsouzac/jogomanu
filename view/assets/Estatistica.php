<main id="conteudo-principal" role="main">
  <!-- Reutiliza a estrutura de Card (Modelo 2) adaptada para o Quiz -->
  <div class="card-login" style="max-width: 520px;">

    <!-- Logo do Produto -->
    <div class="logo" aria-label="Ensino Fundamental e Médio">
      Ensino Fundamental e Médio
    </div>
    <h3 class="pergunta-quiz" style="font-family: var(--fonte-titulo); font-size: 1.20rem; font-weight: 500; color: var(--cor-texto); margin: 1.5rem 0 1rem 0; line-height: 1.4;">
    </h3>
    <div class="tabela_resultado">
      <table>
        <thead>
          <tr class="estatisticas">
            <th>Acertos: <strong><?php echo($info_cabecalho[0]['total_de_acertos']);?></strong></th>
            <th>Erros: <strong><?php echo($info_cabecalho[0]['total_de_erros']);?></strong></th>
            <th>Score: <strong><?php echo(number_format($info_cabecalho[0]['porcentagem_de_acertos'], 0,',', '.')."%");?></strong></th>
          </tr>
          <tr class="cabecalho">
            <th>Questão</th>
            <th>Sua </br>Resposta</th>
            <th>Resposta </br>Certa</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach( $info_respostas as $linha ) { 
          ?>
          <tr>
            <td><?php echo("".$linha['enunciado'].""); ?></td>
            <td><?php echo("".$linha['sua_resposta'].""); ?></td>
            <td><?php echo("".$linha['CORRECAO'].""); ?></td>
          </tr>
          <?php 
          } ?>
        </tbody>
      </table>
    </div>
    <div class="links-rodape">
            <a href="selecionarmateria">Novo Quiz</a>
            &nbsp;·&nbsp;
            <a href="finalizaquiz">Finalizar</a>
     </div>
  </div>
</main>