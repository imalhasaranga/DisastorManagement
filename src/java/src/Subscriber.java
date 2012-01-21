/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package src;

import java.io.*;
import java.net.*;

import java.sql.ResultSet;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Imal
 */
public class Subscriber extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String firstname = request.getParameter("fname");
        String lastname = request.getParameter("lname");
        String email = request.getParameter("email");
        try {
            ResultSet rs = src.DB.getResultset("select email from subscriber where email='"+email+"'");
            if(rs.next() ){
            response.sendRedirect("index.jsp?ehave=This email Exist");
            }else{
            
            
            src.DB.stexecuteUpdate("insert into subscriber(first_name,last_name,email) values('"+firstname+"','"+lastname+"','"+email+"')");
            response.sendRedirect("index.jsp?ehave=Thank you");
            }
        } catch (Exception e) {
            out.print(e);
            
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
    * Handles the HTTP <code>GET</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
    * Handles the HTTP <code>POST</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
    * Returns a short description of the servlet.
    */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
