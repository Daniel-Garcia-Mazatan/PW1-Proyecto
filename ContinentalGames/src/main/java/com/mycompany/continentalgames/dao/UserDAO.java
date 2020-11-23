/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.continentalgames.dao;

import com.mycompany.continentalgames.models.User;
import com.mycompany.continentalgames.utls.DbConnection;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author DanielGM
 */
public class UserDAO {
    public static int insertUser(User user){
        try{
            Connection con = DbConnection.getConnection();
            String sql = "call insertUser(?,?,?)";
            CallableStatement statement = con.prepareCall(sql);
            statement.setString(1,user.getName());
            statement.setString(2,user.getEmail());
            statement.setString(3,user.getPassword());
            //ResultSet resultSet = statement.executeQuery();
            return statement.executeUpdate();
                //int id = resultSet.getInt("id_usuario");
                //String username = resultSet.getString("username");
                //String correo = resultSet.getString("correo");
                //String password = resultSet.getString("contraseña");
                //return new User(username, correo, password, id);
            
            //con.close();
        } catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return 0;
    }
    
    public static User buscaUsuario(User user){
        try{
            Connection con = DbConnection.getConnection();
            String sql = "call buscaUsuario(?,?)";
            CallableStatement statement = con.prepareCall(sql);
            statement.setString(1,user.getEmail());
            statement.setString(2,user.getPassword());
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                int id = resultSet.getInt("id_usuario");
                String correo = resultSet.getString("correo");
                String password = resultSet.getString("contraseña");
                String name = resultSet.getString("username");
                String redes = resultSet.getString("redes");
                String imagen = resultSet.getString("imagen");
                String tipo_us = resultSet.getString("tipo_us");
                String descripcion = resultSet.getString("descripcion");
                boolean activo = resultSet.getBoolean("activo");
                return new User(name, correo, password, id, redes, imagen, tipo_us, descripcion, activo);
            }
            else{
                con.close();
                return null;
            }
        }
        catch(SQLException ex){
            System.out.println(ex.getMessage());
        }  
    }
}
