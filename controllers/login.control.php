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

    if(isset($_POST["btnLogin"])){

      $usuarioCorreo = $_POST["usuarioCorreo"];
      $usuarioClave = $_POST["usuarioClave"];

      $usuario = obtenerUsuario($usuarioCorreo);

      if ($usuario) {
        if ($usuario["usuarioClave"] == $usuarioClave) {

          header("location:index.php?page=galeria");
        }
        else {
          echo "error";
        }
      }

    }

    renderizar("login",array());

  }

  run();
?>
