<div class="primero articulo">
  <h1>Listado de Citas</h1>
  <hr/>
  <br/>
  <table border="1">
    <tbody>
      <tr>
        <th>Código cita</th>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>Telefono</th>
        <th>Correo</th>
        <th>Hora</th>
        <th>Dia</th>
        <th>Programa</th>
      </tr>
      {{foreach citas_resultado}}
      <tr>
        <th>{{codigoCita}}</th>
        <th>{{usuarioNombre}}</th>
        <th>{{usuarioApellido}}</th>
        <th>{{telefono}}</th>
        <th>{{usuarioCorreo}}</th>
        <th>{{fechaHora}}</th>
        <th>{{fechaDia}}</th>
        <th>{{descripcion}}</th>
      </tr>
      {{endfor citas_resultado}}
    </tbody>
  </table>

  <br><br><br><br><br><br><br>
</div>
