<!DOCTYPE html>
<html>
	<head>		
		<link rel="stylesheet" type="text/css" href="CSS/style.css">
		<title>Accueil</title>
	</head>
	<body background="<s:url value="/Image/standard.jpg"/>">
		<div align="right">
			<s:property value="%{#attr['prenom']}"/> <s:property value="%{#attr['nom']}"/><br />
			<s:url id="url" action="login"/>
			<s:a href="%{url}"><s:text name="Déconnexion"/></s:a>			
		</div>
		
		<div align="center">
			<h1>Page d'acccueil</h1>
		</div>
		
		<s:actionerror/>
		<b>Bonjour <s:property value="%{#attr['prenom']}"/> <s:property value="%{#attr['nom']}"/> !</b>
		
		<s:if test="%{#attr['prenom']=='Karim' && #attr['nom']=='Fathi'}">
			<ul> 
				<li> 
					<s:url id="url" action="home"/> 
					<s:a href="%{url}"><s:text name="Espace livres"/></s:a> 
				</li>
				<li>
					<s:url id="url" action="home2"/> 
					<s:a href="%{url}"><s:text name="Espace utilisateurs"/></s:a> 
				</li>			
			</ul> 
		</s:if>
		<s:else>
			<ul> 
				<li> 
					<s:url id="url" action="home3"/>
					<s:a href="%{url}"><s:text name="Emprunter un livre"/></s:a> 
				</li>
				<li>
					<s:url id="url" action="home4"/> 
					<s:a href="%{url}"><s:text name="Consulter la liste des livres empruntés"/></s:a> 
				</li>			
			</ul>
    	</s:else>
		
	</body>
</html>