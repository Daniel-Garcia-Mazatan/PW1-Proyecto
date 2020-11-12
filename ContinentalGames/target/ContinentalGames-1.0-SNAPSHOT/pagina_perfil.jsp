<%-- 
    Document   : perfil
    Created on : 8/11/2020, 02:24:47 AM
    Author     : DanielGM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Continental Games</title>
    <link rel="stylesheet" href="Styles/pagina_perfil.css">
    <script src="javascript/sesion_perfil.js"></script>

    <link href="https://fonts.googleapis.com/css2?family=Bangers&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>

<body background="body-image.jpg">

  <!-- ////////////////////////////////////////////////////////////////////////////////
      ///////////////////////////////ENCABEZADO//////////// ///////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////-->

    <header class="header">
     
      <div class = "conjunto">

        <div class = "image">
          <img src="LOGO.png" alt="logo" style="width:75px;height:75px;">
        </div>
        

        <div class = "continental">
           <h1>CONTINENTAL GAMES</h1>
        
        </div>

        <!-- <div class ="buscador">
          <label for="Buscar"></label>
          <input type="text" name="Buscar" id="buscaop" placeholder="Palabra clave" />
        </div>
        
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button> -->
        <!-- <button class="btn btn-light btn-sm" type="button">Buscar</button> -->
      
        <nav class ="menu">

           <a href="pagina_principal.jsp" class="btn btn-secondary">Inicio    </a>
           <a href="pagina_quienes_somos.jsp" class="btn btn-secondary">Nosotros  </a>
           <a href="pagina_contacto.jsp" class="btn btn-secondary">Contacto  </a>
        </nav>

        <!-- MINI MENU DE USUARIO -->
        <div class="dropdown">
          <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" 
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Usuario
          </button>
          
          <div class="dropdown-menu" id="dropdown-menu-1" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" id="iniciar" onclick="iniciar_sesion()" href="#">Iniciar sesion</a>
            <a class="dropdown-item" id="perfil" href="pagina_perfil.jsp">Mi perfil</a>
            <a class="dropdown-item" id="agregar" href="pagina_agregar_noticia.jsp">Agregar noticia</a>
            <a class="dropdown-item" id="evaluar" href="pagina_evaluar_noticia.jsp">Evaluar noticias</a>
            <a class="dropdown-item" id="cerrar" onclick="cerrar_sesion()" href="#">Cerrar sesion</a>
            <a class="dropdown-item" id="ayuda" href="pagina_ayuda.jsp">Ayuda</a>
          </div>
        </div>
        
        <div class = "image2">
          <img src="Usuario.png" alt="usuario" style="width:55px;height:45px;">
        </div> 

      </div>
     
    </header>


    <!-- ////////////////////////////////////////////////////////////////////////////////
      //////////////////////BARRA DE MENU(DONDE VIENE EL MENU) ///////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////-->

    <nav class="navbar navbar-expand-lg navbar-dark">
      <!-- <a class="navbar-brand" href="#">Navbar</a> -->
      <!-- <button class="navbar-toggler" type="button" data-toggle="collapse" 
        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" 
        aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button> -->
    
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="pagina_xbox.jsp">X BOX</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pagina_playstation.jsp">PLAY STATION</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pagina_nintendo.jsp">NINTENDO</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pagina_e3.jsp">E3</a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" placeholder="Palabra clave" aria-label="Search">
          <!-- <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button> -->
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
            <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
            </svg>
          </button>
        </form>
      </div>
    </nav>

    <div class="info">Mi perfil</div>

    <div class = "image3">
        <img src="Usuario.png" alt="usuario">
    </div> 

    <div id="list-item-2" class="card-perfil text-left">
        <div class="card-body">
        <form action="" class="perfil" name="perfil" id="perfil" method="GET" novalidate>
            <div class="form-group">
                <label for="nombre" >Usuario: </label>
                <input type="text" autocomplete="off" name="nombre" id="nombre" placeholder="BomboDani" disabled/>
            </div>
            <div class="form-group">
                 <label for="email" >e-mail: </label>
                <input type="email" autocomplete="on" name="email" id="email" placeholder="dani_g,mazatan@hotmail.com" disabled/>
            </div>
            <div class="form-group">
                <label for="redes" >Red social: </label>
                <input  type="url" name="redes" id="redes" placeholder="facebook" disabled/>
            </div>
            <div class="form-group">
              <label for="desc">Descripción: </label>
              <input type="text" autocomplete="off" name="desc" id="desc" maxlength="100" disabled/>
            </div>
            <div class="form-group">
                <label for="contrasena" class="hide">Contraseña: </label>
                <input type="password" class="hide" autocomplete="off" name="contrasena" id="contrasena" minlength="8"/>
            </div>
        </form> 
        <div class="noticias-guardadas-texto">
          <label for="texto">Noticias guardadas:</label>
        </div>
        <div class="seccion-de-noticias-guardadas">
          <!-- AQUI EMPIEZA LA NOTICIA -->
              <div id="list-item-2" class="card-noticias-guardadas text-left">
                  <div class="card-header">
                      Mario revive nuestra infancia
                  </div>
                  <div class="noticia-imagen">
                      <img src="https://media.vandal.net/i/1280x720/89906/super-mario-3d-allstars-2020931616177_1.jpg" class="card-img" alt="super mario 3d all stars">
                      <div class="card-body">
                          <!-- <h5 class="card-title">Special title treatment</h5> -->
                          <p class="card-text">Nintendo ha anunciado la salida de un juego que contiene las 3 versiones de Super Mario en 3D: Super Mario 64, Super Mario Sunshine y Super Mario Galaxy.</p>
                          <a href="pagina_de_noticia.jsp" class="btn btn-primary">Ver más</a>
                          <a href="#" class="btn btn-danger">Quitar</a>
                      </div>
                  </div>
                  <div class="card-footer">
                      <div class="categoria">consolas</div>
                      <div class="fecha">10/Oct/2020</div>
                  </div>
              </div>
              <!-- AQUI TERMINA LA NOTICIA -->

              <div id="list-item-2" class="card-noticias-guardadas text-left">
                <div class="card-header">
                    Mario revive nuestra infancia
                </div>
                <div class="noticia-imagen">
                    <img src="https://media.vandal.net/i/1280x720/89906/super-mario-3d-allstars-2020931616177_1.jpg" class="card-img" alt="super mario 3d all stars">
                    <div class="card-body">
                        <!-- <h5 class="card-title">Special title treatment</h5> -->
                        <p class="card-text">Nintendo ha anunciado la salida de un juego que contiene las 3 versiones de Super Mario en 3D: Super Mario 64, Super Mario Sunshine y Super Mario Galaxy.</p>
                        <a href="pagina_de_noticia.jsp" class="btn btn-primary">Ver más</a>
                        <a href="#" class="btn btn-danger">Quitar</a>
                    </div>
                </div>
                <div class="card-footer">
                    <div class="categoria">consolas</div>
                    <div class="fecha">10/Oct/2020</div>
                </div>
              </div>
            <!-- AQUI TERMINA LA NOTICIA -->

            <div id="list-item-2" class="card-noticias-guardadas text-left">
              <div class="card-header">
                  Mario revive nuestra infancia
              </div>
              <div class="noticia-imagen">
                  <img src="https://media.vandal.net/i/1280x720/89906/super-mario-3d-allstars-2020931616177_1.jpg" class="card-img" alt="super mario 3d all stars">
                  <div class="card-body">
                      <!-- <h5 class="card-title">Special title treatment</h5> -->
                      <p class="card-text">Nintendo ha anunciado la salida de un juego que contiene las 3 versiones de Super Mario en 3D: Super Mario 64, Super Mario Sunshine y Super Mario Galaxy.</p>
                      <a href="pagina_de_noticia.jsp" class="btn btn-primary">Ver más</a>
                      <a href="#" class="btn btn-danger">Quitar</a>
                  </div>
              </div>
              <div class="card-footer">
                  <div class="categoria">consolas</div>
                  <div class="fecha">10/Oct/2020</div>
              </div>
            </div>
          <!-- AQUI TERMINA LA NOTICIA -->
        </div>
        </div>
        <a href="#" class="btn1 btn-primary">Editar</a>
        <a href="#" class="btn2 btn-primary">Volver</a>
        </div>
    </div>

    <footer class="pie-de-pagina">
      *informacion de varias cosas*

    </footer>
</body>
</html>
