<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="css/login.css???">
</head>
<body>
	<div class="container">
		<div class="content">
			<header>
				<div class="title">
					<h2>로그인</h2>					
				</div>
			</header>
			<section class="login-form">
				<form action="Login_Service" method="post">
					<div class="int-area">
						<input type="text" class="box" name="id" autocomplete="off" required
						placeholder="USER NAME">
					</div>
					<div class="int-area">
						<input type="password" class="box" name="pw" autocomplete="off" required
						placeholder="PASSWORD">
					</div>
					<div class="btn-area">
						<button id="btn" class="box" type="submit">로그인</button>
					</div>
				</form>
				<div class="caption">
					<p>비밀번호를 잊어버리셨나요? <a href="findpw.jsp">비밀번호 찾기</a></p>		
				</div>
			</section>
		</div>
	</div>
</body>
