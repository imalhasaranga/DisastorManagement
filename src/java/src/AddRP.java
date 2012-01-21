/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package src;

import impresousers.fileupload;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;
import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Imal
 */
public class AddRP extends HttpServlet {
   
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
      String filname = "";

      HttpSession str = request.getSession();
      src.Userdetail user = (Userdetail) str.getAttribute("usr");
      int userid = user.getLoginid();


      try{
      if(gateway.equals("1")){

          src.DB.stexecuteUpdate("update publications set description='"+request.getParameter("resuarch")+"' where publication_id='1' ");
      
      }


       if(gateway.equals("2")){

       String  title= null;
       String description = null;
       String division = null;

                 List files = null;

            files = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

        Iterator itr = files.iterator();
        while (itr.hasNext()) {
            FileItem file = (FileItem) itr.next();
            if (file.isFormField()) {


                String itemName = file.getFieldName();
                String itemValue = file.getString();
                if (itemName.equals("pubtitle")) {
                    title = file.getString();
                }
                else if(itemName.equals("pubdesc")) {
                    description = file.getString();
                } else if(itemName.equals("divisione")) {
                    division = file.getString();
                }
            } else {



                filname = new impresousers.FileUploadclass().uploadfile(file, request.getSession(), "PDFS", title+".pdf");
          

            }
        }


            PreparedStatement pr = src.DB.getmyCon().prepareStatement("insert into publications(publication_name,description,user_loginul_id,authorsauthor_id,publication_typepublication_id,thematic_areasta_id) values(?,?,?,?,?,?)");

                pr.setString(1, title);
                pr.setString(2, description);
                
                pr.setInt(3, userid);
               pr.setInt(4, 1);
               pr.setInt(5, Integer.parseInt(division));
                pr.setInt(6, 2);
                pr.executeUpdate();
                pr.close();
        


      }
      if(gateway.equals("3")){
      String pubid = request.getParameter("pubid");
      src.DB.stexecuteUpdate("delete from publications where publication_id='"+pubid+"'");

      }

      response.sendRedirect("R&PControl.jsp");
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
