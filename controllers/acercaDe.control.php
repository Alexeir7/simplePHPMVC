<?php

  require_once("libs/template_engine.php");

  function run(){
    addCssRef("public/css/estilos.css");
    renderizar("acercaDe",array());
  }


  run();
?>
