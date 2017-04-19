<?php

  require_once("libs/template_engine.php");
  require_once("models/usuarios.model.php");

  function run(){
     addCssRef("public/css/estilos.css");

     renderizar("listacitas",array());
  }

  run();
?>
