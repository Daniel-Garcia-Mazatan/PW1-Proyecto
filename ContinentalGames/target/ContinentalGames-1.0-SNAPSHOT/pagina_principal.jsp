<%-- 
    Document   : index
    Created on : 8/11/2020, 01:16:55 AM
    Author     : DanielGM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String tipo_us = "anonimo";
    boolean sesion_iniciada = false;
    if(session.getAttribute("tipo_us") != null){
        tipo_us = (String)session.getAttribute("tipo_us");
        sesion_iniciada = true;
    };
%>
    
<!DOCTYPE html>
<html lang="en">
<head>

    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Continental Games</title>
    <link rel="stylesheet" href="Styles/pagina_principal.css">
    

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
               <%=tipo_us%>
            </button>

            <div class="dropdown-menu" id="dropdown-menu-1" aria-labelledby="dropdownMenuButton">
               
                    <a class="dropdown-item" id="iniciar" href="login.jsp">Iniciar sesion</a>
                
                
                    <a class="dropdown-item" id="perfil" href="pagina_perfil.jsp">Mi perfil</a>
                
                
                    <a class="dropdown-item" id="agregar" href="pagina_agregar_noticia.jsp">Agregar noticia</a>
                
                
                    <a class="dropdown-item" id="evaluar" href="pagina_evaluar_noticia.jsp">Evaluar noticia</a>
                
                <form action="log_of"  method="POST" >
                    <button class="dropdown-item" id="cerrar" >Cerrar sesion</button>
                </form>
                
                    <a class="dropdown-item" id="ayuda" href="pagina_ayuda.jsp">Ayuda</a>
                
                
            </div>
            
        </div> 
            
        <script type="text/javascript">
            
            let tipo_us = "administrador";
            let sesion_iniciada = true;
            //let tipo_us = <%=tipo_us%>;
            //let sesion_iniciada = <%=sesion_iniciada%>;
            
            if(sesion_iniciada === true){
                if(tipo_us === "administrador"){
                    let iniciar = document.getElementById("iniciar");
                    let perfil = document.getElementById("perfil");
                    let agregar = document.getElementById("agregar");
                    let evaluar = document.getElementById("evaluar");
                    let cerrar = document.getElementById("cerrar");

                    iniciar.style.display = "none";
                    perfil.style.display = "block";
                    agregar.style.display = "block";
                    evaluar.style.display = "block";
                    cerrar.style.display = "block";
                   
                }
                else if(tipo_us === "registrado"){
                    let iniciar = document.getElementById("iniciar");
                    let perfil = document.getElementById("perfil");
                    let cerrar = document.getElementById("cerrar");

                    iniciar.style.display = "none";
                    perfil.style.display = "block";
                    cerrar.style.display = "block";
                }
                else if(tipo_us === "moderador"){
                    let iniciar = document.getElementById("iniciar");
                    let perfil = document.getElementById("perfil");
                    let cerrar = document.getElementById("cerrar");

                    iniciar.style.display = "none";
                    perfil.style.display = "block";
                    cerrar.style.display = "block";
                }
                else if(tipo_us === "creador"){
                    let iniciar = document.getElementById("iniciar");
                    let perfil = document.getElementById("perfil");
                    let agregar = document.getElementById("agregar");
                    let evaluar = document.getElementById("evaluar");
                    let cerrar = document.getElementById("cerrar");

                    iniciar.style.display = "none";
                    perfil.style.display = "block";
                    agregar.style.display = "block";
                    evaluar.style.display = "block";
                    cerrar.style.display = "block";
                }
                else if(tipo_us === "editor"){
                    let iniciar = document.getElementById("iniciar");
                    let perfil = document.getElementById("perfil");
                    let agregar = document.getElementById("agregar");
                    let evaluar = document.getElementById("evaluar");
                    let cerrar = document.getElementById("cerrar");

                    iniciar.style.display = "none";
                    perfil.style.display = "block";
                    agregar.style.display = "block";
                    evaluar.style.display = "block";
                    cerrar.style.display = "block";
                }
                else{}
            }
            else{}
                
        </script>
            
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

    <!-- ////////////////////////////////////////////////////////////////////////////////
      ///////////////////////////////////CAROUSEL ///////// ///////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////-->

    <section>
        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="https://www.nintendo.com/content/dam/noa/en_US/whatsnew/2020/min-min-from-arms-dishes-out-spicy-punches-and-kicks-in-super-smash-bros-ultimate/845x480_WN_smash-vol2-minmin.jpg" class="d-block w-100" alt="Min min">
              </div>
              <div class="carousel-item">
                <img src="https://i.blogs.es/c93baa/super-mario-64-super-mario-sunshine-y-super-mario-galaxy-llegaran-a-nintendo-switch-en-el-juego-super-mario-3d-all-stars/1366_2000.png" class="d-block w-100" alt="SUPER MARIO 3D ALLSTARS">
              </div>
              <div class="carousel-item">
                <img src="https://as.com/meristation/imagenes/2019/06/07/noticias/1559886541_774617_1559886677_noticia_normal.jpg" class="d-block w-100" alt="E3 2019">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
    </section>

    <!-- ////////////////////////////////////////////////////////////////////////////////
      //////////////////////SECCION NOTICIAS MAS RECIENTES ///////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////-->

    <div class="lo-mas-reciente">Lo más reciente</div>

    <div class="seccion-de-noticias">
      <!-- aqui comienza la noticia -->
      <div id="list-item-1" class="card-principal text-left">
         <div class="card-header">
          Min Min llega a Smash
         </div>
         <div class="categoria">Consolas</div>
         <img src="https://www.nintenderos.com/wp-content/uploads/2020/06/min.jpg" class="card-img" alt="min min">
         <div class="card-body">
           <!-- <h5 class="card-title">Special title treatment</h5> -->
          <p class="card-text">Nintendo ha anunciado la llegada de un nuevo personaje a Super Smash Bros Ultimate, Min Min de...</p>
            <a href="pagina_de_noticia.jsp" class="btn btn-primary">Ver más</a>
         </div>
        <div class="card-footer">
         05/Oct/2020
       </div>
      </div>
       <!-- aqui termina la noticia -->

      <!-- aqui comienza la noticia -->
      <div id="list-item-2" class="card-principal text-left">
        <div class="card-header">
           Mario revive nuestra infancia
         </div>
        <div class="noticia-imagen">
          <div class="categoria">Consolas</div>
          <img src="https://media.vandal.net/i/1280x720/89906/super-mario-3d-allstars-2020931616177_1.jpg" class="card-img" alt="super mario 3d all stars">
           <div class="card-body">
            <!-- <h5 class="card-title">Special title treatment</h5> -->
            <p class="card-text">Nintendo ha anunciado la salida de un juego que contiene las 3 versiones de Super Mario en 3D, Super Mario...</p>
            <a href="pagina_de_noticia.jsp" class="btn btn-primary">Ver más</a>
           </div>
        </div>
        <div class="card-footer">
          19/Sep/2020
        </div>
      </div>
       <!-- aqui termina la noticia -->

      <!-- aqui comienza la noticia -->
      <div id="list-item-2" class="card-principal text-left">
        <div class="card-header">
           E3 2019 ha llegado!
         </div>
        <div class="noticia-imagen">
          <div class="categoria">Consolas</div>
          <img src="https://i.ytimg.com/vi/RSpRjfTMLqo/maxresdefault.jpg" class="card-img" alt="E3 2019">
           <div class="card-body">
            <!-- <h5 class="card-title">Special title treatment</h5> -->
            <p class="card-text">Ya esta presente ante los fans la maravillosa convencion de videojuegos mas famosa del...</p>
            <a href="pagina_de_noticia.jsp" class="btn btn-primary">Ver más</a>
           </div>
        </div>
        <div class="card-footer">
          23/Ene/2019
        </div>
      </div>
       <!-- aqui termina la noticia -->

    </div>
    
    <footer class="pie-de-pagina">
      *informacion de varias cosas*

    </footer>
</body>
</html>
