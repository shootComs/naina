<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="Fonction.*"%>
<%
	String nom=request.getParameter("nom");
	String prenom=request.getParameter("prenom");
	String email=request.getParameter("email");
	String pwd=request.getParameter("pwd");
	String pwd_conf=request.getParameter("pwd_conf");
	
	String cap=request.getParameter("cap");
	String cap_conf=request.getParameter("cap_conf");
	
	String verifMail=VerificationMail.verifMail(email);
	String verifPass=VerificationMdp.verifMdp(pwd,pwd_conf);
	
	String ma="Email validé";
	String md="Mot de passe validé";
	
	MapMembre membre=new MapMembre();
	membre.setNom(nom);
	membre.setPrenom(prenom);
	membre.setEmail(email);
	membre.setMdp(pwd);
	
	if(cap.compareTo(cap_conf)==0)
	{
		if(verifMail==ma && verifPass==md)
		{
			response.sendRedirect("../index.jsp");
			Insertion.insertMembre(membre);
		}
		else
		{
			out.print(verifMail);
			out.print("<br>");
			out.print(verifPass);
		}
	}
	else
	{
		out.print("Captcha invalide");
	}
%>
<br>
<a href="../index.jsp"><button>Accueil</button></a>