<!DOCTYPE html>
<html>
	<head>		
		<link rel="stylesheet" type="text/css" href="CSS/style.css">
		<title>Utilisateurs</title>
	</head>
	<body background="<s:url value="/Image/standard.jpg"/>">		
		<div align="center">
			<h1>Ajout d'un utilisateur</h1>
			<s:actionerror/>
			<s:form action="add2" method="post">			
				<s:textfield name="contact.lastName" label="Nom "/>
				<s:textfield name="contact.firstName" label="Prénom "/>
				<s:textfield name="contact.emailId" label="E-mail (x@y.z) "/>
				<s:textfield name="contact.cellNo" label="Numéro de téléphone "/>
				<s:textfield name="contact.website" label="Page personnel (http://www.blabla.com) "/>
				<s:textfield name="contact.birthDate" label="Date de naissance (JJ/MM/AAAA) "/>
				<s:submit value="Ajout Contact" align="right"/>
			</s:form>
		</div>
		<br>
		<hr/>
		<div align="center">	
			<h2>Liste des utilisateurs</h2>
			<table id="contact" border="1">
				<tr>
					<th>Nom et Prénom</th>
					<th>E-mail</th>
					<th>Numéro de téléphone</th>
					<th>Date de naissance</th>
					<th>Site Web</th>
					<th>Supprimer</th>
				</tr>
				<s:iterator value="contactList" var="contact">
					<tr>
						<td><s:property value="lastName"/> <s:property value="firstName"/> </td>
						<td><s:property value="emailId"/></td>
						<td><s:property value="cellNo"/></td>
						<td><s:property value="birthDate"/></td>
						<td><a href="<s:property value="website"/>">link</a></td>
						<td><a href="delete2?id=<s:property value="id"/>">delete</a></td>
					</tr>	
				</s:iterator>
			</table>
		</div>
		<br>
		<hr>
		<div align="center">
			<h2>Liste des utilisateurs avec pagination</h2>	
			<display:table name="contactList" id="contact" pagesize="3" requestURI="/home2" cellpadding="2px;" cellspacing="2px;" style="margin: auto; border-style: solid; border-width: 1px;">
				<display:column property="id" class="id" title="id" style="border-style: solid; border-width: 1px;"/>
				<display:column property="lastName" title="Nom" style="border-style: solid; border-width: 1px;"/>
				<display:column property="firstName" title="Prénom" style="border-style: solid; border-width: 1px;"/>
				<display:column property="emailId" title="E-mail" style="border-style: solid; border-width: 1px;"/>
				<display:column property="cellNo" title="Numéro de téléphone" style="border-style: solid; border-width: 1px;"/>
				<display:column property="birthDate" title="Date de naissance" style="border-style: solid; border-width: 1px;"/>
				<display:column property="website" title="Site Web" autolink="true" style="border-style: solid; border-width: 1px;"/>
			</display:table>
		</div>
		<br>
		<hr>
		<div align="center">
			<h2>Suppression des utilisateurs</h2>
			<s:iterator value="contactList">
				<s:textfield name="id" size="1"></s:textfield><a href="delete2?id=<s:property value="id"/>">delete</a><br>
			</s:iterator>			
		</div>
		<br>
		<hr>
		<div>		
			<ul>
				<li> 
					<s:url id="url" action="home"/> 
					<s:a href="%{url}"><s:text name="Ajouter un livre"/></s:a> 
				</li>
				<li>
					<a href="connect?firstName=<s:property value="%{#attr['prenom']}"/>&lastName=<s:property value="%{#attr['nom']}"/>">Retour à l'accueil</a>
				</li> 
			</ul>
		</div> 
	</body>
</html>