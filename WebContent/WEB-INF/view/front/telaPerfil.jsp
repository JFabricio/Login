<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Perfil Usuario</title>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  <%--Importação para as taglibs --%>
 
 <meta charset="UTF-8">
</head>
<body>

<c:forEach var="usuario" items="${usuario}">

<h1>Bem Vindo,<h3>${usuario.nome}</h3></h1>&nbsp; 

<label>Nome:</label>
<input type="text" value="${usuario.nome}">
<br />
<label>Sobrenome:</label>
<input type="text" value="${usuario.sobrenome}" >
<br />
<label>Email:</label>
<input type="email" value="${usuario.email}">
<br />

</c:forEach>


</body>
</html>