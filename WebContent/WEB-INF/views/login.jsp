<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/login.css">
<meta charset="UTF-8">
<title>Restaurante</title>
<script src="resources/js/jquery-3.3.0.js"></script>

<body>
	<nav>
		<div class="nav-wrapper black">
			<H3 class="p-3 mb-2 bg-dark text-white text-center">LOGIN</H3>
			<ul id="nav-mobile" class="right hide-on-med-and-down">
			</ul>
		</div>
	</nav>
	<div class="center-align">
		<div class=" row"
			style="margin: 22vh 40vh 0 40vh; padding: 32px 48px 0px 48px; border: 1px solid #EEE;">

			<f:form class="col s12" name="loginForm" id="loginForm"
				action="${pageContext.request.contextPath}/verifyCredentials"
				method="post" modelAttribute="usuario">
				
				<div class="form-group">
					<div class="input-field col s12">
					<spam  class="text-danger">${message}</spam>
					<br>
						<label for='user'>Ingrese usuario</label>
						<f:input class="form-control validate" type='text' name='user' id='user'
							path="uUsuario" />
							
					</div>
				</div>

				<div class="form-group">
					<div class='input-field col s12'>
					
						<label for='password'>Ingrese su contraseña </label>
						<f:input class="form-control validate" type='password' name='password'
							path="uClave" id='password' />
						
					</div>
				</div>
				<br />
				<div class="row center-align">
				<button  type="submit" name='btn_login' class="btn btn-primary btn-lg btn-block" >Ingresar</button>
						
				</div>
			</f:form>
		</div>
	</div>

</body>
</html>