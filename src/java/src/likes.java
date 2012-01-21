/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package src;

import java.io.*;
import java.net.*;

import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Imal
 */
public class likes extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String id =request.getParameter("dsid");
        String prio = request.getParameter("prio");
        String comid = request.getParameter("comid");
      try {  
     if(prio.equals("1")){
         
            
               
                src.DB.stexecuteUpdate("UPDATE discussion SET hits = hits+1 WHERE discussion_id = '"+id+"' ");
                

             
              
            
     
     }else if(prio.equals("2")){
     
                 src.DB.stexecuteUpdate("UPDATE comment SET hits = hits+1 WHERE comment_id = '"+comid+"' ");
                

             
             
     }
     response.sendRedirect("Discustiongoing.jsp?disid="+id+" ");
     
     } catch (Exception ex) {
                out.print(ex);
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
