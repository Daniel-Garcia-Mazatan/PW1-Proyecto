/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var sesion_iniciada = 1;
var tipo_usuario = "registrado";

function iniciar_sesion(){
    if(sesion_iniciada === 1){
        if(tipo_usuario === "administrador"){
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
        else if(tipo_usuario === "registrado"){
            let iniciar = document.getElementById("iniciar");
            let perfil = document.getElementById("perfil");
            let cerrar = document.getElementById("cerrar");

            iniciar.style.display = "none";
            perfil.style.display = "block";
            cerrar.style.display = "block";
        }
        else if(tipo_usuario === "moderador"){
            let iniciar = document.getElementById("iniciar");
            let perfil = document.getElementById("perfil");
            let cerrar = document.getElementById("cerrar");

            iniciar.style.display = "none";
            perfil.style.display = "block";
            cerrar.style.display = "block";
        }
        else if(tipo_usuario === "creador"){
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
        else if(tipo_usuario === "editor"){
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
}

function cerrar_sesion(){
    
    let iniciar = document.getElementById("iniciar");
    let perfil = document.getElementById("perfil");
    let agregar = document.getElementById("agregar");
    let evaluar = document.getElementById("evaluar");
    let cerrar = document.getElementById("cerrar");

    iniciar.style.display = "block";
    perfil.style.display = "none";
    agregar.style.display = "none";
    evaluar.style.display = "none";
    cerrar.style.display = "none";

    sesion_iniciada = 0;
    tipo_usuario = "anonimo";
}