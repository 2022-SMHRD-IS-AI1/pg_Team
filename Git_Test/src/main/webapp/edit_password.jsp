<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Physical gallery</title>
<link rel="stylesheet" href="css/edit_password.css">
</head>
<body>
	<div class="container">
		<div class="content">
			<header>
				<div class="title">
					<h2>비밀번호 입력</h2>					
				</div>
			</header>
			<section class="login-form">
				<form action="board_edit.jsp" method="post">
					<div class="int-area">
						<input type="password" class="box" id="pw" autocomplete="off" required
						placeholder="PASSWORD">
					</div>
					<div class="btn-area">
						<button id="btn" class="box" type="submit" href="board_edit.jsp">수정하기</button>
					</div>
				</form>
			</section>
		</div>
	</div>
</body>
