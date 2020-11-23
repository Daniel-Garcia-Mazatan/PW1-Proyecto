/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.continentalgames.controllers;


import com.mycompany.continentalgames.dao.UserDAO;
import com.mycompany.continentalgames.models.User;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DanielGM
 */
@WebServlet(name = "inicio_sesion", urlPatterns = {"/inicio_sesion"})
public class inicio_sesion extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = new User(name,email,password);
        //UserDAO.insertUser(user);
        //if(result != null){
//            HttpSession session = request.getSession();
//            session.setAttribute(("name"),result.getName());
//            session.setAttribute(("email"),result.getEmail());
//            session.setAttribute(("password"),result.getPassword());
//            request.getRequestDispatcher("pagina_perfil.jsp").forward(request,response);
//        }
        if(UserDAO.insertUser(user) == 1){
            response.sendRedirect("login.jsp");
        }
        else{
            
        }
        
   
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
