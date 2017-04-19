<!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <title>{{page_title}}</title>
            <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
            <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
            <link rel="stylesheet" href="public/css/estilo.css" />
            <link rel="stylesheet" href="public/css/fontello.css" />
            <link rel="icon" href="public/imgs/favicon.ico" type="image/x-icon" />
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
                  <li> <a href="index.php?page=home">Inicio</a></li>
                  <li> <a href="index.php?page=quienesSomos">Quienes somos</a></li>
                  <li> <a href="#">Servicios</a>
                    <ul class="desplegable">
                      <li><a href="index.php?page=presenciales">Presenciales</a></li>
                      <li><a href="index.php?page=comunitarios">Comunitarios</a></li>
                    </ul>
                  </li>
                  <li> <a href="#">Programas</a>
                    <ul class="desplegable">
                      <li><a href="index.php?page=voluntariados">Voluntariados</a></li>
                      <li><a href="index.php?page=practicantes">Practicantes</a></li>
                      <li><a href="index.php?page=becas">Becas</a></li>
                      <li><a href="index.php?page=padrinazgos">Padrinazgos</a></li>
                    </ul>
                  </li>
                  <li><a href="index.php?page=galeria">Galeria</a></li>
                  <li><a href="index.php?page=acercaDe">Acerca de</a></li>
                  <li><a href="index.php?page=donaciones">Donaciones</a></li>
                  <li><a href="index.php?page=login">Inicio de Sesion</a></li>
                </ul>
              </nav>
            </div>
          </header>
          <main class="articulos">
              {{{page_content}}}
          </main>
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
