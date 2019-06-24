<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Rustico Restaurante</title>
</head>
<body>
	<nav>
		<div class="nav-wrapper black">
			<H3 onClick="location.href='${pageContext.request.contextPath}/facilities'"  class="p-3 mb-2 bg-dark text-white text-center">Datos del Empleado</H3>
			<ul id="nav-mobile" class="right hide-on-med-and-down">
			</ul>
		</div>
	</nav>
	<form:form action="${pageContext.request.contextPath}/saveEmployee"
		method="POST" modelAttribute="employee">
		<form:input type="hidden" name="idEmployee" path="codigoEmpleado"
			value="${employee.codigoEmpleado}" />
		<input type="hidden" name="idFacility" value="${idFacility}">
		
		<div class="form-group">
		 &nbsp; &nbsp;<label for="nombreEmp">Ingrese el nombre del empleado: </label>
		<form:input class="form-control" type="text" id="nombreEmp" name="eNombre" path="eNombre"
			value="${employee.eNombre}" />
		</div>
			
		<div class="form-group">	
		 &nbsp; &nbsp;<label for="edadEmp">Ingrese la edad del empleado: </label>
		<form:input class="form-control" id="edadEmp" type="text" name="eEdad" path="eEdad"
			value="${employee.eEdad}" />
		
		</div>
		
		<div class="form-group form-check">		
		&nbsp; &nbsp;<label >Genero del empleado: </label>
		<br>
		<form:radiobutton class="form-check-input" id="fem" name="genero" path="eGenero" value="Femenino" />
		<label class="form-check-label" for="fem">Femenino</label> 
		&nbsp; &nbsp; &nbsp;
		<form:radiobutton class="form-check-input" id="mas" name="genero" path="eGenero" value="Masculino" />
		<label class="form-check-label" for="mas" >Masculino</label>
		</div>

		<div class="form-group form-check">	
		&nbsp; &nbsp;<label>Estado del empleado: </label>
		<br>
		<form:radiobutton class="form-check-input" id="acti" name="estado" path="eEstado" value="true" />
		<label class="form-check-label" for="acti" >Activo</label>
		&nbsp; &nbsp; &nbsp;
		<form:radiobutton class="form-check-input" id="inac" name="estado" path="eEstado" value="false" />
		<label class="form-check-label" for="inac" >Inactivo</label>
		</div>
		<br>
		<spam  class="text-danger">${message}</spam>
		
		<button  type="submit" class="btn btn-primary btn-lg btn-block" >Guardar</button>
	</form:form>
</body>
</html>