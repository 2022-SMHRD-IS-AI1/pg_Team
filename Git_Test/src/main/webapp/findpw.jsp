<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Physical_gallery</title>
<link rel="stylesheet" href="css/findpw.css?">
</head>
<body>
	<div class="container">
		<div class="content">
			<div class="title">
				<h2>비밀번호 찾기</h2>
				<span>이메일로 새로운 비밀번호가 전송됩니다</span>
			</div>
			<section class="findpw-form">
				<form action="" method="post">
					<div class="int-area">
						<input type="text" class="box" id="id" autocomplete="off" required
						placeholder="아이디를 입력해주세요">
					</div>
					<div class="int-area">
						<input type="text" class="box" id="email" autocomplete="off" required
						placeholder="이메일을 입력해주세요">
					</div>
					<div class="btn-area">
						<button id="btn" name="btn" type="submit">비밀번호 전송</button>
					</div>
				</form>
			</section>
		</div>
	</div>
</body>
</html>