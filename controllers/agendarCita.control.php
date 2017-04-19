<?php

  require_once("libs/template_engine.php");
  require_once("models/citas.model.php");
  session_start();
  function run(){

    addCssRef("public/css/estilos.css");

    $arrDatos=array();

    $sqlSelect = "Select usuarioId from usuarios where usuarioCorreo = '%s';";
    $sqlSelect = sprintf($sqlSelect,$_SESSION["usuarioCorreo"]);
    $usuarioId = obtenerUnRegistro($sqlSelect);

    $boolean = "";

    $arrDatos["usuarioId"]= "";
    $arrDatos["hora"] = "";
    $arrDatos["fecha"]="";
    $arrDatos["fechaHora"] = "";
    $arrDatos["idtipoPrograma"]= "";

    if(isset($_POST["btnEnviar"])){
      $arrDatos["usuarioId"] = intval($usuarioId["usuarioId"]);
      $arrDatos["hora"] = $_POST["hora"];
      $arrDatos["fecha"]= $_POST["dia"];
      $arrDatos["fechaHora"]= $arrDatos["dia"] . $arrDatos["hora"];
      $arrDatos["fechaHora"] = strtotime($arrDatos["fechaHora"]);
      $arrDatos["idtipoPrograma"]= $_SESSION["idtipoPrograma"];
      $boolean = registrarCita($arrDatos);
      if ($boolean>0) {
        redirectWithMessage("Cita Registrada con exito","index.php?page=home");
      }
      else {
        redirectWithMessage("Error en registrar cita","index.php?page=home");
      }

    }

    renderizar("agendarCita",array());
  }

  run();

?>
