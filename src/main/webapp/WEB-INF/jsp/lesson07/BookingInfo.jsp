<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��Ϻ���</title>
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
                <div class="logo text-center display-4">�볪�� �Ҽ�</div>
                <div class="menu">
                    <ul class="nav nav-fill">
                        <li class="nav-item"><a href="#" class="nav-link text-white" >��ǼҰ�</a></li>
                        <li class="nav-item"><a href="#" class="nav-link text-white">���Ǻ���</a></li>
                        <li class="nav-item"><a href="#" class="nav-link text-white">����ȳ�</a></li>
                        <li class="nav-item"><a href="#" class="nav-link text-white">Ŀ�´�Ƽ</a></li>
                    </ul>
   				</div>
            </header>
            <br>
            <section>
            	<h1 class = "text-center">���� ��� ����</h1>
            	<div class = "container">
            		<table class = "table">
            			<thead>
            				<tr>
            					<th>�̸�</th>
            					<th>���೯¥</th>
            					<th>�����ϼ�</th>
            					<th>�����ο�</th>
            					<th>��ȭ��ȣ</th>
            					<th>�������</th>
            				</tr>
            			</thead>
            			<tbody>
            			<c:forEach var = "booking" items = "${booking }">
            				<tr>
            						<td>${booking.name}</td>
            						<td>
            						<fmt:formatDate value="${booking.date }" pattern = "yyyy�� mm�� dd��" /> 
            						</td>
            						<td>${booking.day}</td>
            						<td>${booking.headcount}</td>
            						<td>${booking.phonenumber}</td>
            					
            						<c:choose>
            							<c:when test = "${booking.state  eq '�����'}">
            								<td class = "text-info">${booking.state }</td>
            							</c:when>
            							<c:when test = "${booking.state eq 'Ȯ��' }">
            								<td class = "text-success">${booking.state }</td>
            							</c:when>
            							<c:otherwise>
            								<td>${booking.state }</td>
            							</c:otherwise>
            						</c:choose>
									<td><button data-booking-id = "${booking.id }"  class = "btn btn-danger text-white" id = "deleteBtn">����</button></td>            					
            				</tr>
            			</c:forEach>
            			</tbody>
            		</table>
				</div>
          	</section> 
            
            <footer>
            	<small>����Ư����ġ�� ���ֽ� �ֿ���</small> <br>
            	<small>����ڵ�Ϲ�ȣ: 111-22-255222 / ����̹ιڻ�������� / ��ǥ:�����</small>  <br>
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
							// ���ΰ�ħ
							location.reload();
							
						} else {
							alert("���� ����");
						}
						
					},
					error:function(data) {
						alert("���� ����");
					}
					
				});
			});
			
		});
	
	
	</script>
</body>
</html>