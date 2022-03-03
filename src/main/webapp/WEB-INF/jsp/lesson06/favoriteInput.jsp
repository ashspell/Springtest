<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���ã�� �߰��ϱ�</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	
	<div class = "container">
		<h1>��� ã�� �߰��ϱ�</h1>
	<label>����</label>
	<input type = "text" class ="form-control" id = "nameinput" name = "name">
	<label>�ּ�</label>
	<input type = "text" class ="form-control" id = "urlinput" name = "url">
	<button class = "button btn btn-success " id = "addBtn">�߰�</button>
	</div>
	<script>
		$(document).ready(function()  {
			
			$("#addBtn").on("click", function() {
				let name = $("#nameinput").val();
				let url = $("#urlinput").val().trim();	
			

				if(name == "") {
					alert "������ �Է��ϼ���";
					return ;
				}
				
				if(url == "") {
					alert "�ּҸ� �Է��ϼ���";
					return;
				}
				
				
				

				
				$.ajax({
					type:"post",
					url:"/lesson06/add_favorite",
					data:{"name":name, "url":url},
					success : function(data) {
						alert(data);
						location.href= "/lesson06/favoriteList"
					},
					error:function() {
						alert("�Է� ����");
					}
				});
					return false;
				
			});
		});
	</script>
	
</body>
</html>
