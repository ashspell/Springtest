<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��Ϻ���</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
            				<tr>
            					<td>#{booking.name}</td>
            					<td>#{booking.date}</td>
            					<td>#{booking.day}</td>
            					<td>#{booking.headcount}</td>
            					<td>#{booking.phonenumber}</td>
            					<td>#{booking.state}</td>
            				</tr>
            			</tbody>
            		</table>
				</div>
            </section>
            
            
            <footer>
            	����Ư����ġ�� ���ֽ� �ֿ��� <br>
            	����ڵ�Ϲ�ȣ: 111-22-255222 / ����̹ιڻ�������� / ��ǥ:����� <br>
            	Copyright 2025 tongnamu All right reserved
            </footer>
	</div>
</body>
</html>