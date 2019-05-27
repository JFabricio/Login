<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--Importação para as taglibs --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Novo Cadastro</title>

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>

<!-- jQuery -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery-3.3.1.min.js"></script>

</head>
<body>



	<!-- Formulario de Cadastro -->
	<div class="jumbotron"
		style="margin-left: 20%; margin-right: 20%;">
		
		<a class="btn btn-dark" href="home">HOME</a>
		
	<form class="form-horizontal" action='save' method="POST" enctype="multipart/form-data">
			<fieldset>
				<div id="legend">
					<legend class="">
						<h2>
							<kbd>Novo Registro</kbd>
						</h2>
					</legend>
					<br />
				</div>
				<div class="control-group">
					<!-- Nome -->
					<label class="control-label" for="username">Nome</label>
					<div class="controls">
						<input type="text" id="idNome" name="nome" placeholder=""
							class="input-xlarge" required maxlength="30">

					</div>

					<br />
					<div class="control-group">
						<!-- Sobrenome -->
						<label class="control-label" for="sobrenome">Sobrenome</label>
						<div class="controls">
							<input type="text" id="idSobrenome" name="sobrenome"
								placeholder="" class="input-xlarge" required maxlength=30>

						</div>
					</div>

					<div class="control-group">
						<!-- E-mail -->
						<label class="control-label" for="email">E-mail</label>
						<div class="controls">
							<input type="email" id="idEmail" name="email"
								placeholder="email@exemplo.com" class="input-xlarge" required>

						</div>
					</div>

					<div class="control-group">
						<!-- Password-->
						<label class="control-label" for="password">Senha</label>
						<div class="controls">
							<input type="password" id="idSenha1" name="senha1"
								placeholder="*****" class="input-xlarge" required maxlength=8>
							<h5 style="color: red;" id="idresp"></h5>

						</div>
					</div>

					<div class="control-group">
						<!-- Password -->
						<label class="control-label" for="password_confirm">Senha
							(Confirmação)</label>
						<div class="controls">
							<input type="password" id="idSenha2" name="senha"
								placeholder="*****" class="input-xlarge" required maxlength=8>
							<h5 style="color: red;" id="idresp2"></h5>


						</div>
					</div>
					
					<div class="control-group">
					 <label class="control-label" for="foto_perfil">Foto Perfil&nbsp;&nbsp;</label>
					 <div> 
					 	<input type="file" style="width: 500px;" maxlength="100" name="file" required>
					 
					 </div>
					</div>

					<div class="control-group">
						<!-- Button -->
						<div class="controls">
							<button class="btn btn-success">Cadastrar</button>
						</div>
					</div>
			</fieldset>
		</form>
	</div>


	<!-- Validações jQuery -->
	<script>

$(document).ready(function(){

		$('#idNome').keyup(function () { 
		    this.value = this.value.replace(/[^a-zA-Z.]/g,'');     
		});
		
		$('#idSobrenome').keyup(function () { 
		    this.value = this.value.replace(/[^a-zA-Z.]/g,'');     
		});
		
		//Input Senha 
		$('#idSenha1').focus(function(){
			$('#idresp').html("Senha de 4 á 8 digitos");
		});
		
		$('#idSenha1').blur(function(){
			var senha = $('#idSenha1').val();
			
			for(x=0; x<=senha.length; x++){
				if(x <= 3 ){
					$('#idresp').html("Senha Possui Menos que 4 Caracteres");
					$('#idSenha2').attr('disabled','disabled');
				}else{
					$('#idresp').html("");
					$('#idSenha2').removeAttr('disabled');
				}
			}
		});
		
		//Input Confimação de Senha
		
		$('#idSenha2').focus(function(){
			$('#idresp2').html("Senha de 4 á 8 digitos");
		});
		
		$('#idSenha2').blur(function(){
			$('#idresp2').html("");
		});
	
		$('#idSenha2').blur(function(){
			 
			var senha1 = $('#idSenha1').val();
			var senha2 = $('#idSenha2').val();
			if(senha1 != senha2){
				 alert("As senha não são iguais");
				 $('#idSenha2').val('');
			 }
		
		});
	
});


</script>

</body>
</html>