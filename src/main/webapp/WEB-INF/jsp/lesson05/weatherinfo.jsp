<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>과거 날씨</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
	<h1>과거 날씨</h1> <hr>
		<table class = "table">
			<thead>
				<tr>
					<th>날짜</th>
					<th>날씨</th>
					<th>기온</th>
					<th>강수량</th>
					<th>미새먼지</th>
					<th>풍속</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var = "weatherhistory" items = "${weatherhistory }" varStatus = "status">
				<tr>
					<td><fmt:formatDate value = "${weatherhistory.date }" pattern = "yyyy년MM월dd일" /></td>
					<c:choose>
						<c:when>
						<%-- 날씨에 맞는 이미지  --%>
						</c:when>
						<c:otherwise>
							<td>${weatherhistory.weather }</td>
						</c:otherwise>
					</c:choose>
					
					<td>${weatherhistory.weather }</td>
					<td>${weatherhistory.temperatures }℃</td>
					<td>${weatherhistory.precipitation }mm</td>
					<td>${weatherhistory.microDust }</td>
					<td>${weatherhistory.windSpeed}km/h</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>

	</div>
</body>
</html>