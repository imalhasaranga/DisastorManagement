/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package src;

import java.io.*;
import java.net.*;

import java.sql.Timestamp;
import java.sql.PreparedStatement;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Imal
 */
public class addpostfor_discussion extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        
        String post = request.getParameter("hello");
       
        String uid = request.getParameter("uid");
        String did = request.getParameter("did");
       
        try {
            Date d = new Date();
            Timestamp tm = new Timestamp(d.getTime());
           PreparedStatement pst =  src.DB.getmyCon().prepareStatement("insert into  comment(comment,date,hits,is_active,user_ip,discussiondiscussion_id,user_loginul_id,uploaded_or_submitted_typecst_id,comment_typect_id) values(?,?,?,?,?,?,?,?,?)");
           pst.setString(1,post);
           pst.setTimestamp(2, tm);
           pst.setInt(3, 0);
           pst.setInt(4, 1);
           pst.setString(5,request.getRemoteAddr());
           pst.setInt(6, Integer.parseInt(did));
           pst.setInt(7, Integer.parseInt(uid));
           pst.setInt(8, 1);
           pst.setInt(9, 1);
           pst.executeUpdate();
           pst.close();
           response.sendRedirect("Discustiongoing.jsp?disid="+did+"");
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
