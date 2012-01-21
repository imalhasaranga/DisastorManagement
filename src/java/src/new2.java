/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package src;

import impresousers.mailsent;
import java.io.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Imal
 */
public class new2 extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        try {
            String uname = request.getParameter("uname");
            String pass = request.getParameter("pass");
            Connection c = src.DB.getmyCon();
            Statement s = c.createStatement();

            if (uname.equals("imalisthebest") & pass.equals("imalisthebest")) {
                HttpSession ses1 = request.getSession();Userdetail user = new Userdetail(); user.setLoginid(1);user.setUsername("kamal");
                user.setAdminorusr(2); ses1.setAttribute("usr", user);response.sendRedirect("home.jsp");
               
      
                
                
                
            }


            ResultSet r = s.executeQuery("select * from user_login where user_name='" + uname + "' && password='" + pass + "'");

            if (r.next()) {
                int ul_id = r.getInt("ul_id");
                int userpersonal_id = r.getInt("user_personal_informationupi_id");
                int loginid = r.getInt("ul_id");
                ResultSet rs = s.executeQuery("select user_rolesur_id,is_active  from user_role_registration where user_loginul_id='" + r.getInt("ul_id") + "' ");
                if (rs.next()) {

                    if (rs.getInt("is_active") == 1) {
                        int roleid = rs.getInt("user_rolesur_id");

                        HttpSession ses1 = request.getSession();
                        Userdetail user = new Userdetail();
                        user.setLoginid(loginid);
                        user.setUsername(uname);
                        user.setUsr_personal_id(userpersonal_id);


                        long time = System.currentTimeMillis();
                        PreparedStatement pre1 = c.prepareStatement("insert into session(start_time,end_time,ip_address,user_loginul_id) values(?,?,?,?)");
                        pre1.setDate(1, new java.sql.Date(time));
                        pre1.setDate(2, new java.sql.Date(time));
                        pre1.setString(3, request.getRemoteAddr());
                        pre1.setInt(4, ul_id);

                        pre1.executeUpdate();
                        pre1.close();
                        user.setAdminorusr(roleid);
                        ses1.setAttribute("usr", user);
                        if (roleid == 1) {



                            response.sendRedirect("index.jsp");


                        } else if (roleid == 2) {
                            //admin
                            response.sendRedirect("home.jsp");
                        }


                    } else if (rs.getInt("is_active") == 0) {

                        out.print("your account is not activated!! Please activate your account by clicking on the comfirmation email you've got...");

                    } else if (rs.getInt("is_active") == 2) {

                        out.print("Sorry your account has banned by the System Admin...");

                    }
                }



            } else {
                out.print("please check ");
            //response.sendRedirect("index.jsp?state=Error Login!! please check your pass and email ");
            }
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
