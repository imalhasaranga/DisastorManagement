/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package src;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Imal
 */
public class Mangeprojects extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String gateway = request.getParameter("para");

       src.Userdetail user =  (Userdetail)request.getSession().getAttribute("usr");
        try{



        if(gateway.equals("1")){
        String iscom = request.getParameter("iscomp").equals("1") ? "0" : "1";
        String proid = request.getParameter("proid");

        src.DB.stexecuteUpdate("update project set iscompleted='"+iscom+"' where prj_id= '"+proid+"'");




        }
        if(gateway.equals("2")){

            src.DB.stexecuteUpdate("delete from project where prj_id = '"+request.getParameter("proid")+"'");
        

        }

         if(gateway.equals("3")){

            PreparedStatement str =src.DB.PreparestatementI("insert into project(prj_name,abt_prj,iscompleted,prj_cost,duration,prj_outcome,user_loginul_id,thematic_areasta_id) values(?,?,?,?,?,?,?,?) ");
            str.setString(1, request.getParameter("projname"));
            str.setString(2, request.getParameter("description"));
            str.setInt(3, Integer.parseInt(request.getParameter("iscomp")));
            str.setDouble(4, Double.parseDouble(request.getParameter("cost")));
            str.setString(5, request.getParameter("date"));
            str.setString(6, request.getParameter("description2"));
            str.setInt(7, user.getLoginid());
            str.setInt(8, 2);
            str.executeUpdate();
            str.close();
            

        }


        response.sendRedirect("ProjectsControl.jsp");
    }catch(Exception e){
    out.print(e);

    }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
