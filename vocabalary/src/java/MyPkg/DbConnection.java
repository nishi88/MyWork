
package MyPkg;

import java.sql.Connection;
import java.sql.DriverManager;


public class DbConnection {
    static {
        try{
                MyCon();
            }
        catch(Exception e)
        {
        System.out.println(e);
        }
    }
    public static Connection MyCon() throws Exception  
    {
        
         Class.forName("com.mysql.jdbc.Driver");
       Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vocab","root","");
       return con;
    }
    
}
