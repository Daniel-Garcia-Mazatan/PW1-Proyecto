<%-- 
    Document   : login
    Created on : 10/11/2020, 10:50:46 PM
    Author     : DanielGM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://kit.fontawesome.com/fc0bcca8a3.js" crossorigin="anonymous"></script>
  
  <link rel="stylesheet" href="Styles/login.css">
  <title>CONTINENTAL GAMES</title>
  
</head>
<body background="body-image.jpg">
  <div class="container" id="container">

<div class="form-container sign-up-container">


     <form action="inicio_sesion" method="POST" class="col-6">

       <h1>Crea una cuenta</h1>
      <div class="social-container">

   <a href="#"  class="social"><i class="fab 
    fa-facebook-f"></i></a>
    <a href="#"  class="social"><i class="fab 
      fa-google-plus-g"></i></a>
      <a href="#"  class="social"><i class="fab 
        fa-linkedin-in"></i></a>

      </div>
   <span>O usa tu email para registrarte</span>
   <input type="text" name="name" placeholder="Name">
   <input type="email" name="email" placeholder="Email">
   <input type="password" name="password" placeholder="Password">

   <button> Registrate</button>
      </form>
   </div>
   <div class="form-container sign-in-container">
       
   <form action="registro_sesion" method="POST" class="col-6">
   <h1>Inicia sesion</h1>
   <div class="social-container">
   
    <a href="#"  class="social" ><i class="fab 
      fa-facebook-f"></i></a>
      <a href="#"  class="social"><i class="fab 
        fa-google-plus-g"></i></a>
        <a href="#"  class="social"><i class="fab 
          fa-linkedin-in"></i></a>
   </div>
   

<input type="email" name="email" placeholder="Email">
<input type="password" name="password" placeholder="Password">
<a href="#">¿Olvidaste tu contraseña?</a>
<button>Sign In</button>

</form>
       
   </div>
   <div class="overlay-container">
     <div class="overlay">
     <div class="overlay-panel overlay-left">
     <h1>Bienvenido</h1>
     <p>
     Para mantenerte conectado con tu informacion.

     </p>
      <button class="ghost"  id="signIn">Sign In</button>


     </div>
<div class="overlay-panel overlay-right">
  <h1>Hola seguidor</h1>
  <p>
   Ingresa tus datos personales para comenzar esta aventura.
  </p>
  <button class="ghost" id="signUp">Sign Up</button>




        </div>
     </div>
   </div>
</div>
</body>
<script src="javascript/login.js"></script>
</html>
