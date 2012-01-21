/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package impresousers;

import java.io.File;
import java.util.Date;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;

/**
 *
 * @author Imal
 */
public class FileUploadclass {
 String filename = null;
    String time =null;

      public  String uploadfile(FileItem file,HttpSession ses1,String folder1,String filename1 ){




             

                    if(!file.isFormField()){

                        try {
                             filename = file.getName();


                            if(filename != null){
                                if(filename.equals("")){

                                }else{
                                    boolean folder = new File(ses1.getServletContext().getRealPath("/")).mkdirs();

                                    int idx = filename.lastIndexOf("\\");
                                    String file_name = "";

                                        if(idx > -1){
                                            idx = idx + 1;

                                            file_name = filename.substring(idx);
                                        }else{
                                            file_name = filename;
                                        }
                                   time = String.valueOf(new Date().getTime());
                                    File upload_file = new File(ses1.getServletContext().getRealPath("/") + "/"+folder1+"/" +filename1);

                                    file.write(upload_file);

                                    String path = upload_file.getPath();

                                }
                            }

                        } catch (Exception ex2) {
                            ex2.printStackTrace();
                        }

                    }





       return time+filename;
        }
}
