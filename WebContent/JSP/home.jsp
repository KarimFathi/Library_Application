<!DOCTYPE html>
<html>
	<head>		
		<link rel="stylesheet" type="text/css" href="CSS/style.css">
		<title>Librairie</title>
	</head>
	<body background="<s:url value="/Image/standard.jpg"/>">
		<div align="center">
			<h1>Ajout de Livre</h1>
			<s:actionerror/>
			<s:form action="add" method="post">
				<s:textfield name="livre.auteur" label="Auteur "/>
				<s:textarea name="livre.titre" key="Titre" cols="17" rows="3"/>
				<s:textfield name="livre.editeur" label="Editeur "/>
				<s:textfield name="livre.emailID" label="E-mail (x@y.z) "/>
				<s:textfield name="livre.website" label="Site web (http://www.blabla.com) "/>
				<s:textfield name="livre.created" label="Date de création (JJ/MM/AAAA) "/>
				<s:submit value="Ajout Livre" align="right"/>
			</s:form>
			<br>		
			<hr/>			
			<h2>Liste des livres</h2>
			<table id="livre" border="1">
				<tr>
					<th>Auteur</th>
					<th>Titre</th>
					<th>Editeur</th>
					<th>E-mail</th>
					<th>Date de création</th>
					<th>Page Personnel</th>
					<th>Emprunter par</th>
					<th>Supprimer</th>
				</tr>
				<s:iterator value="livreList" var="livre">
					<tr>
						<td><s:property value="auteur"/></td>
						<td><s:property value="titre"/> </td>
						<td><s:property value="editeur"/></td>
						<td><s:property value="emailID"/></td>
						<td><s:property value="created"/></td>
						<td><a href="<s:property value="website"/>">link</a></td>
						<td><s:property value="nomU"/> <s:property value="prenomU"/></td>
						<td><a href="delete?id=<s:property value="id"/>">delete</a></td>
					</tr>	
				</s:iterator>
			</table>
			<br>
			<hr>
			<h2>Liste des livres avec pagination</h2>	
			<display:table name="livreList" id="livre" pagesize="3" requestURI="/home" cellpadding="2px;" cellspacing="2px;" style="margin: auto; border-style: solid; border-width: 1px;">
				<display:column property="id" class="id" title="ID" style="border-style: solid; border-width: 1px;"/>
				<display:column property="auteur" title="Auteur" style="border-style: solid; border-width: 1px;"/>
				<display:column property="titre" title="Titre" style="border-style: solid; border-width: 1px;"/>
				<display:column property="editeur" title="Editeur" style="border-style: solid; border-width: 1px;"/>
				<display:column property="emailID" title="E-mail" style="border-style: solid; border-width: 1px;"/>
				<display:column property="created" title="Date de création" style="border-style: solid; border-width: 1px;"/>
				<display:column property="website" title="Page personnel" autolink="true" style="border-style: solid; border-width: 1px;"/>
			</display:table>
		</div>
		
		<div>		
			<ul>
				<li>
					<s:url id="url" action="home2"/> 
					<s:a href="%{url}"><s:text name="Ajouter un utilisateur"/></s:a> 
				</li>
				<li>
					<a href="connect?firstName=<s:property value="%{#attr['prenom']}"/>&lastName=<s:property value="%{#attr['nom']}"/>">Retour à l'accueil</a>
				</li>
			</ul>
		</div>
	</body>
</html>