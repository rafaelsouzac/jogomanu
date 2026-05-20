<?php
    if(isset($parametros_base) && strlen($parametros_base) > 0){
        require_once(BASE_PATH."view/assets/partes_base/$parametros_base.php");
    }
    require_once(BASE_PATH."view/assets/partes_base/rodape_site.php");
?>