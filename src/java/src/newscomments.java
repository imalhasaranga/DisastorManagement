/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package src;

import java.io.*;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Imal
 */
public class newscomments extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
      
       int newsid =  Integer.parseInt(request.getParameter("newscommentsid"));
       
       int usrid = Integer.parseInt(request.getParameter("id1"));
       String comment = request.getParameter("postsometing");
       String ip = request.getRemoteAddr();
       int maxid = 0;
       
       
        try {
            ResultSet rs = src.DB.getResultset("select max(nc_id) as k from news_comments ");
            if(rs.next()){ maxid = rs.getInt("k")+1; }
            PreparedStatement pr1 = src.DB.getmyCon().prepareStatement("insert into news_comments(comment,date,hits,user_ip,is_active,newsnews_id,user_loginul_id,nc_id) values(?,?,?,?,?,?,?,?) ");
                
                pr1.setString(1, comment);
                pr1.setDate(2, new java.sql.Date(System.currentTimeMillis()));
                pr1.setInt(3, 0);
                pr1.setString(4, ip);
                pr1.setInt(5, 1);
                pr1.setInt(6, newsid);
                pr1.setInt(7, usrid);
                pr1.setInt(8, maxid);
                pr1.executeUpdate();
                pr1.close();
response.sendRedirect("fullnews.jsp");
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
