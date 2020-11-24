/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.continentalgames.models;

/**
 *
 * @author DanielGM
 */
public class Card {
    private int id_noticia;
    private String titulo;
    private String desccor;
    private String desccom;
    private int id_categoria;
    private String imagen1;
    private String imagen2;
    private String imagen3;
    private String video;
    private String fecha;
    private boolean aceptado;
    
    
    
    public Card(){}

    public Card(int id_noticia, String titulo, String desccor, String desccom, int id_categoria, String imagen1, 
            String imagen2, String imagen3, String video, String fecha, boolean aceptado) {
        this.id_noticia = id_noticia;
        this.titulo = titulo;
        this.desccor = desccor;
        this.desccom = desccom;
        this.id_categoria = id_categoria;
        this.imagen1 = imagen1;
        this.imagen2 = imagen2;
        this.imagen3 = imagen3;
        this.video = video;
        this.fecha = fecha;
        this.aceptado = aceptado;
    }
    
    
    
}


