<%-- 
    Document   : pagina_de_noticia
    Created on : 8/11/2020, 02:27:48 AM
    Author     : DanielGM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Continental Games</title>
    <link rel="stylesheet" href="Styles/pagina_de_noticia.css">
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
            Anónimo
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

    <!-- ////////////////////////////////////////////////////////////////////////////////
      //////////////////////ESPACIO INFORMATIVO //////////// ///////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////-->
    <!-- aqui comienza la noticia -->
    <div id="list-item-2" class="card-noticia text-left">
        <div class="card-header">
             ¡Play Station 5 esta por llegar!
        </div>
        <h5 class="desc-corta">Cada día falta menos para el lanzamiento de la PlayStation 5, y Sony recién reveló que su consola costará US$499.99 y que estará disponible en Estados Unidos, México, Japón, Canadá y Australia a partir del 12 de noviembre, mientras que su lanzamiento en el resto del mundo está programado para el 19 de noviembre. Su consola digital, la PlayStation Digital Edition, costará US$399.99 y estará disponible en las mismas fechas. </h5>
        <img src="https://images-ext-1.discordapp.net/external/5FsMXpj9lx3k2_Ihi0dNsWRAOhJw9leYuCC76RH0geQ/%3Fwidth%3D1194%26height%3D671/https/images-ext-2.discordapp.net/external/me6wSlGztdZkNXgaVR9k4Crr4b57_yZMU6Q5N7B_btw/%253Fformat%253Djpg%2526name%253Dlarge/https/pbs.twimg.com/media/EiSwM0EUcAAl5C2?width=760&height=427" class="card-img" alt="E3 2019">
        <div class="card-body">
            <!-- <h5 class="card-title">Special title treatment</h5> -->
            <p class="card-text">
                Tras confirmar la fecha de lanzamiento y el precio, la compañía anunció el arranque de la preventa, el 16 de septiembre, y fue cuestión de horas para que las unidades disponibles se agotaran. En su momento, Sony se disculpó por lo caótica que fue la preventa —ya que varios sitios marcaron error—, y aseguró que "lanzará más consolas PS5 para preordenar". Además, la compañía prometió que "habrían más PS5 disponibles hasta fin de año". Sony cumplió con la promesa por lo que el 25 de septiembre nuevas unidades llegaron al inventario, pero como era de esperarse, se agotaron en poco tiempo.
                Cada día falta menos para el lanzamiento de la PlayStation 5, y Sony recién reveló que su consola costará US$499.99 y que estará disponible en Estados Unidos, México, Japón, Canadá y Australia a partir del 12 de noviembre, mientras que su lanzamiento en el resto del mundo está programado para el 19 de noviembre. Su consola digital, la PlayStation Digital Edition, costará US$399.99 y estará disponible en las mismas fechas. 
            </p>
            <p class="card-text"></p>
                Tras confirmar la fecha de lanzamiento y el precio, la compañía anunció el arranque de la preventa, el 16 de septiembre, y fue cuestión de horas para que las unidades disponibles se agotaran. En su momento, Sony se disculpó por lo caótica que fue la preventa —ya que varios sitios marcaron error—, y aseguró que "lanzará más consolas PS5 para preordenar". Además, la compañía prometió que "habrían más PS5 disponibles hasta fin de año". Sony cumplió con la promesa por lo que el 25 de septiembre nuevas unidades llegaron al inventario, pero como era de esperarse, se agotaron en poco tiempo.
                Ya conocemos el diseño final de la PlayStation 5, la existencia de una versión digital de la consola —y presuntamente más económica— que es la PlayStation 5 Digital Edition, los accesorios que llegarán junto con las consolas como los audífonos Pulse 3D, un control remoto, una estación de carga inalámbrica para el control DualSense y una cámara HD. 
            </p>
            <p class="card-text">
                Entre las especificaciones técnicas que destacan de la PS5 está su CPU personalizada AMD Zen 2 con ocho núcleos y la GPU AMD personalizada con trazado de rayos la cual ofrecerá una mayor potencia gráfica.  (AQUI TAMBIEN PONDRIAMOS VIDEOS O ENLACES O MAS IMAGENES DE SER NECESARIO)
            </p>
            
        </div>
        <div class="mas-imagenes">
          <img src="https://images-ext-1.discordapp.net/external/5FsMXpj9lx3k2_Ihi0dNsWRAOhJw9leYuCC76RH0geQ/%3Fwidth%3D1194%26height%3D671/https/images-ext-2.discordapp.net/external/me6wSlGztdZkNXgaVR9k4Crr4b57_yZMU6Q5N7B_btw/%253Fformat%253Djpg%2526name%253Dlarge/https/pbs.twimg.com/media/EiSwM0EUcAAl5C2?width=760&height=427" class="card-img1" alt="E3 2019">
          <img src="https://images-ext-1.discordapp.net/external/5FsMXpj9lx3k2_Ihi0dNsWRAOhJw9leYuCC76RH0geQ/%3Fwidth%3D1194%26height%3D671/https/images-ext-2.discordapp.net/external/me6wSlGztdZkNXgaVR9k4Crr4b57_yZMU6Q5N7B_btw/%253Fformat%253Djpg%2526name%253Dlarge/https/pbs.twimg.com/media/EiSwM0EUcAAl5C2?width=760&height=427" class="card-img1" alt="E3 2019">
        </div>

        <!-- <video class="video" src="https://youtu.be/f5uik5fgIaI"></video> -->

        <div class="valoracion">
          <svg viewBox="0 0 16 16" class="bilike bi-hand-thumbs-up" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.965.22.816.533 2.511.062 4.51a9.84 9.84 0 0 1 .443-.051c.713-.065 1.669-.072 2.516.21.518.173.994.681 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.163 3.163 0 0 1-.488.901c.054.152.076.312.076.465 0 .305-.089.625-.253.912C13.1 15.522 12.437 16 11.5 16v-1c.563 0 .901-.272 1.066-.56a.865.865 0 0 0 .121-.416c0-.12-.035-.165-.04-.17l-.354-.354.353-.354c.202-.201.407-.511.505-.804.104-.312.043-.441-.005-.488l-.353-.354.353-.354c.043-.042.105-.14.154-.315.048-.167.075-.37.075-.581 0-.211-.027-.414-.075-.581-.05-.174-.111-.273-.154-.315L12.793 9l.353-.354c.353-.352.373-.713.267-1.02-.122-.35-.396-.593-.571-.652-.653-.217-1.447-.224-2.11-.164a8.907 8.907 0 0 0-1.094.171l-.014.003-.003.001a.5.5 0 0 1-.595-.643 8.34 8.34 0 0 0 .145-4.726c-.03-.111-.128-.215-.288-.255l-.262-.065c-.306-.077-.642.156-.667.518-.075 1.082-.239 2.15-.482 2.85-.174.502-.603 1.268-1.238 1.977-.637.712-1.519 1.41-2.614 1.708-.394.108-.62.396-.62.65v4.002c0 .26.22.515.553.55 1.293.137 1.936.53 2.491.868l.04.025c.27.164.495.296.776.393.277.095.63.163 1.14.163h3.5v1H8c-.605 0-1.07-.081-1.466-.218a4.82 4.82 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.615.849-.232 1.574-.787 2.132-1.41.56-.627.914-1.28 1.039-1.639.199-.575.356-1.539.428-2.59z"/>
          </svg>
          <input type="number" name="like" id="like" value="like" disabled/>
          <svg viewBox="0 0 16 16" class="bidislike bi-hand-thumbs-down" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M6.956 14.534c.065.936.952 1.659 1.908 1.42l.261-.065a1.378 1.378 0 0 0 1.012-.965c.22-.816.533-2.512.062-4.51.136.02.285.037.443.051.713.065 1.669.071 2.516-.211.518-.173.994-.68 1.2-1.272a1.896 1.896 0 0 0-.234-1.734c.058-.118.103-.242.138-.362.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.094 2.094 0 0 0-.16-.403c.169-.387.107-.82-.003-1.149a3.162 3.162 0 0 0-.488-.9c.054-.153.076-.313.076-.465a1.86 1.86 0 0 0-.253-.912C13.1.757 12.437.28 11.5.28v1c.563 0 .901.272 1.066.56.086.15.121.3.121.416 0 .12-.035.165-.04.17l-.354.353.353.354c.202.202.407.512.505.805.104.312.043.44-.005.488l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.415-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.353.352.373.714.267 1.021-.122.35-.396.593-.571.651-.653.218-1.447.224-2.11.164a8.907 8.907 0 0 1-1.094-.17l-.014-.004H9.62a.5.5 0 0 0-.595.643 8.34 8.34 0 0 1 .145 4.725c-.03.112-.128.215-.288.255l-.262.066c-.306.076-.642-.156-.667-.519-.075-1.081-.239-2.15-.482-2.85-.174-.502-.603-1.267-1.238-1.977C5.597 8.926 4.715 8.23 3.62 7.93 3.226 7.823 3 7.534 3 7.28V3.279c0-.26.22-.515.553-.55 1.293-.138 1.936-.53 2.491-.869l.04-.024c.27-.165.495-.296.776-.393.277-.096.63-.163 1.14-.163h3.5v-1H8c-.605 0-1.07.08-1.466.217a4.823 4.823 0 0 0-.97.485l-.048.029c-.504.308-.999.61-2.068.723C2.682 1.815 2 2.434 2 3.279v4c0 .851.685 1.433 1.357 1.616.849.232 1.574.787 2.132 1.41.56.626.914 1.28 1.039 1.638.199.575.356 1.54.428 2.591z"/>
          </svg>
          <input type="number" name="dislike" id="dislike" value="dislike" disabled/>
          <svg viewBox="0 0 16 16" class="bi bi-trophy" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M2.5.5A.5.5 0 0 1 3 0h10a.5.5 0 0 1 .5.5c0 .538-.012 1.05-.034 1.536a3 3 0 1 1-1.133 5.89c-.79 1.865-1.878 2.777-2.833 3.011v2.173l1.425.356c.194.048.377.135.537.255L13.3 15.1a.5.5 0 0 1-.3.9H3a.5.5 0 0 1-.3-.9l1.838-1.379c.16-.12.343-.207.537-.255L6.5 13.11v-2.173c-.955-.234-2.043-1.146-2.833-3.012a3 3 0 1 1-1.132-5.89A33.076 33.076 0 0 1 2.5.5zm.099 2.54a2 2 0 0 0 .72 3.935c-.333-1.05-.588-2.346-.72-3.935zm10.083 3.935a2 2 0 0 0 .72-3.935c-.133 1.59-.388 2.885-.72 3.935zM3.504 1c.007.517.026 1.006.056 1.469.13 2.028.457 3.546.87 4.667C5.294 9.48 6.484 10 7 10a.5.5 0 0 1 .5.5v2.61a1 1 0 0 1-.757.97l-1.426.356a.5.5 0 0 0-.179.085L4.5 15h7l-.638-.479a.501.501 0 0 0-.18-.085l-1.425-.356a1 1 0 0 1-.757-.97V10.5A.5.5 0 0 1 9 10c.516 0 1.706-.52 2.57-2.864.413-1.12.74-2.64.87-4.667.03-.463.049-.952.056-1.469H3.504z"/>
          </svg>
          <input type="number" name="porcentaje" id="porcentaje" value="porcentaje" disabled/>
          <a href="#" class="btn btn-outline-primary">Guardar</a>
        </div>

        <div class="seccion-todos-los-comentarios">
          <label for="comentarios" class="comentarios">Comentarios:</label>

          <!-- AQUI EMPIEZA EL COMENTARIO -->
          <div id="list-item-1" class="card-comentarios text-left">
            <div class="card-header">
              <label for="usuario">Bombodani</label>
            </div>
            <div class="card-body">
                <!-- <h5 class="card-title">Special title treatment</h5> -->
                <p class="card-text">Hola a todos, me gusta esta noticia :)</p>
            </div>
            <div class="card-footer">
              <svg viewBox="0 0 16 16" class="bilike bi-hand-thumbs-up" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.965.22.816.533 2.511.062 4.51a9.84 9.84 0 0 1 .443-.051c.713-.065 1.669-.072 2.516.21.518.173.994.681 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.163 3.163 0 0 1-.488.901c.054.152.076.312.076.465 0 .305-.089.625-.253.912C13.1 15.522 12.437 16 11.5 16v-1c.563 0 .901-.272 1.066-.56a.865.865 0 0 0 .121-.416c0-.12-.035-.165-.04-.17l-.354-.354.353-.354c.202-.201.407-.511.505-.804.104-.312.043-.441-.005-.488l-.353-.354.353-.354c.043-.042.105-.14.154-.315.048-.167.075-.37.075-.581 0-.211-.027-.414-.075-.581-.05-.174-.111-.273-.154-.315L12.793 9l.353-.354c.353-.352.373-.713.267-1.02-.122-.35-.396-.593-.571-.652-.653-.217-1.447-.224-2.11-.164a8.907 8.907 0 0 0-1.094.171l-.014.003-.003.001a.5.5 0 0 1-.595-.643 8.34 8.34 0 0 0 .145-4.726c-.03-.111-.128-.215-.288-.255l-.262-.065c-.306-.077-.642.156-.667.518-.075 1.082-.239 2.15-.482 2.85-.174.502-.603 1.268-1.238 1.977-.637.712-1.519 1.41-2.614 1.708-.394.108-.62.396-.62.65v4.002c0 .26.22.515.553.55 1.293.137 1.936.53 2.491.868l.04.025c.27.164.495.296.776.393.277.095.63.163 1.14.163h3.5v1H8c-.605 0-1.07-.081-1.466-.218a4.82 4.82 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.615.849-.232 1.574-.787 2.132-1.41.56-.627.914-1.28 1.039-1.639.199-.575.356-1.539.428-2.59z"/>
              </svg>
              <input type="number" name="like" id="like" value="like" disabled/>
              <svg viewBox="0 0 16 16" class="bidislike bi-hand-thumbs-down" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M6.956 14.534c.065.936.952 1.659 1.908 1.42l.261-.065a1.378 1.378 0 0 0 1.012-.965c.22-.816.533-2.512.062-4.51.136.02.285.037.443.051.713.065 1.669.071 2.516-.211.518-.173.994-.68 1.2-1.272a1.896 1.896 0 0 0-.234-1.734c.058-.118.103-.242.138-.362.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.094 2.094 0 0 0-.16-.403c.169-.387.107-.82-.003-1.149a3.162 3.162 0 0 0-.488-.9c.054-.153.076-.313.076-.465a1.86 1.86 0 0 0-.253-.912C13.1.757 12.437.28 11.5.28v1c.563 0 .901.272 1.066.56.086.15.121.3.121.416 0 .12-.035.165-.04.17l-.354.353.353.354c.202.202.407.512.505.805.104.312.043.44-.005.488l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.415-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.353.352.373.714.267 1.021-.122.35-.396.593-.571.651-.653.218-1.447.224-2.11.164a8.907 8.907 0 0 1-1.094-.17l-.014-.004H9.62a.5.5 0 0 0-.595.643 8.34 8.34 0 0 1 .145 4.725c-.03.112-.128.215-.288.255l-.262.066c-.306.076-.642-.156-.667-.519-.075-1.081-.239-2.15-.482-2.85-.174-.502-.603-1.267-1.238-1.977C5.597 8.926 4.715 8.23 3.62 7.93 3.226 7.823 3 7.534 3 7.28V3.279c0-.26.22-.515.553-.55 1.293-.138 1.936-.53 2.491-.869l.04-.024c.27-.165.495-.296.776-.393.277-.096.63-.163 1.14-.163h3.5v-1H8c-.605 0-1.07.08-1.466.217a4.823 4.823 0 0 0-.97.485l-.048.029c-.504.308-.999.61-2.068.723C2.682 1.815 2 2.434 2 3.279v4c0 .851.685 1.433 1.357 1.616.849.232 1.574.787 2.132 1.41.56.626.914 1.28 1.039 1.638.199.575.356 1.54.428 2.591z"/>
              </svg>
              <input type="number" name="dislike" id="dislike" value="dislike" disabled/>
              <svg viewBox="0 0 16 16" class="bi bi-trophy" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M2.5.5A.5.5 0 0 1 3 0h10a.5.5 0 0 1 .5.5c0 .538-.012 1.05-.034 1.536a3 3 0 1 1-1.133 5.89c-.79 1.865-1.878 2.777-2.833 3.011v2.173l1.425.356c.194.048.377.135.537.255L13.3 15.1a.5.5 0 0 1-.3.9H3a.5.5 0 0 1-.3-.9l1.838-1.379c.16-.12.343-.207.537-.255L6.5 13.11v-2.173c-.955-.234-2.043-1.146-2.833-3.012a3 3 0 1 1-1.132-5.89A33.076 33.076 0 0 1 2.5.5zm.099 2.54a2 2 0 0 0 .72 3.935c-.333-1.05-.588-2.346-.72-3.935zm10.083 3.935a2 2 0 0 0 .72-3.935c-.133 1.59-.388 2.885-.72 3.935zM3.504 1c.007.517.026 1.006.056 1.469.13 2.028.457 3.546.87 4.667C5.294 9.48 6.484 10 7 10a.5.5 0 0 1 .5.5v2.61a1 1 0 0 1-.757.97l-1.426.356a.5.5 0 0 0-.179.085L4.5 15h7l-.638-.479a.501.501 0 0 0-.18-.085l-1.425-.356a1 1 0 0 1-.757-.97V10.5A.5.5 0 0 1 9 10c.516 0 1.706-.52 2.57-2.864.413-1.12.74-2.64.87-4.667.03-.463.049-.952.056-1.469H3.504z"/>
              </svg>
              <input type="number" name="porcentaje" id="porcentaje" value="porcentaje" disabled/>
              <label for="fecha-hora" class="fecha-hora">10/10/2020 23:12</label>
            </div>
          </div>
          <!-- AQUI TERMINA EL COMENTARIO -->

          <!-- AQUI EMPIEZA EL COMENTARIO -->
          <div id="list-item-1" class="card-comentarios text-left">
            <div class="card-header">
              <label for="usuario">Recces</label>
            </div>
            <div class="card-body">
                <!-- <h5 class="card-title">Special title treatment</h5> -->
                <p class="card-text">Hola a todos, me gusta esta noticia :)</p>
            </div>
            <div class="card-footer">
              <svg viewBox="0 0 16 16" class="bilike bi-hand-thumbs-up" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.965.22.816.533 2.511.062 4.51a9.84 9.84 0 0 1 .443-.051c.713-.065 1.669-.072 2.516.21.518.173.994.681 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.163 3.163 0 0 1-.488.901c.054.152.076.312.076.465 0 .305-.089.625-.253.912C13.1 15.522 12.437 16 11.5 16v-1c.563 0 .901-.272 1.066-.56a.865.865 0 0 0 .121-.416c0-.12-.035-.165-.04-.17l-.354-.354.353-.354c.202-.201.407-.511.505-.804.104-.312.043-.441-.005-.488l-.353-.354.353-.354c.043-.042.105-.14.154-.315.048-.167.075-.37.075-.581 0-.211-.027-.414-.075-.581-.05-.174-.111-.273-.154-.315L12.793 9l.353-.354c.353-.352.373-.713.267-1.02-.122-.35-.396-.593-.571-.652-.653-.217-1.447-.224-2.11-.164a8.907 8.907 0 0 0-1.094.171l-.014.003-.003.001a.5.5 0 0 1-.595-.643 8.34 8.34 0 0 0 .145-4.726c-.03-.111-.128-.215-.288-.255l-.262-.065c-.306-.077-.642.156-.667.518-.075 1.082-.239 2.15-.482 2.85-.174.502-.603 1.268-1.238 1.977-.637.712-1.519 1.41-2.614 1.708-.394.108-.62.396-.62.65v4.002c0 .26.22.515.553.55 1.293.137 1.936.53 2.491.868l.04.025c.27.164.495.296.776.393.277.095.63.163 1.14.163h3.5v1H8c-.605 0-1.07-.081-1.466-.218a4.82 4.82 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.615.849-.232 1.574-.787 2.132-1.41.56-.627.914-1.28 1.039-1.639.199-.575.356-1.539.428-2.59z"/>
              </svg>
              <input type="number" name="like" id="like" value="like" disabled/>
              <svg viewBox="0 0 16 16" class="bidislike bi-hand-thumbs-down" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M6.956 14.534c.065.936.952 1.659 1.908 1.42l.261-.065a1.378 1.378 0 0 0 1.012-.965c.22-.816.533-2.512.062-4.51.136.02.285.037.443.051.713.065 1.669.071 2.516-.211.518-.173.994-.68 1.2-1.272a1.896 1.896 0 0 0-.234-1.734c.058-.118.103-.242.138-.362.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.094 2.094 0 0 0-.16-.403c.169-.387.107-.82-.003-1.149a3.162 3.162 0 0 0-.488-.9c.054-.153.076-.313.076-.465a1.86 1.86 0 0 0-.253-.912C13.1.757 12.437.28 11.5.28v1c.563 0 .901.272 1.066.56.086.15.121.3.121.416 0 .12-.035.165-.04.17l-.354.353.353.354c.202.202.407.512.505.805.104.312.043.44-.005.488l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.415-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.353.352.373.714.267 1.021-.122.35-.396.593-.571.651-.653.218-1.447.224-2.11.164a8.907 8.907 0 0 1-1.094-.17l-.014-.004H9.62a.5.5 0 0 0-.595.643 8.34 8.34 0 0 1 .145 4.725c-.03.112-.128.215-.288.255l-.262.066c-.306.076-.642-.156-.667-.519-.075-1.081-.239-2.15-.482-2.85-.174-.502-.603-1.267-1.238-1.977C5.597 8.926 4.715 8.23 3.62 7.93 3.226 7.823 3 7.534 3 7.28V3.279c0-.26.22-.515.553-.55 1.293-.138 1.936-.53 2.491-.869l.04-.024c.27-.165.495-.296.776-.393.277-.096.63-.163 1.14-.163h3.5v-1H8c-.605 0-1.07.08-1.466.217a4.823 4.823 0 0 0-.97.485l-.048.029c-.504.308-.999.61-2.068.723C2.682 1.815 2 2.434 2 3.279v4c0 .851.685 1.433 1.357 1.616.849.232 1.574.787 2.132 1.41.56.626.914 1.28 1.039 1.638.199.575.356 1.54.428 2.591z"/>
              </svg>
              <input type="number" name="dislike" id="dislike" value="dislike" disabled/>
              <svg viewBox="0 0 16 16" class="bi bi-trophy" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M2.5.5A.5.5 0 0 1 3 0h10a.5.5 0 0 1 .5.5c0 .538-.012 1.05-.034 1.536a3 3 0 1 1-1.133 5.89c-.79 1.865-1.878 2.777-2.833 3.011v2.173l1.425.356c.194.048.377.135.537.255L13.3 15.1a.5.5 0 0 1-.3.9H3a.5.5 0 0 1-.3-.9l1.838-1.379c.16-.12.343-.207.537-.255L6.5 13.11v-2.173c-.955-.234-2.043-1.146-2.833-3.012a3 3 0 1 1-1.132-5.89A33.076 33.076 0 0 1 2.5.5zm.099 2.54a2 2 0 0 0 .72 3.935c-.333-1.05-.588-2.346-.72-3.935zm10.083 3.935a2 2 0 0 0 .72-3.935c-.133 1.59-.388 2.885-.72 3.935zM3.504 1c.007.517.026 1.006.056 1.469.13 2.028.457 3.546.87 4.667C5.294 9.48 6.484 10 7 10a.5.5 0 0 1 .5.5v2.61a1 1 0 0 1-.757.97l-1.426.356a.5.5 0 0 0-.179.085L4.5 15h7l-.638-.479a.501.501 0 0 0-.18-.085l-1.425-.356a1 1 0 0 1-.757-.97V10.5A.5.5 0 0 1 9 10c.516 0 1.706-.52 2.57-2.864.413-1.12.74-2.64.87-4.667.03-.463.049-.952.056-1.469H3.504z"/>
              </svg>
              <input type="number" name="porcentaje" id="porcentaje" value="porcentaje" disabled/>
              <label for="fecha-hora" class="fecha-hora">10/10/2020 23:12</label>
            </div>
          </div>
          <!-- AQUI TERMINA EL COMENTARIO -->

          <!-- AQUI EMPIEZA EL COMENTARIO -->
          <div id="list-item-1" class="card-comentarios text-left">
            <div class="card-header">
              <label for="usuario">Rosas</label>
            </div>
            <div class="card-body">
                <!-- <h5 class="card-title">Special title treatment</h5> -->
                <p class="card-text">Hola a todos, me gusta esta noticia :)</p>
            </div>
            <div class="card-footer">
              <svg viewBox="0 0 16 16" class="bilike bi-hand-thumbs-up" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.965.22.816.533 2.511.062 4.51a9.84 9.84 0 0 1 .443-.051c.713-.065 1.669-.072 2.516.21.518.173.994.681 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.163 3.163 0 0 1-.488.901c.054.152.076.312.076.465 0 .305-.089.625-.253.912C13.1 15.522 12.437 16 11.5 16v-1c.563 0 .901-.272 1.066-.56a.865.865 0 0 0 .121-.416c0-.12-.035-.165-.04-.17l-.354-.354.353-.354c.202-.201.407-.511.505-.804.104-.312.043-.441-.005-.488l-.353-.354.353-.354c.043-.042.105-.14.154-.315.048-.167.075-.37.075-.581 0-.211-.027-.414-.075-.581-.05-.174-.111-.273-.154-.315L12.793 9l.353-.354c.353-.352.373-.713.267-1.02-.122-.35-.396-.593-.571-.652-.653-.217-1.447-.224-2.11-.164a8.907 8.907 0 0 0-1.094.171l-.014.003-.003.001a.5.5 0 0 1-.595-.643 8.34 8.34 0 0 0 .145-4.726c-.03-.111-.128-.215-.288-.255l-.262-.065c-.306-.077-.642.156-.667.518-.075 1.082-.239 2.15-.482 2.85-.174.502-.603 1.268-1.238 1.977-.637.712-1.519 1.41-2.614 1.708-.394.108-.62.396-.62.65v4.002c0 .26.22.515.553.55 1.293.137 1.936.53 2.491.868l.04.025c.27.164.495.296.776.393.277.095.63.163 1.14.163h3.5v1H8c-.605 0-1.07-.081-1.466-.218a4.82 4.82 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.615.849-.232 1.574-.787 2.132-1.41.56-.627.914-1.28 1.039-1.639.199-.575.356-1.539.428-2.59z"/>
              </svg>
              <input type="number" name="like" id="like" value="like" disabled/>
              <svg viewBox="0 0 16 16" class="bidislike bi-hand-thumbs-down" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M6.956 14.534c.065.936.952 1.659 1.908 1.42l.261-.065a1.378 1.378 0 0 0 1.012-.965c.22-.816.533-2.512.062-4.51.136.02.285.037.443.051.713.065 1.669.071 2.516-.211.518-.173.994-.68 1.2-1.272a1.896 1.896 0 0 0-.234-1.734c.058-.118.103-.242.138-.362.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.094 2.094 0 0 0-.16-.403c.169-.387.107-.82-.003-1.149a3.162 3.162 0 0 0-.488-.9c.054-.153.076-.313.076-.465a1.86 1.86 0 0 0-.253-.912C13.1.757 12.437.28 11.5.28v1c.563 0 .901.272 1.066.56.086.15.121.3.121.416 0 .12-.035.165-.04.17l-.354.353.353.354c.202.202.407.512.505.805.104.312.043.44-.005.488l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.415-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.353.352.373.714.267 1.021-.122.35-.396.593-.571.651-.653.218-1.447.224-2.11.164a8.907 8.907 0 0 1-1.094-.17l-.014-.004H9.62a.5.5 0 0 0-.595.643 8.34 8.34 0 0 1 .145 4.725c-.03.112-.128.215-.288.255l-.262.066c-.306.076-.642-.156-.667-.519-.075-1.081-.239-2.15-.482-2.85-.174-.502-.603-1.267-1.238-1.977C5.597 8.926 4.715 8.23 3.62 7.93 3.226 7.823 3 7.534 3 7.28V3.279c0-.26.22-.515.553-.55 1.293-.138 1.936-.53 2.491-.869l.04-.024c.27-.165.495-.296.776-.393.277-.096.63-.163 1.14-.163h3.5v-1H8c-.605 0-1.07.08-1.466.217a4.823 4.823 0 0 0-.97.485l-.048.029c-.504.308-.999.61-2.068.723C2.682 1.815 2 2.434 2 3.279v4c0 .851.685 1.433 1.357 1.616.849.232 1.574.787 2.132 1.41.56.626.914 1.28 1.039 1.638.199.575.356 1.54.428 2.591z"/>
              </svg>
              <input type="number" name="dislike" id="dislike" value="dislike" disabled/>
              <svg viewBox="0 0 16 16" class="bi bi-trophy" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M2.5.5A.5.5 0 0 1 3 0h10a.5.5 0 0 1 .5.5c0 .538-.012 1.05-.034 1.536a3 3 0 1 1-1.133 5.89c-.79 1.865-1.878 2.777-2.833 3.011v2.173l1.425.356c.194.048.377.135.537.255L13.3 15.1a.5.5 0 0 1-.3.9H3a.5.5 0 0 1-.3-.9l1.838-1.379c.16-.12.343-.207.537-.255L6.5 13.11v-2.173c-.955-.234-2.043-1.146-2.833-3.012a3 3 0 1 1-1.132-5.89A33.076 33.076 0 0 1 2.5.5zm.099 2.54a2 2 0 0 0 .72 3.935c-.333-1.05-.588-2.346-.72-3.935zm10.083 3.935a2 2 0 0 0 .72-3.935c-.133 1.59-.388 2.885-.72 3.935zM3.504 1c.007.517.026 1.006.056 1.469.13 2.028.457 3.546.87 4.667C5.294 9.48 6.484 10 7 10a.5.5 0 0 1 .5.5v2.61a1 1 0 0 1-.757.97l-1.426.356a.5.5 0 0 0-.179.085L4.5 15h7l-.638-.479a.501.501 0 0 0-.18-.085l-1.425-.356a1 1 0 0 1-.757-.97V10.5A.5.5 0 0 1 9 10c.516 0 1.706-.52 2.57-2.864.413-1.12.74-2.64.87-4.667.03-.463.049-.952.056-1.469H3.504z"/>
              </svg>
              <input type="number" name="porcentaje" id="porcentaje" value="porcentaje" disabled/>
              <label for="fecha-hora" class="fecha-hora">10/10/2020 23:12</label>
            </div>
          </div>
          <!-- AQUI TERMINA EL COMENTARIO -->

        </div>



        <a href="#" class="btn btn-primary">Volver</a>
        <div class="card-footer">
          <div class="categoria">consolas</div>
          <div class="fecha">10/Oct/2020</div>
        </div>
    </div>
    <!-- aqui termina la noticia -->

    <footer class="pie-de-pagina">
      *informacion de varias cosas*

    </footer>
</body>
</html>
