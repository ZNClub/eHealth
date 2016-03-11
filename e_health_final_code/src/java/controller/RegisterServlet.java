/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Register Servlet 
 * data from RegPathologist.html
 * re-directs to EmailServlet
 * uses 
 * 
 */
package controller;
import botdetect.web.Captcha;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Random;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.*;

/**
 *
 * @author universe
 */
public class RegisterServlet extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
        response.setContentType("text/html;charset=UTF-8");
            //String type=request.getParameter("type");
            //Person p=new Person();
        System.out.println("reached servlet");
        /*
            Patient p;
            p=Patient.populateData(request, response);
            String type=p.getType();
            System.out.println("After person p");
        */
            Map<String, String> messages = new HashMap<String, String>();
            request.setAttribute("messages", messages);
            Captcha captcha = Captcha.load(request, "jqueryValidatedCaptcha");

            // validate the Captcha to check we're not dealing with a bot
            boolean isHuman = (captcha.validate(request, request.getParameter("captchaCodeTextBox")));
            if (!isHuman) {
                // Captcha validation passed, perform protected action
                messages.put("captchaCodeCorrect", "UnSuccessful form submission (server).");
                System.out.println("Captcha invalid");
                 response.sendRedirect("Register.jsp");
                 //int valid=1;
            
                

            } else {
                BaseDAO dao = new BaseDAO();
                String otp = dao.generateOTP();
                
                System.out.println(otp);
                
                String to = request.getParameter("email");
                // Sender's email ID needs to be mentioned
                String from = "computercrce@gmail.com";
                Properties props = new Properties();
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");

                Session session = Session.getInstance(props,
                        new javax.mail.Authenticator() {
                            protected PasswordAuthentication getPasswordAuthentication() {
                                return new PasswordAuthentication("computercrce@gmail.com", "tecomps_15");
                            }
                        });

                try {
                    // Create a default MimeMessage object.
                    MimeMessage message = new MimeMessage(session);
                    // Set From: header field of the header.
                    message.setFrom(new InternetAddress(from));
                    // Set To: header field of the header.
                    message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                    // Set Subject: header field
                    message.setSubject("One Time password");
                    // Now set the actual message
                    message.setText("Your OTP is:"+otp);
                    // Send message
                    Transport.send(message);
                    System.out.println("Sent message successfully....");
                    //response.sendRedirect("index.jsp");
                } catch (MessagingException mex) {
                    System.out.println("error");
                    throw new RuntimeException(mex);
                }
                System.out.println("last");
               
                dao.storeOTP(otp,request.getParameter("email"));
                
            if(request.getParameter("type").equals("Patient")){
                // p=Patient.populateData(request, response);
                Patient p;
                p=Patient.populateData(request, response);
                System.out.println(request.getParameter("type"));
                System.out.println("before DAO");
            
                PatientDAO bdao=new PatientDAO();
            
                bdao.createAccount((Patient) p);
            
                System.out.println("AFTER DAO");
                response.sendRedirect("login.jsp");
            }
            
            else if(request.getParameter("type").equals("Doctor")){
                //Doctor p=Doctor.populateData(request, response);
                
                Doctor p;
                p=Doctor.populateData(request, response);
                System.out.println(request.getParameter("type"));
                System.out.println("before DAO");
            
                DoctorDAO bdao=new DoctorDAO();
                
                bdao.registerAccount((Doctor)p);
                bdao.createAccount((Doctor) p);
            
                System.out.println("AFTER DAO");
                response.sendRedirect("login.jsp");
            }
            
            else if(request.getParameter("type").equals("Pathologist")){
                 //p=Pathologist.populateData(request, response);
                 //System.out.println("After pathologist p");
                Pathologist p;
                p=Pathologist.populateData(request, response);
                System.out.println(request.getParameter("type"));
                System.out.println("before DAO");
            
                PathologistDAO bdao=new PathologistDAO();
            
                bdao.createAccount((Pathologist) p);
            
                System.out.println("AFTER DAO");
                response.sendRedirect("login.jsp");
            }
            
            else if(request.getParameter("type").equals("Pharmacist")){
               // Pharmacist p=Pharmacist.populateData(request, response);
                Pharmacist p;
                p=Pharmacist.populateData(request, response);
                System.out.println(request.getParameter("type"));
                System.out.println("before DAO");
            
                PharmacistDAO bdao=new PharmacistDAO();
            
                bdao.createAccount((Pharmacist) p);
            
                System.out.println("AFTER DAO");
                response.sendRedirect("login.jsp");
            }
            /*
            //request.setAttribute("person", p);
            System.out.println("before DAO");
            
            PatientDAO bdao=new PatientDAO();
            
            bdao.createAccount((Patient) p);
            
            System.out.println("AFTER DAO");
            */
        
        
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
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
