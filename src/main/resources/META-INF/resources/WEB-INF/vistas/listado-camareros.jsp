<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="common-in-head.jsp"/>
</head>
<body>
	<div class="container-fluid">
		<jsp:include page="header.jsp"/>
		<h2>Listado de camareros</h2>
		<table>
			<thead>
				<tr>
					<th>Código</th>
					<th>DNI</th>
					<th>Nombre Completo</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="camarero" items="${camareros}">
				<tr>
					<td>${camarero.id}</td>
					<td>${camarero.dni}</td>
					<td>${camarero.apellido1} ${camarero.apellido2}, ${camarero.nombre}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>