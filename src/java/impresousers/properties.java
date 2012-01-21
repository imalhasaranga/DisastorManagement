
package impresousers;

import java.util.Properties;


public  class properties {

    Properties p =new dbprops();

    
     private  String email =  p.getProperty("email");
     private String pass = p.getProperty("password");
     private String path =  p.getProperty("url");

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the pass
     */
    public String getPass() {
        return pass;
    }

    /**
     * @param pass the pass to set
     */
    public void setPass(String pass) {
        this.pass = pass;
    }

    /**
     * @return the path
     */
    public String getPath() {
        return path;
    }

    /**
     * @param path the path to set
     */
    public void setPath(String path) {
        this.path = path;
    }

    
    
    
    
    
    
    
}
