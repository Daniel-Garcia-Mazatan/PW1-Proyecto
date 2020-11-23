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
public class User {

    private String name;
    private String email;
    private String password;
    private int id;
    private String redes;
    private String imagen;
    private String tipo_us;
    private String descripcion;
    private boolean activo;

    public User() {
    }

    public User(String name, String email, String password, int id) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.id = id;
    }

    public User(String name, String email, int id) {
        this.name = name;
        this.email = email;
        this.id = id;
    }

    public User(String name, String email, String password) {
        this.name = name;
        this.email = email;
        this.password = password;
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public User(String name, String email, String password, int id, String redes, String imagen, String tipo_us, String descripcion, boolean activo) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.id = id;
        this.redes = redes;
        this.imagen = imagen;
        this.tipo_us = tipo_us;
        this.descripcion = descripcion;
        this.activo = activo;
    }

    
    
    
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRedes() {
        return redes;
    }

    public void setRedes(String redes) {
        this.redes = redes;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getTipo_us() {
        return tipo_us;
    }

    public void setTipo_us(String tipo_us) {
        this.tipo_us = tipo_us;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    
    
}