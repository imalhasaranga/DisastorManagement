/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package src;

import impresousers.fileupload;
import impresousers.properties;
import java.io.*;

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
public class profilepic extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
         src.Userdetail user = (src.Userdetail) request.getSession().getAttribute("usr");
        int usrlogid = user.getLoginid();



        HttpSession ses1 = request.getSession();
        
      
                
            List files = null;
            String filname = "";
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
                   
                }
                
            } else {

                filname = new fileupload().uploadfile(file, ses1);
                filname = (filname == null) | (filname.equals("null")) ? "" : new properties().getPath()+"/images/" + filname;

            }

        }
               
        
        try {
            src.DB.stexecuteUpdate("update image_in_size set date=date,name_or_path='"+filname+"' where user_loginul_id='"+usrlogid+"'&& image_typeit_id='1'");
            response.sendRedirect("Profile.jsp");
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
