<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<h1>�����</h1>	
	<table class = "table text-center">
	<thead>
		<tr>
			<th>�̸�</th>
			<th>��ȭ��ȣ</th>
			<th>���</th>
			<th>����Ʈ</th>
		</tr>
	</thead>	
	<tbody>
	<c:forEach var = "membership" items = "${membership }" >
		<tr>
			<td>${membership.name }</td>
			<td>${membership.phonenumber }</td>
			
			<c:choose>
				<c:when test = "${membership.grade eq 'VIP' }">
				<td class = "text-danger">${membership.grade }</td>
				</c:when>
				<c:when test = "${membership.grade eq 'GOLD' }">
				<td class = "text-warning">${membership.grade }</td>
				</c:when>
				<c:otherwise>
					<td>${membership.grade }</td>
				</c:otherwise>
			</c:choose>	
			
			<c:choose>
			<c:when test = "${membership.point >= 5000 }">
				<td class = "text-primary">${membership.point }</td>
				</c:when>
				<c:otherwise>
					<td>${membership.point }</td>
				</c:otherwise>
			</c:choose>	
		</tr>
	</c:forEach>
	</tbody>
	</table>
</body>
</html>