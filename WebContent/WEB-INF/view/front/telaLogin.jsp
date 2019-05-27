<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<title>Login Page</title>
   
   <meta charset="UTF-8">
   
   
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  <%--Importação para as taglibs --%>

	
   
<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript"src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
   
   
<!--Custom styles-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style.css">
		
</head>

<body>


<c:if test="${usuarioLogado != null}">
	<script>
		window.location.assign("http://localhost:8080/System_login_SHA256/perfil");
	</script>
	
</c:if>

	<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
    <div style="margin-left:4%;margin-top:3%;color:red"><h4>${menssagem2}</h4></div>
<br />

    <!-- Login Form -->
    <h1><kbd>Login</kbd></h1><br /><br/>
    <form action="efetuarLogin" method="post" >
      <input type="email" id="login" class="fadeIn second" name="email" placeholder="email@exemplo.com"><br /><br />		
      <input type="password" id="password" class="fadeIn third" name="senha" placeholder="senha"><br /><br />
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