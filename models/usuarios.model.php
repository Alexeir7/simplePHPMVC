<?php
   require_once("libs/dao.php");

   function salt_password($seed, $rawpswd){
     $saltedPswd = "";
     $seed = intval(substr($seed, -2));
     if($seed%2){
       $saltedPswd = $rawpswd . $seed;
     }else{
       $saltedPswd = $seed . $rawpswd;
     }
     return $saltedPswd;
   }

   function registrarUsuario($arrUserData){
     $userid = 0;
     $usuarioCorreo = $arrUserData["usuarioCorreo"];
     $usuarioNombre = $arrUserData["usuarioNombre"];
     $usuarioApellido = $arrUserData["usuarioApellido"];
     $genero = $arrUserData["genero"];
     $direccion = $arrUserData["direccion"];
     $telefono = $arrUserData["telefono"];
     $usuarioClave = $arrUserData["usuarioClave"];
     $claveConf = $arrUserData["claveConf"];

     if ($usuarioClave !== $claveConf) return 0;
     //validaciones

     $usuarioFechaIngreso = date('Y-m-d H:i:s');
     $usuarioClave = md5(salt_password($usuarioFechaIngreso,$usuarioClave));


     $sqlinsert= "INSERT INTO `usuarios` (`usuarioCorreo`, `usuarioNombre`, `usuarioApellido`, `genero`, `direccion`, `telefono`, `usuarioClave`, `usuarioFechaIngreso`) VALUES ( '%s', '%s', '%s', '%s', '%s', '%s', '%s', NOW());";
     $sqlinsert = sprintf($sqlinsert,$usuarioCorreo,$usuarioNombre,$usuarioApellido, $genero, $direccion, $telefono, $usuarioClave, $usuarioFechaIngreso);
     if(ejecutarNonQuery($sqlinsert)){
       return getLastInserId();
     }
     return 0;
   }

   function validarUsuario($userEmail, $validTocken){

     return true; //| false
   }

   function autenticarUsuario($arrUserData){
     $arrErrores = array();
     //obtener los datos del usuario
     $usuarioCorreo = $arrUserData["usuarioCorreo"];
     $usuarioClave = $arrUserData["usuarioClave"];
     $returnUrl = "";

     $sqlstr = "Select usuarioId, usuarioCorreo, usuarioNombre, usuarioApellido, genero, direccion, telefono, usuarioClave, usuarioEstado, usuarioFechaIngreso, intentos, codigoRol from usuarios where usuarioCorreo = '%s';";
     $sqlstr = sprintf($sqlstr , $usuarioCorreo);
     $usuario = obtenerUnRegistro($sqlstr);
     if(count($usuario)){

       if ($usuario["usuarioEstado"] == "ACT"){
           $usuario_pswd_cnf = md5(salt_password($usuario["usuarioFechaIngreso"], $usuarioClave));
           if($usuario_pswd_cnf == $usuario["usuarioClave"]){
               //actualizar fallos en 0, actualizar la fecha de ultimo login a hoy
               $sqlupdate = "update usuarios set intentos=0, usuarioUltimoLogin='%s' where usuarioId = %d;";
               $sqlupdate = sprintf($sqlupdate, date('Y-m-d H:i:s'), $usuario["usuarioId"]);
               ejecutarNonQuery($sqlupdate);
               
               if ($usuario["codigoRol"] == 1) {
                  header("Location:index.php?page=listaCitas");
               }
               else {
                 header("Location:index.php?page=agendarCita");
               }
           }else{
               $arrErrores[] = "Credenciales no son Válidas.";
               //actualizar el registro para aumentar los fallos
               $usuario_est = $usuario["usuarioEstado"];
               if($usuario["intentos"] >= 3){
                  $usuario_est = 'BLQ';
               }
               $sqlupdate = "update usuarios set intentos=%d, usuarioEstado='%s' where usuarioId = %d;";
               $sqlupdate = sprintf($sqlupdate, ($usuario["intentos"] + 1),
                                                 $usuario_est ,
                                                 $usuario["usuarioId"]);
               ejecutarNonQuery($sqlupdate);
           }
       }else{
         $arrErrores[] = "Usuario no se encuentra Activo";
       }
     }else{
       $arrErrores[] = "No se pudo encontrar el usuario.";
     }
     //vamos a obetner el usuario con el correo
     // estado, correo, contraseña encriptada, fecha ingreso, fallidos

     return $arrErrores;
   }
  /*
   function cambiarContrasenia($arrUserData){

     return true; // false;
   }

   function bloquearUsuario($userid){
       return true; //false
   }
*/
   function obtenerUsuarios(){
     $usuarios = array();
     $sqlstr = "select * from usuarios;";
     $usuarios = obtenerRegistros($sqlstr);
     return $usuarios;
   }

   ?>
