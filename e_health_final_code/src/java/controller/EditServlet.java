/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.*;

/**
 *
 * @author Leon
 */
public class EditServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            HttpSession session = request.getSession();
            EditDAO edao = new EditDAO();
            String email = (String) session.getAttribute("userName");
            //Person p=null;
            Person p = (Person) session.getAttribute("Person");
            String val = request.getParameter("save");
            String edit = "";
            boolean c = false;
            //p.setEmail();
            //String email=request.getParameter("name");
            try {
                if(val.equals("save-fname")) {
                    edit = request.getParameter("fname");
                    p.setFirstName(edit);
                    c = edao.editfName(email, edit);
                } //session.setAttribute("fname",edit);
                else if (val.equals("save-lname")) {
                    edit = request.getParameter("lname");
                    p.setLastName(edit);
                    c = edao.editlName(email, edit);
                } else if (val.equals("save-dob")) {
                    edit = request.getParameter("dob");
                    p.setDob(edit);
                    c = edao.editdob(email, edit);
                } else if (val.equals("save-gender")) {
                    edit = request.getParameter("sex");
                    p.setSex(edit);
                    c = edao.editGender(email, edit);
                } else if (val.equals("save-aptno")) {
                    edit = request.getParameter("apartmentNumber");
                    p.setApartmentNumber(edit);
                    c = edao.editAptno(email, edit);
                } else if (val.equals("save-street")) {
                    edit = request.getParameter("street");
                    p.setStreet(edit);
                    c = edao.editStreet(email, edit);
                } else if (val.equals("save-city")) {
                    edit = request.getParameter("city");
                    p.setCity(edit);
                    c = edao.editCity(email, edit);
                } else if (val.equals("save-phone")) {
                    edit = request.getParameter("phone");
                    p.setPhone(edit);
                    c = edao.editPhone(email, edit);
                }

                System.out.println(c);
                if (c == true) {

                    RequestDispatcher rd;
                    System.out.println("in if");
                    rd = request.getRequestDispatcher("editprofile.jsp");
                    rd.forward(request, response);
                } else {

				//session.setAttribute("Person",p);  
                    RequestDispatcher rd;
                    rd = request.getRequestDispatcher("editprofile.jsp");
                    rd.forward(request, response);
                }

            } catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException ex) {
                Logger.getLogger(EditServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
