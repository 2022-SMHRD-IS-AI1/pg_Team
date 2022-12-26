<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Physical_gallery</title>
<link rel="stylesheet" href="css/findpw.css">
</head>
<body>
		<section class="findpw-form">
			<fieldset id="field">
				<div id="h1_p">
					<h1>비밀번호 찾기</h1>
					<p>이메일로 새로운 비밀번호가 전송됩니다.</p>
				</div>
				<form action="" method="post">
					<div class="int-area">
						<input type="text" name="id" id="id" autocomplete="off" required>
						<label name="id">아이디</label>
					</div>
					<div class="int-area">
						<input type="text" name="email" id="email" autocomplete="off"
							required> <label name="id">이메일</label>
					</div>
					<div class="btn-area">
						<button id="btn" name="btn" type="submit">비밀번호 전송</button>
					</div>
				</form>
			</fieldset>
		</section>
</body>
</html>