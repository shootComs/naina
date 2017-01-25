package Fonction;

import java.sql.*;

public class Insertion 
{
	static Connection conn;
	public static int getMaxId()
    {
        PreparedStatement preparar=null;
        conn=ConnexionBase.getConn();
        int id=0;
        int i;
        try
        {   
            String requete="SELECT max(id_membre) FROM membre";
            preparar=conn.prepareStatement(requete);
            ResultSet rs=preparar.executeQuery();  
            while(rs.next())
            {
                i=rs.getInt(1);
                id=i;
            }
            conn.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return id;
    }    
	public static boolean insertMembre(MapMembre m)
    {
		int id=getMaxId();
		int NextId=id+1;
        String req = "INSERT INTO membre VALUES('"+NextId+"','"+m.getNom()+"','"+m.getPrenom()+"','"+m.getEmail()+"','"+m.getMdp()+"')";   
        boolean val=false;
        try
        {
            conn=ConnexionBase.getConn();
            val=true;
            conn.prepareStatement(req).executeUpdate();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return val;
    }
}
