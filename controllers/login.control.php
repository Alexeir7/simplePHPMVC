<?php

  require_once("libs/template_engine.php");
  require_once("models/usuarios.model.php");
  session_start();

  function run(){

    addCssRef("public/css/estilos.css");

    $arrayForLogin = array(
      "usuarioCorreo" => "",
      "usuarioClave" => "",
      "returnurl" =>""
    );

    if(isset($_POST["usuarioCorreo"])){
      $errores = autenticarUsuario($_POST);

      if(count($errores)){
        $arrayForLogin["errores"] = $errores;
      }else{
        $_SESSION["usuarioCorreo"] = $_POST["usuarioCorreo"];
        $_SESSION["idtipoPrograma"] = $_GET["idtipoPrograma"];

        $returnurl = (isset($_POST["returnurl"]))? (urldecode($_POST["returnurl"])||"index.php"):"index.php";
        mw_setEstaLogueado($_POST["usuarioCorreo"],true);
        redirectWithMessage("Credenciales Validas.",$returnurl);
      }
    }
    $arrayForLogin["returnurl"] = (isset($_GET["returnUrl"]))?$_GET["returnUrl"]:"";
    renderizar("login",$arrayForLogin);
  }

  run();
?>
