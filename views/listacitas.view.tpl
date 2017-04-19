<div class="primero articulo">
<h1>Listado de Citas</h1>
<hr />
<br/>
<hr />
<br/>
<table class="table_100" border="1">
  <tbody>
    <tr>
      <th>Código</th>
      <th>Nombre</th>
      <th>Apellido</th>
      <th>Género</th>
      <th>Teléfono</th>
      <th>Correo</th>
      <th>Fecha y hora</th>
    </tr>
  {{foreach personas}}
    <tr>
      <td>{{usuarioId}}</td>
      <td>{{usuarioNombre}}</td>
      <td>{{usuarioApellido}}</td>
      <td>{{genero}}</td>
      <td>{{telefono}}</td>
      <td>{{usuarioCorreo}}</td>
      <td>{{fecha}}</td>
    </tr>
  {{endfor personas}}
  </tbody>
</table>
<script>
  function clickfilter(){
    document.forms[0].submit();
  }
</script>
</div>
