<!DOCTYPE html>
<html>
	<head>		
		<link rel="stylesheet" type="text/css" href="CSS/style.css">
		<title>Utilisateurs</title>
	</head>
	<body background="<s:url value="/Image/standard.jpg"/>">
		<div align="center">
			<h1>Cennexion � la librairie</h1>
			<s:actionerror/>
			<s:form action="connect">
    			<s:textfield name="lastName" label="Nom"/>
    			<s:textfield name="firstName" label="Pr�nom"/>
    			<!-- <s:password name="firstName" label="Pr�nom"/> -->
    			<s:submit value="connexion"/>
			</s:form>
		</div>
		<div>
			<h4>Pour le Biblioth�caire :</h4>
			Nom : Fathi<br>
			Pr�nom : Karim<br>
			<br>
			<h4>Pour les utilisateurs (exemple) :</h4>
			Nom : Charle<br>
			Pr�nom : Bicepse<br>			
		</div>
	</body>
</html>