/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.BaseDAO;
import model.*;

/**
 *
 * @author universe
 */
public class DeleteServlet extends HttpServlet {

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
            throws ServletException, IOException, InstantiationException, IllegalAccessException {
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher rd;
        
        HttpSession session = request.getSession(true);
           String type = (String)session.getAttribute("type");
           System.out.println(type);
        if(type == null)
        {
        try (PrintWriter out = response.getWriter()) {
            String email = (request.getParameter("email"));
             BaseDAO cdao = new BaseDAO();
             int count=cdao.removePersonByEmail(email);
              if(count>0)
                {
                    System.out.println("account Successfully deleted");
                    rd = request.getRequestDispatcher("adminprofile.jsp");
                    rd.forward(request,response);
                }else{
                    out.println("account deletion failed");
                    rd = request.getRequestDispatcher("deleteprofile.jsp");
                    rd.forward(request,response);
                }
        }
        }
        
        
        else{
            
           String email= (String)session.getAttribute("userName");
            System.out.println(email);
           BaseDAO cdao = new BaseDAO();
             int count=cdao.removePersonByEmail(email);
              if(count>0)
                {
                    System.out.println("account Successfully deleted");
                    rd = request.getRequestDispatcher("login.jsp");
                    rd.forward(request,response);
                }else{
                    System.out.println("account deletion failed");
                    rd = request.getRequestDispatcher("deleteprofile.jsp");
                    rd.forward(request,response);
                }
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (InstantiationException ex) {
            Logger.getLogger(DeleteServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(DeleteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (InstantiationException ex) {
            Logger.getLogger(DeleteServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(DeleteServlet.class.getName()).log(Level.SEVERE, null, ex);
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
