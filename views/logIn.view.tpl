<div class="primero articulo">
  <h1>Inicio de Sesión</h1>
  <form action="manejador.php" method="post">
    <label for="user" class="sr-only">Usuario</label>
    <input type="text" name="user" class="form-control" placeholder="Nombre Usuario" required autofocus><br/><br>
    <label for="password" class="sr-only">Contraseña</label>
    <input type="password" name="password" class="form-control" placeholder="Contraseña" required><br/><br>
    <input type="submit" name="submit" class="btn btn-lg btn-primary btn-block" value="Registrarse">
  </form>
  <p class="articulo">No tienes cuenta? <a href="index.php?page=registrate">Registrate!</a></p>
</div>
