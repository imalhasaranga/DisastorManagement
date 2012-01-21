/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package impresousers;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Imal
 */
public class filedownload extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {





        PrintWriter out = response.getWriter();

        String file =request.getParameter("filename");

        try {




            String filename = request.getSession().getServletContext().getRealPath("/") + "PDFS\\" +file;

            // set the http content type to "APPLICATION/OCTET-STREAM
           response.setContentType ("application/pdf");

            // initialize the http content-disposition header to
            // indicate a file attachment with the default filename
            // "myFile.txt"
            String disHeader = "Attachment; Filename=\""+file+"\"";
            //Filename= "myFile.txt\"";
            response.setHeader("Content-Disposition", disHeader);

           //  transfer the file byte-by-byte to the response object
            File fileToDownload = new File(filename);
            FileInputStream fileInputStream = new FileInputStream(fileToDownload);
            int i;
            while ((i = fileInputStream.read()) != -1) {
                out.write(i);
            }
            fileInputStream.close();
            out.close();

        } catch (Exception e1) {

            out.print(e1);

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
