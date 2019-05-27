<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%--Importação para as taglibs --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

<title>Perfil Usuario</title> 
 <meta charset="UTF-8">
 
 
<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript"src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>

<!-- CSS -->
<link rel="stylesheet" type="text/css"href="<%=request.getContextPath()%>/resources/bootstrap/css/outros.css" />
   
   
 
 <style>
 

 
 </style>
</head>
<body>




<div class="container">
    <div class="row profile">
		<div class="col-md-3">
			<div class="profile-sidebar">
				<!-- SIDEBAR USERPIC -->
				<div class="profile-userpic">
					<img src="resources/img/${usuarioLogado.imagem}" class="img-responsive" alt="">
				</div>
				<!-- END SIDEBAR USERPIC -->
				<!-- SIDEBAR USER TITLE -->
				<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						${usuarioLogado.nome} ${usuarioLogado.sobrenome}
					</div>
					<div class="profile-usertitle-job">
						Developer
					</div>
				</div>
				<!-- END SIDEBAR USER TITLE -->
				<!-- SIDEBAR BUTTONS -->
				<div class="profile-userbuttons">
					<!-- <button type="button" class="btn btn-success btn-sm">Follow</button> -->
					<!-- <button type="button" class="btn btn-danger btn-sm">Message</button> -->
				</div>
				<!-- END SIDEBAR BUTTONS -->
				<!-- SIDEBAR MENU -->
				<div class="profile-usermenu">
					<ul class="nav">
						<li class="active">
							<a href="#">
							<i class="glyphicon glyphicon-home"></i>
							Inicio</a>
						</li>
						<li>
							<a href="#" target="_blank"><!-- Abri link em nova guia -->
							<i class="glyphicon glyphicon-user"></i>
							Editar Perfil </a>
						</li>
						<li>
							<a href="#" target="_blank" >
							<i class="glyphicon glyphicon-ok"></i>
							Salvo </a>
						</li>
						<li>
						
						
							<a href="<%=request.getContextPath()%>/logout">
							<i class="glyphicon glyphicon-flag"></i>
							Sair </a>
						</li>
					</ul>
				</div>
				<!-- END MENU -->
			</div>
		</div>
		<div class="col-md-9">
            <div class="profile-content">
			   Some user related content goes here...
            </div>
		</div>
	</div>
</div>
<center>
<strong>JF Software <a href="https://www.facebook.com/joao.fabricio.73" target="_blank">Todos Direitos Reservados</a></strong>
</center>
<br>
<br>



</body>
</html>