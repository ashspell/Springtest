<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>즐겨찾기 추가하기</title>
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
		<h1>즐겨 찾기 추가하기</h1>
	<label>제목</label>
	<input type = "text" class ="form-control" id = "nameinput" name = "name">
	<br>
	<label>주소</label>
	<div>
	    <div class="input-group">
	      <input type="text" class="form-control" id = "urlinput">
	      <span class="input-group-btn">
		<button class="btn btn-info" type="button" id = "duplicateBtn">중복확인</button>
	      </span>
	     </div>
	    </div>
	    <small id = "duplicateUrl" class = "text-danger">중복된 url 입니다</small>
	    <small id = "possibleUrl" class = "text-info">저장 가능한 url 입니다</small>
	     <br>
	<button class = "button btn btn-success form-control " id = "addBtn">추가</button>
	</div>
	<script>
		$(document).ready(function()  {
			
			$("#addBtn").on("click", function() {
				let name = $("#nameinput").val();
				let url = $("#urlinput").val().trim();	
			
				// 유효성 검사
				if(name == "") {
					alert ("제목을 입력하세요");
					return ;
				}
				
				if(url == "") {
					alert ("주소를 입력하세요");
					return;
				}
				
				if(!url.startsWith("http://") && !url.startsWith("https://")) {
					alert ("잘못된 주소입니다");
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
							alert ("즐겨찾기 추가 실패");
						}
					},
					error:function() {
						alert("입력 에러");
					}
				});
				
			});
			
			
			
			
			$("#duplicateBtn").on("click" ,function(){
				let url = $("#urlinput").val();	
				
				if(url == "") {
					alert ("주소를 입력하세요");
					return;
				}
				
				if(!url.startsWith("http://") && !url.startsWith("https://")) {
					alert ("잘못된 주소입니다");
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
					alert("중복확인 에러");
				}
				
			});
			
			
		});
	</script>
	
</body>
</html>
