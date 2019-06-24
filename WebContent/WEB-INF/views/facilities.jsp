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
<title>Rustico</title>
</head>
<body>
	<nav>
		<div class="nav-wrapper black">
			<H3 class="p-3 mb-2 bg-dark text-white text-center">
				Restaurante Rustico Premium</H3>
			<ul id="nav-mobile" class="right hide-on-med-and-down">
			</ul>
		</div>
	</nav>
	<form action="${pageContext.request.contextPath}/createFacility"
		method="post">
		<input type="hidden" value="Agregar una sucursal nueva">
	</form>
	
		<button class="btn btn-primary btn-lg btn-block" type="button" onclick="document.forms[0].submit(); return false;">Agregar sucursal</button>
		
		
	<div id="container" style="padding: 2vh 5vw 2vh 5vw">
		<table class="table  table-hover">
			<thead>
				<tr align="center"
					class="p-3 mb-2 bg-dark text-white text-center border-right-0">
					<th>Nombre Sucursal</th>
					<th>Ubicación</th>
					<th>Horario</th>
					<th>Numero de mesas</th>
					<th>Nombre gerente</th>
					<th>Acciones</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${facilities}" var="facilities">

					<tr class="p-3 mb-2 text-dark text-center align-middle">
						<td class="align-middle">${facilities.sNombre}</td>
						<td class="align-middle">${facilities.sUbicacion}</td>
						<td class="align-middle">${facilities.sHorario}</td>
						<td class="align-middle">${facilities.sNumeroMesas}</td>
						<td class="align-middle">${facilities.sNombreGerente}</td>
						<td class="align-middle row">
							<form class="col"
								action="${pageContext.request.contextPath}/updateFacility"
								method="post">
								<input type="hidden" value="${facilities.codigoSucursal}"
									name="idFacility">
								<button class="btn btn-secondary" type="submit" name="act">Editar</button>
							</form>
							<form class="col"
								action="${pageContext.request.contextPath}/deleteFacility"
								method="post">
								<input type="hidden" value="${facilities.codigoSucursal}"
									name="idFacility">
								<button class="btn btn-secondary" type="submit" name="del">Eliminar</button>
							</form>
							<form class="col"
								action="${pageContext.request.contextPath}/facilityProfile"
								method="get">

								<input type="hidden" value="${facilities.codigoSucursal}"
									name="idFacility">
								<button class="btn btn-secondary" type="submit" name="pro">Ver perfil</button>
							</form>

						</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>

	</div>




</body>
</html>