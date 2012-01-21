/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package src;

import java.io.*;

import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Imal
 */
public class commenting extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String userid = request.getParameter("id1");
        String comment = request.getParameter("postsometing");
       
        try {
           
            Statement st = src.DB.getmyCon().createStatement();
         
          // have to concider on comment type           
           String sql = "insert into vibration_comments(comment,date,hits,is_active,user_ip,vibratesvibrate_id,user_loginul_id) values(?,?,?,?,?,?,?)";
           PreparedStatement stm = src.DB.getmyCon().prepareStatement(sql);
           DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
           String date1 = df.format(new Date());
           java.sql.Date d1 = java.sql.Date.valueOf(date1);
           
          
           
       stm.setString(1, comment);
        stm.setDate(2, d1);
            stm.setInt(3, 1);
           stm.setInt(4, 1);
           stm.setString(5, request.getRemoteAddr());
           stm.setInt(6, Integer.parseInt(request.getParameter("vibrateid")));
           stm.setInt(7, Integer.parseInt(userid));
           
          stm.executeUpdate();
          stm.close();
           
           response.sendRedirect("index.jsp");
           
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
