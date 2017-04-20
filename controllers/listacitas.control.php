<?php

  require_once("libs/template_engine.php");
  require_once("models/citas.model.php");

  function run(){
     addCssRef("public/css/estilos.css");

    $arreglo_a_vista = array();
    $arreglo_a_vista ["citas_resultado"]= obtenerCitas();
    renderizar("listacitas",$arreglo_a_vista);
  }
  run();
?>
