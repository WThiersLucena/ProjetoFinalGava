<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Usu?rios</title>
<link rel="stylesheet"
	href="webjars/bootstrap/5.1.3/css/bootstrap.min.css">
</head>
<body>

<div class="container">
    <h1 class="title">Lista de Usu?rios</h1>
    <hr>
	<form action="CRUDController" method="post">
		<button class="btn btn-primary"type="submit" name="option" value="insertForm">Cadastrar Usu?rio</button>
	</form>
	
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Nome</th>
					<th scope="col">Email</th>
					<th scope="col">Pa?s</th>
					<th scope="col">A??es</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="usuario" items="${listUser}">
					<tr>
						<form action="CRUDController" method="post">
							<td>
								<c:out value="${usuario.id}"/>
								<input type="hidden" name="id" value="${usuario.id}"/>
							</td>
							<td><c:out value="${usuario.nome}"/></td>
							<td><c:out value="${usuario.email}"/></td>
							<td><c:out value="${usuario.pais}"/></td>
							<td><button class="btn btn-primary" type="submit" name="option" value="delete" style="margin-right: 10px;" >Deletar</button>
                                <button class="btn btn-primary" type="submit" name="option" value="updateForm">Atualizar</button>
                            </td>
						</form>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</div>
</body>
</html>