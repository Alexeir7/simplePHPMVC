<div class="primero articulo">
  <h1>Inicio de Sesión</h1>
  <form action="{{returnurl}}" method="post">
    <label for="usuarioCorreo">Correo Electrónico:</label><br>
    <input type="email" name="usuarioCorreo" placeholder="Correo" required><br/><br>
    <label for="usuarioClave">Contraseña:</label><br>
    <input type="password" name="usuarioClave" placeholder="Contraseña" required><br/><br>
    <input type="submit" name="btnLogin" class="btnLogin" value="Iniciar Sesión">
  </form>
  <p>¿No tienes cuenta? <a href="index.php?page=registrate">Registrate!</a></p>
</div>
