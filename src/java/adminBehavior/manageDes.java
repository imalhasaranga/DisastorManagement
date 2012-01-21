/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package adminBehavior;

import java.io.*;


import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Imal
 */
public class manageDes extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
      String disid = request.getParameter("disid");
      String active = request.getParameter("active").equals("0")? "1" : "0";
        try {
            src.DB.stexecuteUpdate("update discussion set is_active='"+active+"' where discussion_id='"+disid+"'");
            response.sendRedirect("ManageDiscussion.jsp?disid="+disid+"");
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
