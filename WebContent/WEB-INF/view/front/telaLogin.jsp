<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  <%--Importação para as taglibs --%>

	<title>Login Page</title>
   
   <meta charset="UTF-8">
   
<link rel="stylesheet" type="text/css"href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript"src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
   
<!--Custom styles-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style.css">
	
 
		
		
</head>

<body>

<div style="text-align: center; color: red;">${mensagem}</div>

	<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" />
    </div>

    <!-- Login Form -->
    <form action="verifica" method="post">
      <input type="text" id="login" class="fadeIn second" name="email" placeholder="email@exemplo.com">
      <input type="text" id="password" class="fadeIn third" name="senha" placeholder="senha">
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="cadastro">Novo aqui?</a>
    </div>

  </div>
</div> 
			
</body>
</html>