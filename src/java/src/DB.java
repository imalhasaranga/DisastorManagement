/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package src;

import impresousers.*;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

/**
 *
 * @author Imal
 */
public class DB {
    
    
    public static Connection con;
    public static Connection getmyCon() throws  Exception{
    
       Properties p =new dbprops();
       Class.forName(p.getProperty("sql.driver")).newInstance();
        String url = p.getProperty("sql.url");
         con = DriverManager.getConnection(url, p.getProperty("db.username"), p.getProperty("db.pass"));
    
    return con;
    }
    
    public static ResultSet getResultset(String sql) throws Exception{
    if(con == null){
    getmyCon();
    }
        
        ResultSet rs = con.createStatement().executeQuery(sql);
        
        return rs;
    }


    public static void stexecuteUpdate(String sql) throws Exception{
        
         if(con == null){
    getmyCon();
    }
         con.createStatement().executeUpdate(sql);
    
    }
    

     public static PreparedStatement PreparestatementI(String sql) throws Exception{
    if(con == null){
    getmyCon();
    }

        PreparedStatement pr = con.prepareStatement(sql);

        return pr;
    }

}
