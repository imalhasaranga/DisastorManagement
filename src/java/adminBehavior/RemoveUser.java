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
public class RemoveUser extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String prio = request.getParameter("prio");
        String logid = request.getParameter("rolid");
        try {
            if (prio.equals("makeusr")) {

                src.DB.stexecuteUpdate("update user_role_registration set user_rolesur_id='1' where user_loginul_id ='" + Integer.parseInt(logid) + "'");
                response.sendRedirect("home.jsp");
            } else if (prio.equals("makeadmin")) {
                response.sendRedirect("home.jsp");
                src.DB.stexecuteUpdate("update user_role_registration set user_rolesur_id='2' where user_loginul_id ='" + Integer.parseInt(logid) + "'");
            } else if (prio.equals("deact")) {

                src.DB.stexecuteUpdate("update user_role_registration set is_active='2' where user_loginul_id ='" + Integer.parseInt(logid) + "'");
                response.sendRedirect("home.jsp");
            } else if (prio.equals("act")) {

                src.DB.stexecuteUpdate("update user_role_registration set is_active='1' where user_loginul_id ='" + Integer.parseInt(logid) + "'");
                response.sendRedirect("home.jsp");
            }
        } catch (Exception e) {
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
