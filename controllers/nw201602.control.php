<?php
   /* Example Controller
    * 2015-10-14
    * Created By OJBA
    * Last Modification 2015-10-14 20:04
    */
     //Cargando Plantillero
     require_once("libs/template_engine.php");

     function run(){
       /* require_once("models/entidad.model.php ") */
       /* Procesamiento */
       $dataParaLaPlantilla = array();
       $dataParaLaPlantilla["nombre"] = "Orlando J Betancourth";

       renderizar("nw201602", $dataParaLaPlantilla);
     }
     run();
    ?>
