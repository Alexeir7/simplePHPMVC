<?php
/* Home Controller
 * 2014-10-14
 * Created By OJBA
 * Last Modification 2014-10-14 20:04
 */
  require_once("libs/template_engine.php");

  function run(){
    addCssRef("public/css/estilos.css");
    renderizar("voluntariados",array());
  }


  run();
?>
