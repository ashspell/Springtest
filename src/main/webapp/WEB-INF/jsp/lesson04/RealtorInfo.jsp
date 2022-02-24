<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class  = "Container">
		<h1>공인중개사 정보</h1> <hr>
		
		<table class= "table">
			<tr>
				<th>ID</th>
				<td>${realtor.id}</td>
			</tr>
				
			<tr>
				<th>상호명</th>
				<td>${realtor.office }</td>
			</tr>
			
			<tr>
				<th>전화번호</th>
				<td>${realtor.phonenumber }</td>
			</tr>
			
			<tr>
				<th>등급</th>
				<td>${realtor.grade }</td>
			</tr>
		</table>
	</div>
</body>
</html>