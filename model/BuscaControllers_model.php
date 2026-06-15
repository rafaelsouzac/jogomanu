<?php
/**
 * 
 * Desenvolva a classe de nome BuscaControllers com as caracteristicas informadas.
 * Utilize a PSR1 e PSR12 como guia de estilo para codificação.
 * Classe de acesso ao banco de dados esta em model/VinculoBancoDeDados
 * A classe BuscaControllers fica em model/BuscaControllers
 * 
 *  BuscaControllers tem a função de pesquisar, no banco de dados, e retorna quando existente  o nome do controller relacionado ao slug capturado. Quando inexistente retorna 0 (zero).
 * 
 *  A classe é composta por um métdo chamado nomeController que recebe como parametro o slug e retorna o nome do controller associado.
 * 
 *  Tabela: slugs
 *  Campos: idslug - int
 *                    slug - varchar(510)
 *           controller - varchar(100)
 * 
 * 
 */

declare(strict_types=1);

require_once(BASE_PATH . 'model/VinculoBancoDeDados.php');

class BuscaControllers_model
{
    private VinculoBancoDeDados $vinculoBancoDeDados;

    public function __construct()
    {
        $this->vinculoBancoDeDados = new VinculoBancoDeDados();
    }

    public function nomeController(string $slug): string|int
    {
        $conexao = $this->vinculoBancoDeDados->ligado();

        $sql = 'call usp_busca_slug(:slug);';

        $comando = $conexao->prepare($sql);

        $comando->bindValue(
            ':slug',
            $slug,
            PDO::PARAM_STR
        );

        $comando->execute();

        $resultado = $comando->fetch(PDO::FETCH_ASSOC);

        if ($resultado === false) {
            return 0;
        }

        return $resultado['controller'];
    }

    public function __destruct()
    {
        $this->vinculoBancoDeDados->desligado();
    }
}