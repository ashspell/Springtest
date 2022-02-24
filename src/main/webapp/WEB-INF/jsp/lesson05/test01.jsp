<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL core</title>
<%-- 컨트롤러 생성 필수! --%>
</head>
<body>	
	<c:set var = "number1">36</c:set>
	<c:set var = "number2">3</c:set>
	
	<h2>1.JSTL core 변수</h2>
	<h3>첫번째 숫자 : ${number1 }</h3>
	<h3>두번째 숫자 : ${number2 }</h3>
	
	<h2>2.JSTL core 연산</h2>
	<h3>더하기 : ${number1 + number2 }</h3>
	<h3>빼기 : ${number1 - number2 }</h3>
	<h3>곱하기 : ${number1 * number2 }</h3>
	<h3>나누기 : ${number1 / number2 }</h3>
	
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
	<c:out value = "<script>alert('너무 큰 수 입니다'); </script>" escapeXml = "false"></c:out>
	</c:if>
	
	
	
	
</body>
</html>