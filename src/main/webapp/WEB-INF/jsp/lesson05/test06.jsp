<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	<div class = "container">
	<h1>ȸ�� ���� ����Ʈ</h1>
		<table class = "table">
			<thead>
				<tr>
					<th>No</th>
					<th>�̸�</th>
					<th>��ȭ��ȣ</th>
					<th>����</th>
					<th>�̸���</th>
					<th>�ڱ�Ұ�</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var = "Member" items = "${Member }" varStatus = "status" >
			
			<c:set var = "str2" value = "${Member.phonenumber }" />
				<tr>
					<td>${status.count }</td>
					<td>${Member.name }</td>
					
					<c:choose>
							<c:when test = "${fn:startsWith (Member.phonenumber ,'010' )}" >
								<td>${Member.phonenumber }</td>
							</c:when>
							<c:otherwise>
								<td>��ȿ���� �ʴ� ��ȣ</td>
							</c:otherwise>
					</c:choose>
					
						
					<td>
					${fn:replace (Member.nationality , "�ﱹ�ô�" , "�ﱹ -") }
					</td>
					<td><b> ${fn:split (Member.email,"@")[0]}</b> @ ${fn:split (Member.email,"@")[0]}</td>
					<td>
					${fn:substring(Member.introduce , 0, 15 )}
					<c:if test = "${fn:length(member.introduce) > 15 }" >
						...
					</c:if>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>