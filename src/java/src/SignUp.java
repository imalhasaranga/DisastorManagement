/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package src;

import impresousers.mailsent;
import impresousers.properties;
import java.io.*;
import java.net.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Imal
 */
public class SignUp extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String mname = request.getParameter("mname");
        String birth = request.getParameter("birthday_year") + "-" + request.getParameter("birthday_month") + "-" + request.getParameter("birthday_day");
        String country = request.getParameter("country");
        String city = request.getParameter("city");
        String Address1 = request.getParameter("address1");
        String Address2 = request.getParameter("address2");
        String Address3 = request.getParameter("address3");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass1");
        String pass1 = request.getParameter("pass2");
        String officephone = request.getParameter("officephone");
        String homephone = request.getParameter("homephone");
        String mobilephone = request.getParameter("mobilephone");
        String username = request.getParameter("username");



        if (pass.equals(pass1)) {
            

            int coun = Integer.parseInt(country);
            int cit = Integer.parseInt(city);
            int i = 0;
            int ii = 0;



            try {
                Connection c = DB.getmyCon();
                Statement s = c.createStatement();

                ResultSet rs = s.executeQuery("select* from subscriber abc, user_personal_information acb  where abc.email='" + email + "'&& (subscriber_id=acb.subscribersubscriber_id)");
                if (rs.next()) {
                    out.print("Email you have enterd is exsisting or usernam !!");

                } else {



                    s.executeUpdate("insert into subscriber(first_name,last_name,email) values('" + fname + "','" + lname + "','" + email + "')");
                    ResultSet r = s.executeQuery("select subscriber_id from subscriber where email='" + email + "'");
                    while (r.next()) {
                        i = r.getInt("subscriber_id");
                    }

                    s.executeUpdate("insert into user_personal_information(mid_name,address_1,address_2,address_3,office_phone,home_phone,mobile_phone,countrycountry_id,subscribersubscriber_id,citycity_id) values('" + mname + "','" + Address1 + "','" + Address2 + "','" + Address3 + "','" + officephone + "','" + homephone + "','" + mobilephone + "','" + country + "','" + i + "','" + city + "')");



                    ResultSet rr = s.executeQuery("select MAX(upi_id) as d from user_personal_information");

                    if (rr.next()) {
                        ii = rr.getInt("d");
                    }
                    rr.close();
                    PreparedStatement str = c.prepareStatement("update user_personal_information set dob=? where upi_id='" + ii + "'");
                    java.sql.Date javasqldate = java.sql.Date.valueOf(birth);
                    str.setDate(1, javasqldate);
                    str.executeUpdate();
                    str.close();


                    s.executeUpdate("insert into user_login(user_name,password,is_active,user_personal_informationupi_id,global_development_organizationgdo_id,ip_address) values('" + username + "','" + pass + "','0','" + ii + "','2','" + request.getRemoteAddr() + "')");

                    ResultSet rr1 = src.DB.getmyCon().createStatement().executeQuery("select MAX(ul_id) as ulid from user_login");

                    if (rr1.next()) {
                        ii = rr1.getInt("ulid");
                    }
                    str = c.prepareStatement("insert into user_role_registration(is_active,date,user_rolesur_id,user_loginul_id) values(?,?,?,?)");
                    str.setInt(1, 0);
                    str.setDate(2, new java.sql.Date(System.currentTimeMillis()));
                    str.setInt(3, 1);
                    str.setInt(4, ii);
                    str.executeUpdate();
                    str.close();


                    str = src.DB.getmyCon().prepareStatement("insert into image_in_size(alt_tag,date,name_or_path,image_sizesis_id,uploaded_or_submitted_typecst_id,image_typeit_id,user_loginul_id) values(?,?,?,?,?,?,?)");
                    str.setString(1, username);
                    str.setDate(2, new java.sql.Date(System.currentTimeMillis()));
                    str.setString(3, "images/default-avatar_1.png");
                    str.setInt(4, 1);
                    str.setInt(5, 1);
                    str.setInt(6, 1);
                    str.setInt(7, ii);
                    str.executeUpdate();
                    str.close();

                    
                     String content = "Hi "+fname+  ""+lname+", now You are Successfully Joined to the SLNF network \n please click on following link to activate your account \n" +
                         new impresousers.properties().getPath()+"/activation?un="+username+"&ps="+pass+"";
                     
                     mailsent.main("DisastorManagement", email, "SLNF Account Activation E mail", content);
                    response.sendRedirect("signin.jsp");
                }

            } catch (Exception e) {
                out.print(e);
            }
        } else {
            response.sendRedirect("Signup.jsp?fnam=Password Error");

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
