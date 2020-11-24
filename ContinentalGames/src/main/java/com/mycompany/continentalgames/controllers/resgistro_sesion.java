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
@WebServlet(name = "registro_sesion", urlPatterns = {"/registro_sesion"})
public class resgistro_sesion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
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
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = new User(email,password);
        User result = UserDAO.buscaUsuario(user);
        if(result != null){
            HttpSession session = request.getSession();
            //session.setAttribute("email",email);
            //session.setAttribute("password",password);
            
            session.setAttribute("id",result.getId());
            session.setAttribute("email",result.getEmail());
            session.setAttribute("name",result.getName());
            session.setAttribute("password",result.getPassword());
            session.setAttribute("redes",result.getRedes());
            session.setAttribute("imagen",result.getImagen());
            session.setAttribute("tipo_us",result.getTipo_us());
            session.setAttribute("descripcion",result.getDescripcion());
            session.setAttribute("activo",result.isActivo());
            
            //session.setAttribute("persona", retorno);
            
            //String pass1 = (String)session.getAttribute("password");
            request.getRequestDispatcher("pagina_principal.jsp").forward(request,response);
        }
        else if(result == null){
          response.sendRedirect("login.jsp");
       }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   

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
