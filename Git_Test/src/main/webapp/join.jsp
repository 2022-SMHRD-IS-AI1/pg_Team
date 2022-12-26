<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up</title>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
<link rel="stylesheet" href="css/join.css">
</head>
<body>
	<%
	String join_str = "가입을 통해 더 다양한 서비스를 만나보세요!";
	int check = 0;
	try {
		check = Integer.valueOf(request.getParameter("check"));
		if (check == 0) {
			join_str = "중복된 아이디가 존재합니다.";
		} else {
			join_str = "비밀번호가 서로 일치하지 않습니다.";
		}
	} catch (Exception e) {
		System.out.println("그 뭐냐 처음 들어와서 회원가입 실패 코드가 아직 없음ㅇㅇ");
	} finally {
	}
	%>
	<div class="container">
		<div class="content">
			<!-- HEADER -->
			<header>
				<div id="title">
					<h2>회원가입</h2>
					<h3><%=join_str%></h3>
				</div>
			</header>

			<!-- INPUT -->
			<form action="Join_Service" method="post">
				<section>
					<div class="info" id="info__id">
						<div id="id-input">
							<input name="id" class="box" type="text"
								placeholder="아이디를 입력해주세요." required="required" />
						</div>
					</div>
					<div class="info" id="info__pw">
						<input name="pw" class="box" type="password"
							placeholder="비밀번호를 입력해주세요." required="required" />
					</div>
					<div class="info" id="info__pwRe">
						<input name="pw_c" class="box" type="password"
							placeholder="비밀번호를 재입력해주세요." required="required" />
					</div>
					<div class="info" id="info__email">
						<input name="email" class="box" type="email"
							placeholder="이메일을 입력해주세요." required="required" />
					</div>
					<div class="info" id="info__birth">
						<div id="birth-flex" required="required">
							<input id="year_input" class="box" type="number" name="b_year"
								placeholder="년"> <select class="box" name="b_month"
								placeholder="월" id=s_m>
								<option>월</option>
								<%
								for (int i = 1; i <= 12; i++) {
								%>
								<option value="1"><%=i%></option>
								<%
								}
								%>
							</select> <input id="day_input" class="box" type="number" name="b_day"
								placeholder="일">
						</div>
					</div>
					<!-- <div id="print-date"></div> -->
					<div class="info" id="info__name">
						<input name="full_name" class="box" type="text"
							placeholder="이름을 입력해주세요." required="required">
					</div>
					<div class="info" id="info__sex" style="font-size: 12pt;"
						align="center">
						<span class=ra_man> 남성<input class="radio_input" name="sex"
							class="box" type="radio" value="0"></span> <span> 여성<input
							class="radio_input" name="sex" class="box" type="radio" value="1"></span>
					</div>
				</section>
				<div id="sec_bot">
					<div id="result-fail"></div>
					<!-- <input type = "submit" valeu ="회원가입"> -->
					<button id="submit">가입하기</button>
					<div class="exist" align="right">
						<span>이미 회원이신가요?</span> <a href="login.jsp">로그인 하러가기</a>
					</div>
			</form>
		</div>
	</div>
	</div>
</body>
</html>