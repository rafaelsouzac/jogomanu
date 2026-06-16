<?php
declare(strict_types=1);

require_once(BASE_PATH . 'model/BuscaControllers_model.php');

class BuscaControllers
{
    private $obj_controllers = null;

    public function __construct()
    {
        $this->obj_controllers = new BuscaControllers_model();
    }

    public function slugController(string $slug){
        return $this->obj_controllers->nomeController($slug);
    }
}

$css_sistema = '';