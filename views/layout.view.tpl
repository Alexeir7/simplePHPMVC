<!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <title>{{page_title}}</title>
            <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
            <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
            <link rel="stylesheet" href="public/css/estilo.css" />
            <link rel="stylesheet" href="public/css/fontello.css" />
            {{foreach css_ref}}
                <link rel="stylesheet" href="{{uri}}" />
            {{endfor css_ref}}
        </head>
        <body>
          <header>
            <div class="contenedor">
              <img src="public/imgs/logo_juana_leclerc.png" alt="logo juana leclerc" id="logo">
              <h1>Instituto Psicopedagógico</h1>
              <h2>"JUANA LECLERC"</h2>
              <input type="checkbox" id="menu-bar">
              <label class="icon-menu" for="menu-bar"></label>
              <nav class="menu">
                <ul>
                  <li> <a href="index.html">Inicio</a></li>
                  <li><a href="quienesSomos.html">Quienes somos</a></li>
                  <li> <a href="#">Servicios</a>
                    <ul class="desplegable">
                      <li><a href="presenciales.html">Presenciales</a></li>
                      <li><a href="comunitarios.html">Comunitarios</a></li>
                    </ul>
                  </li>
                  <li> <a href="#">Programas</a>
                    <ul class="desplegable">
                      <li><a href="voluntariados.html">Voluntariados</a></li>
                      <li><a href="practicantes.html">Practicantes</a></li>
                      <li><a href="becas.html">Becas</a></li>
                      <li><a href="padrinazgos.html">Padrinazgos</a></li>
                    </ul>
                  </li>
                  <li><a href="galeria.html">Galeria</a></li>
                  <li> <a href="acercaDe.html">Acerca de</a></li>
                  <li> <a href="donaciones.html">Donaciones</a></li>
                </ul>
              </nav>
            </div>
          </header>
          <div class="contenido">
              {{{page_content}}}
          </div>
          <footer>
            <div class="contenedor" >
              <p><b>Contactanos</b></p>
              <p class="icon-location">Colonia los Robles,final de la calle principal, contiguo a escuela pública los Robles</p>
              <p class="icon-phone-squared">2233-3120</p>
                <div class="Sociales">
                  <a class="icon-facebook-official" href="https://es-la.facebook.com/juanaleclerc/">/juanaleclerc</a><br/>
                </div>
                <p class="copy">Derechos Reservados &copy 2017</p>
            </div>
          </footer>
        </body>
    </html>
