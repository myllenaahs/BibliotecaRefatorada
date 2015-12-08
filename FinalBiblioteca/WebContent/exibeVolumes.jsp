<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%> 
    <%@ page import="java.util.ArrayList"%> 
    <%@ page import="Entidades.Volumes"%> 
    <%@ page import="DAO.GeneralDAO"%> 
   <!--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> -->
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="estilo_admin.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Biblioteca</title>
</head>
<body>
	
	<h1>Resultado da Consulta</h1>
	
	Titulo ${v["Alagoas"]}
	Estado: ${estados[5]}
	
			<table>
				<tr>
					<th>Volumes Encontrados</th>
				</tr>
					
				<c:forEach var="v" items="${Volumes}">
				<tr>
					<td>Titulo ${v.titulo}</td>
					<td>Descricao ${v.descricao}</td>
					<td>Autor ${v.autor}</td>
					<td>Editora ${v.editora}</td>
					<td>Paginas ${v.paginas}</td>
					<td>Ano ${v.ano}</td>
				</tr>
				</c:forEach>					
			</table>

	<form action="logoutServlet" method="get">
		<input id="logout" name="" type="button" class="btn btn-info"
			onclick="location.href='index.html' " value="Logout">
	</form>
	
</body>
</html>