<!DOCTYPE html>
<html>
	<head>		
		<link rel="stylesheet" type="text/css" href="CSS/style.css">
		<title>Utilisateurs</title>
	</head>
	<body background="<s:url value="/Image/standard.jpg"/>">
		<div align="center">
			<h1>Cennexion à la librairie</h1>
			<s:actionerror/>
			<s:form action="connect">
    			<s:textfield name="lastName" label="Nom"/>
    			<s:textfield name="firstName" label="Prénom"/>
    			<!-- <s:password name="firstName" label="Prénom"/> -->
    			<s:submit value="connexion"/>
			</s:form>
		</div>
		<div>
			<h4>Pour le Bibliothécaire :</h4>
			Nom : Fathi<br>
			Prénom : Karim<br>
			<br>
			<h4>Pour les utilisateurs (exemple) :</h4>
			Nom : Charle<br>
			Prénom : Bicepse<br>			
		</div>
	</body>
</html>