
<?php
require_once(BASE_PATH.'controller/formulario_selecao_disciplina.php');
?>
<div class="mb-3">
    <form action="">
        <div class="linha_formulario">
            <div >
                <select id="serie" name="serie" class="form-select" aria-label="Default select example">
                    <option selected>Selecione A Série    </option>
                    <option value="quarta-serie">4º Série</option>
                    <option value="quinta-serie">5º Série</option>
                </select>
            </div>
            <div >
                <select id="disciplina" name="disciplina" class="form-select" aria-label="Default select example">
                    <option selected>Selecione A Disciplina</option>
                    <?php 
                        if(!$disciplina){
                            $disciplinas = seleciona_disciplinas();
                            foreach($disciplinas->fetch_all() as $linha){
                    ?>
                    <option value="<?php echo("$linha[1]");?>"><?php echo("$linha[1]");?></option>
                    <?php
                        }
                    }
                    ?>
                </select>
            </div>
            <div>
                <select id="mateira" name="mateira" class="form-select" aria-label="Disabled select example">
                    <option selected>Selecione A Materia</option>
                    <option value="geometria">Geometria</option>
                    <option value="multiplicacao">Multiplicacao</option>
                    <option value="divisao">Divisao</option>
                </select>
            </div>
            <div>
                <select id="num_quest" name="num_quest" class="form-select" aria-label="Disabled select example">
                    <option selected>Selecione o Número De Questão</option>
                    <option value="One">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                </select>
            </div>
        </div>
    </form>
</div>