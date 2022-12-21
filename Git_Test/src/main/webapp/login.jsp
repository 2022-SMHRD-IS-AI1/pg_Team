<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
	<section class="login-form">
		<h1>로그인</h1>
		<form action="" method="post">
			<div class="int-area">
				<input type="text" name="id" id="id" autocomplete="off" required>
				<label for="id">USER NAME</label>
			</div>
			<div class="int-area">
				<input type="password" name="pw" id="pw" autocomplete="off" required>
				<label for="id">PASSWORD</label>
			</div>
			<div class="btn-area">
				<button id="btn" name="btn" type="submit">LOGIN</button>
			</div>
		</form>
		<div class="caption">
			<p>비밀번호를 잊어버리셨나요? <a href="findpw.html">비밀번호 찾기</a></p>
			
		</div>
	</section>
	
</body>