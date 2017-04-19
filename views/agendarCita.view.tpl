<div class="primero articulo">
  <h1>Agendar Cita</h1>
  <form class="formulario" action="index.php?page=agendarCita" method="post">


    <!-- funcion de calendario jquery -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
      $(function() {
        $("#datepicker").datepicker({beforeShowDay: $.datepicker.noWeekends, minDate: '0', changeMonth: false, changeYear: false, stepMonths: 0});
      });
    </script>
    <label for="dia">Seleccione una fecha: </label><br>
    <input type="text" name="dia" id="datepicker"><br><br>


    <label for="hora">Seleccione una hora para ser atendido: </label><br>
    <input type="radio" name="hora" value="1:00:00">1:00pm-1:50pm<br>
    <input type="radio" name="hora" value="2:00:00">2:00pm-2:50pm<br>
    <input type="radio" name="hora" value="3:00:00">3:00pm-3:50pm<br>
    <input type="radio" name="hora" value="4:00:00">4:00pm-4:50pm<br>
    <input type="radio" name="hora" value="5:00:00">5:00pm-5:50pm<br>
    <input type="submit" name="btnEnviar" value="Agendar Cita" id="btnEnviar">
  </form>
</div>
