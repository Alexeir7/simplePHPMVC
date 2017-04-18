<?php

    session_start();

    require_once("libs/utilities.php");

    $pageRequest = "home";

    if(isset($_GET["page"])){
        $pageRequest = $_GET["page"];
    }

    //Incorporando los midlewares son codigos que se deben ejecutar
    //Siempre
    require_once("controllers/verificar.mw.php");
    require_once("controllers/site.mw.php");


    //Este switch se encarga de todo el enrutamiento
    switch($pageRequest){

      case "home":
        //llamar al controlador
        require_once("controllers/home.control.php");
        break;

      case "quienesSomos":
        require_once("controllers/quienesSomos.control.php");
        break;

      case "presenciales":
        require_once("controllers/presenciales.control.php");
        break;

      case "comunitarios":
        require_once("controllers/comunitarios.control.php");
        break;

      case "voluntariados":
        require_once("controllers/voluntariados.control.php");
        break;

      case "practicantes":
        require_once("controllers/practicantes.control.php");
        break;

      case "becas":
        require_once("controllers/becas.control.php");
        break;

      case "padrinazgos":
        require_once("controllers/padrinazgos.control.php");
        break;

      case "galeria":
        require_once("controllers/galeria.control.php");
        break;

      case "acercaDe":
        require_once("controllers/acercaDe.control.php");
        break;

      case "donaciones":
        require_once("controllers/donaciones.control.php");
        break;

      case "login":
        require_once("controllers/login.control.php");
        break;

      case "registrate":
        require_once("controllers/registrate.control.php");
        break;

      default:
        require_once("controllers/error.control.php");

    }
?>
