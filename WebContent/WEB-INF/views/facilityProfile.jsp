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
			<H3 onClick="location.href='${pageContext.request.contextPath}/facilities'" class="p-3 mb-2 bg-dark text-white text-center">Sucursal ${facility.sNombre}</H3>
			<ul id="nav-mobile" class="right hide-on-med-and-down">
			</ul>
		</div>
	</nav>
	<div id="container2" style="padding: 2vh 5vw 2vh 5vw">
		<table class="table  table-hover" >
		<thead>
			<tr align="center"
					class="p-3 mb-2 bg-dark text-white text-center border-right-0">
				<th>Ubicacion</th>
				<th>Horario de atención</th>
				<th>Numero de mesas</th>
				<th>Gerente</th>
				<td>Acciones</td>
			</tr>
			</thead>
			<tbody>
			<tr class="p-3 mb-2 text-dark text-center align-middle">
				<td>${facility.sUbicacion}</td>
				<td>${facility.sHorario}</td>
				<td>${facility.sNumeroMesas}</td>
				<td>${facility.sNombreGerente}</td>
				<td class="align-middle row">
					<form class="col" action="${pageContext.request.contextPath}/deleteFacility"
						method="post">
						<input type="hidden" value="${facility.codigoSucursal}"
							name="idFacility"> 
					<button class="btn btn-secondary" type="submit" name="pro">Eliminar</button>
					</form>
					<form class="col" action="${pageContext.request.contextPath}/addEmployee"
						method="post">
						<input type="hidden" value="${facility.codigoSucursal}"
							name="idFacility">
						 <button class="btn btn-secondary" type="submit" name="pro">Agregar empleado</button>
					</form>
				</td>
			</tr>
			</tbody>
		</table>

	</div>
	<div id="container3" style="padding: 2vh 5vw 2vh 5vw">
		<table class="table  table-hover">
		<thead>
			<tr  align="center"
					class="p-3 mb-2 bg-dark text-white text-center border-right-0">
				<th>Nombre Empleado</th>
				<th>Edad</th>
				<th>Genero</th>
				<th>Estado</th>
				<th>Acciones</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${employees}" var="employees">
				<tr class="p-3 mb-2 text-dark text-center align-middle">
					<td>${employees.eNombre}</td>
					<td>${employees.eEdad}</td>
					<td>${employees.eGenero}</td>
					<td>${employees.estadoDelegate}</td>
					<td class="align-middle row">
						<form class="col" action="${pageContext.request.contextPath}/updateEmployee"
							method="post">
							<input type="hidden" value="${facility.codigoSucursal}"
								name="idFacility"> <input type="hidden"
								value="${employees.codigoEmpleado}" name="idEmployee">
									<button class="btn btn-secondary" type="submit" name="pro">Editar</button>
							
						</form>
						<form class="col" action="${pageContext.request.contextPath}/deleteEmployee"
							method="post">
							<input type="hidden" value="${facility.codigoSucursal}"
								name="idFacility"> <input type="hidden"
								value="${employees.codigoEmpleado}" name="idEmployee">
									<button class="btn btn-secondary" type="submit" name="pro">Eliminar</button>
							
						</form>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>

	</div>
</body>
</html>