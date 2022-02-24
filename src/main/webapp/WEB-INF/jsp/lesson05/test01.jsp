<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL core</title>
<%-- ��Ʈ�ѷ� ���� �ʼ�! --%>
</head>
<body>	
	<c:set var = "number1">36</c:set>
	<c:set var = "number2">3</c:set>
	
	<h2>1.JSTL core ����</h2>
	<h3>ù��° ���� : ${number1 }</h3>
	<h3>�ι�° ���� : ${number2 }</h3>
	
	<h2>2.JSTL core ����</h2>
	<h3>���ϱ� : ${number1 + number2 }</h3>
	<h3>���� : ${number1 - number2 }</h3>
	<h3>���ϱ� : ${number1 * number2 }</h3>
	<h3>������ : ${number1 / number2 }</h3>
	
	<h2>3.JSTL core out</h2>
	<c:out value = "<title>core out</title>"></c:out>
	
	<h2>4.JSTL core if</h2>
	
	<c:set var  ="average" value = "${(number1 + number2 ) / 2}"></c:set>
	<c:if test = "${average}  >= 10}">
		<h1>${average } }</h1>
	</c:if>
	<c:if test = "${average  < 10}">
		<h3>${average }</h3>
	</c:if>
	
	<c:if test = "${number1 * number2  > 100}">
	<c:out value = "<script>alert('�ʹ� ū �� �Դϴ�'); </script>" escapeXml = "false"></c:out>
	</c:if>
	
	
	
	
</body>
</html>