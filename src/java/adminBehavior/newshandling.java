/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package adminBehavior;

import java.io.*;
import java.net.*;

import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Imal
 */
public class newshandling extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String k = request.getParameter("nwid");
        String prio = request.getParameter("prio");

        String meta1 = request.getParameter("meta");
        String metadesc1 = request.getParameter("metadesc");
        String h11 = request.getParameter("h1");
        String h21 = request.getParameter("h2");
        String h31 = request.getParameter("h3");
        




        try{
                src.DB.stexecuteUpdate("update news set is_active= '"+prio+"',meta_tag= '"+meta1+"', meta_description='"+metadesc1+"',h1_tag='"+h11+"',h2_tag='"+h21+"',h3_tag='"+h31+"' where news_id='"+ k +"' ");
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
