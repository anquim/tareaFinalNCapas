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
<title>Restaurante </title>
</head>
<body>
	<nav>
		<div class="nav-wrapper black">
			<H3 onClick="location.href='${pageContext.request.contextPath}/facilities'" class="p-3 mb-2 bg-dark text-white text-center">Datos de la Sucursal</H3>
			<ul id="nav-mobile" class="right hide-on-med-and-down">
			</ul>
		</div>
	</nav>
	<form:form action="${pageContext.request.contextPath}/saveFacility"
		method="POST" modelAttribute="facility">
		<form:input type="hidden" name="code" path="codigoSucursal"
			value="${facility.codigoSucursal}" />
			
		<div class="form-group">	
		<label for="nombreSu">Ingrese el nombre de la sucursal: </label>
		<form:input class="form-control" id="nombreSu" type="text" name="name" path="sNombre"
			value="${facility.sNombre}" />
		</div>		
		
		<div class="form-group">
		<label for="ubiSu">Ingrese la ubicación de la sucursal: </label>
		<form:input class="form-control" id="ubiSu" type="text" name="ubic" path="sUbicacion"
			value="${facility.sUbicacion}" />
		</div >
		
		<div class="form-group">
		<label for="horarioSu">Ingrese el horario de la sucursal: </label>
		<form:input class="form-control" id="horarioSu" type="text" name="horarios" path="sHorario"
			value="${facility.sHorario}" />
		</div>
		
		<div class="form-group">
		<label for="mesasSu">Ingrese el numero de mesas: </label>
		<form:input class="form-control" id="mesasSu" type="number" name="numMesas" path="sNumeroMesas"
			value="${facility.sNumeroMesas}" />
		</div>
		
		<div class="form-group">
		<label for="gerenteSu">Ingrese el nombre del gerente a cargo de la sucursal: </label>
		<form:input class="form-control" id="gerenteSu" type="text" name="nombGer" path="sNombreGerente"
			value="${facility.sNombreGerente}" />
		<br>
		</div>
		
		<spam  class="text-danger">${message}</spam>
		
		<button  type="submit" class="btn btn-primary btn-lg btn-block" >Guardar Cambios</button>
	</form:form>
</body>
</html>