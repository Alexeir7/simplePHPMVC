<?php
/* Home Controller
 * 2014-10-14
 * Created By OJBA
 * Last Modification 2014-10-14 20:04
 */
  require_once("libs/template_engine.php");
  require_once("models/usuarios.model.php");




  function run(){
    addCssRef("public/css/estilos.css");

    $arrDatos=array();

    $arrDatos["usuarioCorreo"]="";
    $arrDatos["usuarioNombre"]="";
    $arrDatos["usuarioApellido"]="";
    $arrDatos["genero"]="";
    $arrDatos["direccion"]="";
    $arrDatos["telefono"]="";
    $arrDatos["usuarioClave"]="";
    $arrDatos["claveConf"]="";


    if(isset($_POST["btnEnviar"])){
      $arrDatos["usuarioCorreo"]=$_POST["usuarioCorreo"];
      $arrDatos["usuarioNombre"]=$_POST["usuarioNombre"];
      $arrDatos["usuarioApellido"]=$_POST["usuarioApellido"];
      $arrDatos["genero"]=$_POST["genero"];
      $arrDatos["direccion"]=$_POST["direccion"];
      $arrDatos["telefono"]=$_POST["telefono"];
      $arrDatos["usuarioClave"]=$_POST["usuarioClave"];
      $arrDatos["claveConf"]=$_POST["claveConf"];
      registrarUsuario($arrDatos);\
      redirectWithMessage("Se inserto","index.php?page=home");
    }


    renderizar("registrate",array());
  }

  run();
?>
