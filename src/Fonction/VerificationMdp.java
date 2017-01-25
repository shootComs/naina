package Fonction;

public class VerificationMdp 
{
	public static String verifMdp(String mdp,String mdpConf)
	{
		String val;
        String pattern = "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,}";
		if ( mdp != null && mdpConf != null ) 
		{
	        if ( !mdp.equals( mdpConf ) ) 
	        {
	            val="Mot de passe invalide";
	        } 
	        else if ( mdp.length() < 8 ) 
	        {
	            val="Mot de passe trop court";
	        }
	        else if ( !mdp.matches(pattern)) 
	        {
	        	val="Le mot de passe doit contenir au moins 1 majuscule et 1 chiffre";
	        }
	        else
	        {
	        	val="Mot de passe validé";
	        }
	    } 
		else 
		{
	        val="Veuillez entrer un mot de passe";
	    }
		return val;
	}
}
