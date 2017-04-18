<div class="primero articulo">
  <h1>Registrate</h1>
  <form action="formulario.html" method="post" id="formulario1">
    <label for="nombre">Nombre(s):</label><br>
    <input type="text" name="nombre" placeholder="Nombre" id="nombre"><br>
    <label for="apellido">Apellido(s):</label><br>
    <input type="text" name="apellido" placeholder="Apellido" id="apellido"><br>
    <label for="contraseña">Contraseña:</label><br>
    <input type="password" name="contraseña" placeholder="Contraseña" minlength=8 maxlength="20"><br>
    <label for="contraseñaConf">Confirmar contraseña:</label><br>
    <input type="password" name="contraseñaConf" placeholder="Confirmar contraseña" minlength=8 maxlength="20"><br>
    <label for="genero">Genero:</label><br>
    <input type="radio" name="genero" id="generom" value="M"/>
    <b>Masculino</b>
    <input type="radio" name="genero" id="generof" value="F"/>
    <b>Femenino</b><br>
    <label for="domicilio">Dirección:</label><br>
    <input type="text" name="direccion" placeholder="Dirección" id="direccion"><br>
    <label for="telefono">Numero de telefono:</label><br>
    <input type="tel" name="telefono" placeholder="Numero de telefono"><br>
    <label for="email">Correo electrónico:</label><br>
    <input type="email" name="email" placeholder="Correo electrónico" id="email"><br>
    <input type="submit" value="Registrar" name="btnEnviar" id="btnEnviar">
  </form>
</div>
