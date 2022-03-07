<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���ã�� �߰��ϱ�</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style>
	#duplicateUrl {
		display:none;
	}
	
	#possibleUrl {
		display:none;
	}


</style>




</head>
<body>
	
	<div class = "container">
		<h1>��� ã�� �߰��ϱ�</h1>
	<label>����</label>
	<input type = "text" class ="form-control" id = "nameinput" name = "name">
	<br>
	<label>�ּ�</label>
	<div>
	    <div class="input-group">
	      <input type="text" class="form-control" id = "urlinput">
	      <span class="input-group-btn">
		<button class="btn btn-info" type="button" id = "duplicateBtn">�ߺ�Ȯ��</button>
	      </span>
	     </div>
	    </div>
	    <small id = "duplicateUrl" class = "text-danger">�ߺ��� url �Դϴ�</small>
	    <small id = "possibleUrl" class = "text-info">���� ������ url �Դϴ�</small>
	     <br>
	<button class = "button btn btn-success form-control " id = "addBtn">�߰�</button>
	</div>
	<script>
		$(document).ready(function()  {
			
			$("#addBtn").on("click", function() {
				let name = $("#nameinput").val();
				let url = $("#urlinput").val().trim();	
			
				// ��ȿ�� �˻�
				if(name == "") {
					alert ("������ �Է��ϼ���");
					return ;
				}
				
				if(url == "") {
					alert ("�ּҸ� �Է��ϼ���");
					return;
				}
				
				if(!url.startsWith("http://") && !url.startsWith("https://")) {
					alert ("�߸��� �ּ��Դϴ�");
					return;
				}
				
				

				
				$.ajax({
					type:"post",
					url:"/lesson06/add_favorite",
					data:{"name":name, "url":url},
					success : function(data) {
						
						//success
						if(data.result == "success") {
							location.href= "/lesson06/favorite_list"
						} else {
							alert ("���ã�� �߰� ����");
						}
					},
					error:function() {
						alert("�Է� ����");
					}
				});
				
			});
			
			
			
			
			$("#duplicateBtn").on("click" ,function(){
				let url = $("#urlinput").val();	
				
				if(url == "") {
					alert ("�ּҸ� �Է��ϼ���");
					return;
				}
				
				if(!url.startsWith("http://") && !url.startsWith("https://")) {
					alert ("�߸��� �ּ��Դϴ�");
					return;
				}
			});
			
			$.ajax({
				type:"post",
				url:"/lesson07/duplicateUrl",
				data:{"url":url},
				success:function(data) {
					${"#duplicateUrl"}.hide();
					${"#possibleUrl"}.hide();
					
					if(data.is_duplicate) {
						${"#duplicateUrl"}.show();
	
					} else {
						${"#possibleUrl"}.show();
						
					}
				},
				error:function() {
					alert("�ߺ�Ȯ�� ����");
				}
				
			});
			
			
		});
	</script>
	
</body>
</html>
