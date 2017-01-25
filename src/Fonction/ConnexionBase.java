package Fonction;

import java.sql.*;

public class ConnexionBase implements Base
{
	 public static Connection getConn()
	    {
	        Connection conn= null;
	        try
	        {
	            Class.forName("org.postgresql.Driver");
	            conn= DriverManager.getConnection(connURL,username,password);
	        }
	        catch(ClassNotFoundException | SQLException e)
	        {
	            System.out.println(e);
	        }
	        return conn;
	    } 
}
