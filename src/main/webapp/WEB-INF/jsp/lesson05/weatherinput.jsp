<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
		<h1>날씨 입력</h1>
		<form method = "get" action = "lesson05/add_weather">
		 <div class="mb-3 row d-flex">
    		<label class=" col-form-label">날짜</label>
    	<div class="col-sm-3">
      		<input type="text" class="form-control" >
    </div>
  </div>
  	<div class = "mb-3 row d-flex">
		<label class = "col-form-label">날씨</label>
			<select class = "col-sm-2">
				<option>맑음</option>
				<option>비</option>
				<option>흐림</option>
				<option>구름조금</option>
			</select>
	</div>
		<label>미세먼지 
			<select>
				<option>좋음</option>
				<option>보통</option>
				<option>나쁨</option>
			</select>
		 </label>
		 
		 <div class="input-group">
		 	<h5>기온</h5>
  			<input type="text">
  				<span class="input-group-text">℃</span>
		</div>
		
		<div class="input-group">
		 	<h5>강수량</h5>
  			<input type="text">
  				<span class="input-group-text">mm</span>
		</div>
		
		<div class="input-group">
		 	<h5>풍속</h5>
  			<input type="text">
  				<span class="input-group-text">km/h</span>
		</div>
		</form>
	</div>
	
</body>
</html>