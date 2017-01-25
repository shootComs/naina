package Fonction;

public class VerificationMail 
{
	public static String verifMail(String mail)
	{
		String val;
		if ( mail != null ) 
		{
	        if ( !mail.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) 
	        {
	        	val="Veuillez entrer un email valide";
	        }
	        else
	        {
	        	val="Email validé";
	        }
	    } 
		else 
		{
			val="Veuillez saisir un email";
	    }
		return val;
	}
}
