<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>예약 목록보기</title>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel = "stylesheet" href="/lesson07/css/style02.css" type="text/css">
</head>
<body>
	<div class = "wrap">	
		 <header>
                <div class="logo text-center display-4">통나무 팬션</div>
                <div class="menu">
                    <ul class="nav nav-fill">
                        <li class="nav-item"><a href="#" class="nav-link text-white" >펜션소개</a></li>
                        <li class="nav-item"><a href="#" class="nav-link text-white">객실보기</a></li>
                        <li class="nav-item"><a href="#" class="nav-link text-white">예약안내</a></li>
                        <li class="nav-item"><a href="#" class="nav-link text-white">커뮤니티</a></li>
                    </ul>
   				</div>
            </header>
            <br>
            <section>
            	<h1 class = "text-center">예약 목록 보기</h1>
            	<div class = "container">
            		<table class = "table">
            			<thead>
            				<tr>
            					<th>이름</th>
            					<th>예약날짜</th>
            					<th>숙박일수</th>
            					<th>숙박인원</th>
            					<th>전화번호</th>
            					<th>예약상태</th>
            				</tr>
            			</thead>
            			<tbody>
            			<c:forEach var = "booking" items = "${booking }">
            				<tr>
            						<td>${booking.name}</td>
            						<td>
            						<fmt:formatDate value="${booking.date }" pattern = "yyyy년 mm월 dd일" /> 
            						</td>
            						<td>${booking.day}</td>
            						<td>${booking.headcount}</td>
            						<td>${booking.phonenumber}</td>
            					
            						<c:choose>
            							<c:when test = "${booking.state  eq '대기중'}">
            								<td class = "text-info">${booking.state }</td>
            							</c:when>
            							<c:when test = "${booking.state eq '확정' }">
            								<td class = "text-success">${booking.state }</td>
            							</c:when>
            							<c:otherwise>
            								<td>${booking.state }</td>
            							</c:otherwise>
            						</c:choose>
									<td><button data-booking-id = "${booking.id }"  class = "btn btn-danger text-white" id = "deleteBtn">삭제</button></td>            					
            				</tr>
            			</c:forEach>
            			</tbody>
            		</table>
				</div>
          	</section> 
            
            <footer>
            	<small>제주특별자치도 제주시 애월읍</small> <br>
            	<small>사업자등록번호: 111-22-255222 / 농어촌민박사업자지정 / 대표:김통목</small>  <br>
            	<small> Copyright 2025 tongnamu All right reserved </small>
            </footer>
	</div>
	
	<script>
		$(document).ready(function() {
			$("#deleteBtn").on("click",function(){
				let bookingid = $(this).data("booking-id");
				
				$.ajax({
					type = "get",
					url:"/lesson07/delete_booking",
					data:{"id":bookingid},
					success:function(data) {
						if(data.result == "success") {
							// 새로고침
							location.reload();
							
						} else {
							alert("삭제 실패");
						}
						
					},
					error:function(data) {
						alert("삭제 에러");
					}
					
				});
			});
			
		});
	
	
	</script>
</body>
</html>