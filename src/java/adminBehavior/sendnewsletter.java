/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package adminBehavior;

import impresousers.mailsent;
import java.io.*;
import java.net.*;

import java.sql.ResultSet;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Imal
 */
public class sendnewsletter extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String news =  request.getParameter("gotservlet");
        try {
             
           ResultSet rs = src.DB.getResultset("select email from subscriber");
           while(rs.next()){
            
            
                 mailsent.main("DisastorManagement", rs.getString("email"), "SLNF NewsLetter", news);
                
           }
           
           src.DB.stexecuteUpdate("insert into news_letter(content) values('"+news+"') ");
           response.sendRedirect("home.jsp");
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