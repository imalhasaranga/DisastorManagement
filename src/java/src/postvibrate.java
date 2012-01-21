/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package src;

import impresousers.fileupload;
import java.io.*;

import java.sql.PreparedStatement;


import java.util.Iterator;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Imal
 */
public class postvibrate extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String title = null;// = request.getParameter("vib");

        String descrip = null; // = request.getParameter("vides");

        String country = null;
                
        String city = null;
        String usrip = request.getRemoteAddr();
        String prio = request.getParameter("pro");

        String newstitle = null;
        String newsbody = null;
        src.Userdetail user = (src.Userdetail) request.getSession().getAttribute("usr");
        int usrlogid = user.getLoginid();



        HttpSession ses1 = request.getSession();



        //////////////////////

        String filname = "";
       


        ///////////////////////////////




        try {
            if (prio.equals("1")) {
                
                
                 List files = null;
        try {
            files = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        Iterator itr = files.iterator();
        while (itr.hasNext()) {
            FileItem file = (FileItem) itr.next();
            if (file.isFormField()) {


                String itemName = file.getFieldName();
                String itemValue = file.getString();
                if (itemName.equals("vib")) {
                    title = file.getString();
                }
                else if(itemName.equals("vides")) {
                    descrip = file.getString();
                } else if(itemName.equals("country1")) {
                    country = file.getString();
                } else if(itemName.equals("city1")) {
                    city = file.getString();
                } else if(itemName.equals("news")) {
                    newsbody = file.getString();
                } 
            } else {

                filname = new fileupload().uploadfile(file, ses1);
                filname = (filname == null) | (filname.equals("null")) ? "" : "images/" + filname;

            }

        }
                
                
                PreparedStatement pr = src.DB.getmyCon().prepareStatement("insert into vibrates(title,description,date,hits,file_path,is_active,user_ip,countrycountry_id,uploaded_or_submitted_typecst_id,vibrate_typevt_id,citycity_id,thematic_areasta_id) values(?,?,?,?,?,?,?,?,?,?,?,?)");
                pr.setString(1, title);
                pr.setString(2, descrip);
                pr.setDate(3, new java.sql.Date(System.currentTimeMillis()));
                pr.setInt(4, 0);

                pr.setString(5, filname);
                pr.setInt(6, 0);
                pr.setString(7, usrip);
                pr.setInt(8, Integer.parseInt(country));
                pr.setInt(9, 1);
                pr.setInt(10, 1);
                pr.setInt(11, 1);
                pr.setInt(11, Integer.parseInt(city));
                pr.setInt(12, 2);
                pr.executeUpdate();
                pr.close();

                response.sendRedirect("Profile.jsp");
                
                
                
                
            } else if (prio.equals("2")) {


                
                 List files = null;
        try {
            files = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        Iterator itr = files.iterator();
        while (itr.hasNext()) {
            FileItem file = (FileItem) itr.next();
            if (file.isFormField()) {


                String itemName = file.getFieldName();
                String itemValue = file.getString();
                if (itemName.equals("news")) {
                    newstitle = file.getString();
                }
                else if(itemName.equals("newsbody")) {
                   newsbody = file.getString();
                } 
            } else {

                filname = new fileupload().uploadfile(file, ses1);
                filname = (filname == null) | (filname.equals("null")) ? "" : "images/" + filname;

            }

        }
                
                
                

                PreparedStatement pr1 = src.DB.getmyCon().prepareStatement("insert into news(title,content,date,is_active,views,user_loginul_id,uploaded_or_submitted_typecst_id,languagelanguage_id,global_development_organizationgdo_id,thematic_areasta_id) values(?,?,?,?,?,?,?,?,?,?)");
                pr1.setString(1, newstitle);
                pr1.setString(2, newsbody);
                pr1.setDate(3, new java.sql.Date(System.currentTimeMillis()));
                pr1.setInt(4, 0);
                pr1.setInt(5, 0);
                pr1.setInt(6, usrlogid);
                pr1.setInt(7, 1);
                pr1.setInt(8, 1);
                pr1.setInt(9, 2);
                pr1.setInt(10, 2);
                pr1.executeUpdate();
                pr1.close();



                pr1 = src.DB.getmyCon().prepareStatement("insert into image_in_size(alt_tag,date,name_or_path,image_sizesis_id,uploaded_or_submitted_typecst_id,image_typeit_id,user_loginul_id) values(?,?,?,?,?,?,?)");
                pr1.setString(1, user.getUsername());
                pr1.setDate(2, new java.sql.Date(System.currentTimeMillis()));
                pr1.setString(3, filname);
                pr1.setInt(4, 1);
                pr1.setInt(5, 1);
                pr1.setInt(6, 2);
                pr1.setInt(7, user.getLoginid());
                pr1.executeUpdate();
                pr1.close();

                src.DB.stexecuteUpdate("insert into image_for_news(newsnews_id,image_in_sizeimage_id)  select max(a.news_id),max(b.image_id) from news a, image_in_size b  ");




                response.sendRedirect("Profile.jsp");
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
