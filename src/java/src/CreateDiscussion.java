

package src;

import java.io.*;

import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Imal
 */
public class CreateDiscussion extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String textarea = request.getParameter("gotservlet");
        
        String Title = request.getParameter("disid");
        String uid = request.getParameter("uid");
        
        try {
              Date d = new Date();
            Timestamp tm = new Timestamp(d.getTime());
           PreparedStatement pst =  src.DB.getmyCon().prepareStatement("insert into  discussion(title,discussion,date,hits,is_active,user_loginul_id,languagelanguage_id,global_development_organizationgdo_id,thematic_areasta_id) values(?,?,?,?,?,?,?,?,?)");
           pst.setString(1,Title);
           pst.setString(2, textarea);
           pst.setTimestamp(3, tm);
           
           pst.setInt(4, 0);
            pst.setInt(5, 1);
           pst.setInt(6,Integer.parseInt(uid));
          
           pst.setInt(7, 1);
           pst.setInt(8, 2);
           pst.setInt(9, 2);
           pst.executeUpdate();
           pst.close();
           response.sendRedirect("Discussions.jsp");
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
