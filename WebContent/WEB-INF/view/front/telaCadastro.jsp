<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  <%--Importação para as taglibs --%>
</head>
<body>
<h1>Crie um conta:</h1>
<form action="save" method="post">
<label>Nome:</label>
<input type="text" name="nome" >
<br />
<label>Sobrenome:</label>
<input type="text" name="sobrenome" >
<br />
<label>Email:</label>
<input type="email" name="email">
<br />
<label>Senha:</label>
<input type="password" name="senha">


<button type="submit">Cadastrar</button>

</form>


</body>
</html>