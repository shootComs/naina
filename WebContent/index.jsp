<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%  
	String sb="AZERTYUOPMLKJHGFDSQWXCVBN0123456789azertyuiopmkjhgfdsqwxcvbn";
	int taille=sb.length();
	String captcha="";
	for(int i=0;i<6;i++) 
	{  
		captcha+=sb.charAt((int)(Math.random()*taille));  
	}  
 %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Vérification</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script src="js/jquery.js"></script>
	<script>
	$(document).ready(function()
	{
		$("#captchaPasCopie").bind('copy',function(e)
		{
			e.preventDefault();
		});
		$("#captchaPasColler").bind('paste',function(e)
				{
					e.preventDefault();
				});
	});
	</script>
</head>
<body>
	<form name="frm" method="post" action="jsp/verification.jsp">
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
				</div>
				<div class="col-sm-6">
					<pre><center><b>Formulaire d'inscription</b></center></pre>
					<div class="row">
						<div class="col-sm-4">
							<label>Nom</label>
						</div>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="nom" >
						</div>
					</div><br>
					<div class="row">
						<div class="col-sm-4">
							<label>Prénom</label>
						</div>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="prenom" >
						</div>
					</div><br>
					<div class="row">
						<div class="col-sm-4">
							<label>Adresse mail</label>
						</div>
						<div class="col-sm-8">
							<input type=text class="form-control" name="email" >
						</div>
					</div><br>
					<div class="row">
						<div class="col-sm-4">
							<label>Mot de passe</label>
						</div>
						<div class="col-sm-8">
							<input type="password" class="form-control" name="pwd" >
						</div>
					</div><br>
					<div class="row">
						<div class="col-sm-4">
							<label>Confirmer mot de passe</label>
						</div>
						<div class="col-sm-8">
							<input type="password" class="form-control" name="pwd_conf" >
						</div>
					</div><br>
					<div class="row">
						<div class="col-sm-4">
						</div>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="cap" value="<%=captcha%>" style="text-align: center; background-image: radial-gradient(green,yellow,red); color:black; font-size: 30px; border-radius: 100px" readonly="true" id="captchaPasCopie" />
						</div>
					</div><br>
					<div class="row">
						<div class="col-sm-4">
							<label></label>
						</div>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="cap_conf" placeholder="Veuillez ressaisir ce que vous voyez" style="text-align: center" id="captchaPasColler" >
						</div>
					</div><br>
					<div class="row">
						<div class="col-sm-4">
							<label></label>
						</div>
						<div class="col-sm-8">
							<center><input type="submit" value="OK" class="btn btn-primary" style="width:250px"></center>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
				</div>
			</div>
		</div>
	</form>
</body>
</html>