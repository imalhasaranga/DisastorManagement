/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package impresousers;

import java.io.File;
import java.io.FileInputStream;
import java.util.Properties;

/**
 *
 * @author Hashi
 */
public class dbprops extends Properties{

    public dbprops() {
        try {
            File file = new File(getClass().getResource("db.properties").toURI());
            FileInputStream fi = new FileInputStream(file);
            load(fi);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public static void main(String[] args) {
        Properties p =new dbprops();
        System.out.println(p.getProperty("mysql.url"));
    }
}
