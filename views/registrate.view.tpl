<div class="primero articulo">
  <h1>Registrate</h1>
  <form action="index.php?page=registrate" method="post" id="formulario1">
    <label for="usuarioNombre">Nombre(s):</label><br>
    <input type="text" name="usuarioNombre" placeholder="Nombre" id="usuarioNombre"><br>
    <label for="usuarioApellido">Apellido(s):</label><br>
    <input type="text" name="usuarioApellido" placeholder="Apellido" id="usuarioApellido"><br>
    <label for="usuarioClave">Contraseña:</label><br>
    <input type="password" name="usuarioClave" placeholder="Contraseña" minlength=8 maxlength="20"><br>
    <label for="claveConf">Confirmar contraseña:</label><br>
    <input type="password" name="claveConf" placeholder="Confirmar contraseña" minlength=8 maxlength="20"><br>
    <label for="genero">Genero:</label><br>
    <input type="radio" name="genero" id="generom" value="M"/>
    <b>Masculino</b>
    <input type="radio" name="genero" id="generof" value="F"/>
    <b>Femenino</b><br>
    <label for="direccion">Dirección:</label><br>
    <input type="text" name="direccion" placeholder="Dirección" id="direccion"><br>
    <label for="telefono">Numero de telefono:</label><br>
    <input type="tel" name="telefono" placeholder="Numero de telefono"><br>
    <label for="usuarioCorreo">Correo electrónico:</label><br>
    <input type="email" name="usuarioCorreo" placeholder="Correo electrónico" id="usuarioCorreo"><br>
    <input type="submit" value="Registrar" name="btnEnviar" id="btnEnviar">
  </form>
</div>
