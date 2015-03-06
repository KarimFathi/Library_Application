<!DOCTYPE html>
<html>
	<head>		
		<link rel="stylesheet" type="text/css" href="CSS/style.css">
		<title>Librairie</title>
	</head>
	<body background="<s:url value="/Image/standard.jpg"/>">
		<div align="right">
			<s:property value="%{#attr['prenom']}"/> <s:property value="%{#attr['nom']}"/><br />
			<s:url id="url" action="login"/>
			<s:a href="%{url}"><s:text name="Déconnexion"/></s:a>			
		</div>
		<div align="center">
		<h1>Liste des livres</h1>
		<table id="livre" border="1">
			<tr>
				<th>Auteur</th>
				<th>Titre</th>
				<th>Editeur</th>
				<th>E-mail</th>
				<th>Date de création</th>
				<th>Page Personnel</th>
				<th>Emprunter</th>
			</tr>
			<s:iterator value="livreList" var="livre">
				<tr>
					<td><s:property value="auteur"/></td>
					<td><s:property value="titre"/> </td>
					<td><s:property value="editeur"/></td>
					<td><s:property value="emailID"/></td>
					<td><s:property value="created"/></td>
					<td><a href="<s:property value="website"/>">link</a></td>
					<td>
						<s:if test=" loaned == '0' ">
						 	<a href="emprunt?id=<s:property value="id"/>">select</a>
						 </s:if>
						 <s:else>
						 	Indisponible
						 </s:else>
					</td>
				</tr>	
			</s:iterator>
		</table>
		</div>
		
		<ul> 
			<li>
				<s:url id="url" action="home4"/> 
				<s:a href="%{url}"><s:text name="Consulter la liste des livres empruntés"/></s:a> 
			</li>	
			<li>
				<a href="connect?firstName=<s:property value="%{#attr['prenom']}"/>&lastName=<s:property value="%{#attr['nom']}"/>">Retour à l'accueil</a>
			</li>
		</ul>
	</body>
</html>