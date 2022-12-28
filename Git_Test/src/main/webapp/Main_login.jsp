<%@page import="model.User_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Physical_gallery</title>
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,500,300,700'
	rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Crimson+Text:400,600"
	rel="stylesheet" type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/Main_login.css?">
<link rel="stylesheet" href="assets/css/slides.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/et-line-font/style.css">
<link rel="stylesheet" href="assets/css/bxslider/jquery.bxslider.css">
<link rel="stylesheet" href="assets/css/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="assets/css/owl-carousel/owl.theme.css">
<link rel="stylesheet"
	href="assets/css/owl-carousel/owl.transitions.css">
<link rel="stylesheet"
	href="assets/css/magnific-popup/magnific-popup.css">

</head>
<body>

	<div id="preloader">
		<div id="loading-animation">&nbsp;</div>
	</div>

	<header class="header">
		<nav class="navbar navbar-default navbar-static-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navigation-nav">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" id=physical href="Main_login.jsp">Physical
						gallery</a>
				</div>

				<%
				User_DTO user_info = (User_DTO) session.getAttribute("user_info");
				String full_name = user_info.getFull_name();
				%>
				<div class="collapse navbar-collapse" id="navigation-nav">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="My_page.jsp"><%=full_name%>님 환영합니다.</a></li>
						<!-- 윤제 로그인하면 아이디로 바껴야 함 -->
						<li><a href="My_body.jsp">내 몸 관리</a></li>
						<li><a href="disease.jsp">비만 관련 질병</a></li>
						<li><a href="Member_board.jsp">게시판</a></li>
						<li><a href="Main.jsp">로그아웃</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<div id="wrapper">

		<form action="Upload_Service" method="post">
			<div id="pro_info" align="center">
				<h3 id="pro_title">내 신체 정보 입력</h3>
				<fieldset class="field">
					<div class="in_field">
						<table id="input_table">

							<tr align="center" height="50px">
								<td class="pro_info"><strong>신장</strong></td>
								<td class="pro_info"><strong>체중</strong></td>
								<td class="pro_info"><strong>허리 둘레</strong></td>
								<td class="pro_info"><strong>엉덩이 둘레</strong></td>
							</tr>
							<tr align="center">
								<td class="pro_info"><input placeholder="cm" type="number"
									name="height" class="pro_input" required="required" step="0.1">
								</td>
								<td class="pro_info"><input placeholder="kg" type="number"
									name="mass" class="pro_input" required="required" step="0.1">
								</td>
								<td class="pro_info"><input placeholder="cm" type="number"
									name="waist" class="pro_input" required="required" step="0.1">
								</td>
								<td class="pro_info"><input placeholder="cm" type="number"
									name="hip" class="pro_input" required="required" step="0.1">
								</td>
							</tr>
							<tr style="height: 50px;">
						</table>
					</div>
					<div id="result_input">
						<input type="submit" value="결과보기" id="result_button">
					</div>
				</fieldset>
			</div>
		</form>

		<!-- <img alt="" src="assets/images/bmi_img.jfif">
		<img alt="" src="assets/images/bmi_img.jfif">
		<img alt="" src="assets/images/bmi_img.jfif">
		<img alt="" src="assets/images/bmi_img.jfif">
		 <div class="slider"> -->

		<section>
			<div id="features-section" class="pad-sec">
				<div class="container">
					<div class="title-section text-center animated out"
						data-animation="fadeInUp" data-delay="0">
						<div class="row">
							<div class="col-sm-8 col-sm-offset-2">
								<h2>What we do?</h2>
								<hr>
								<p>키, 몸무게, 허리둘레, 엉덩이둘레를 입력하면 7가지의 비만도 검사를 할 수 있습니다.</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3 without-padding">
							<div class="left-features-services">
								<ul class="features-list">
									<li>
										<div class="left-features-box animated out"
											data-animation="fadeInLeft" data-delay="0">

											<div class="features-box-content">
												<h6>BMI</h6>
												<p>체질량지수라고 부르며 자신의 몸무게(kg)/신장(m)×신장(m)로 BMI가 25.0 이상부터는
													비만으로 판정합니다.</p>
											</div>
										</div>
									</li>
									<li>
										<div class="left-features-box animated out"
											data-animation="fadeInLeft" data-delay="0">
											<div class="features-box-content">
												<h6>RFM</h6>
												<p>상대지방지수라고 부르며 기준 수치는 64입니다. 공식은 64 - (20 ×
													(신장(m)/허리둘레(m)))입니다. 여성의 경우 12를 더한 76 - (20 ×
													(신장(m)/허리둘레(m)))입니다.</p>
											</div>
										</div>
									</li>
									<li>
										<div class="left-features-box animated out"
											data-animation="fadeInLeft" data-delay="0">
											<div class="features-box-content">
												<h6>BMR</h6>
												<p>기초대사율이라고 부르며 간단한 측정법은 0.75(1분 맥박수 + 0.74×맥폭)-72입니다.
													맥폭은 최고혈압과 최저혈압의 차를 말합니다. BMR이 10% 이내이면 정상범위, +10% 이상이면
													기초대사항진, -10% 이하이면 기초대사 저하라고 합니다.</p>
											</div>
										</div>
									</li>
									<li>
										<div class="left-features-box animated out"
											data-animation="fadeInLeft" data-delay="0">
											<div class="features-box-content">
												<h6>BAI</h6>
												<p>체지방지수(%)라고 부르며 키와 엉덩이둘레로 계산할 수 있습니다. 공식은
													(엉덩이둘레(cm)/신장(m)^1.5)-18입니다. 남성의 경우 8%~25% 정상, 여성은 21%~33%가
													정상입니다.</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>

						<div class="col-md-6">
							<div class="features-image animated out"
								data-animation="fadeInUp" data-delay="0">
								<img
									src="https://img.freepik.com/premium-vector/man-doing-exercises-with-dumbbells-illustration_108231-487.jpg"
									alt="">
							</div>
						</div>

						<div class="col-md-3 without-padding">
							<div class="right-features-services">
								<ul class="features-list">
									<li>
										<div class="right-features-box animated out"
											data-animation="fadeInRight" data-delay="0">
											<div class="features-box-content">
												<h6>WHR</h6>
												<p>복부지방률이라고 부르며 허리둘레(cm)/엉덩이둘레(cm) 비율로 세계보건기구에서는 남자는 WHR
													지수가 0.9이상, 여자는 0.85 이상일 때 복부 비만으로 기준하고 있습니다.</p>
											</div>
										</div>
									</li>
									<li>
										<div class="right-features-box animated out"
											data-animation="fadeInRight" data-delay="0">
											<div class="features-box-content">
												<h6>WHtR</h6>
												<p>체지방 분포를 측정하는 지표로 허리 둘레(cm)/키(cm)의 비율입니다. 남성은 0.62,
													여성은 5.57을 초과하면 비만입니다.</p>
											</div>
										</div>
									</li>
									<li>
										<div class="right-features-box animated out"
											data-animation="fadeInRight" data-delay="0">
											<div class="features-box-content">
												<h6>PIBW</h6>
												<p>체중대비 백분율입니다. 공식은 남성은 신장(m)×신장(m)×22, 여자는
													신장(m)×신장(m)×21입니다. 체중대비 백분율이 120% 이상이면 비만입니다.</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>


		<footer>
			<div id="footer-section" class="text-center">
				<div class="container">
					<div class="row">
						<div class="col-sm-8 col-sm-offset-2">
							<ul class="footer-social-links">
								<li><a href="#">Facebook</a></li>
								<li><a href="#">Twitter</a></li>
								<li><a href="#">instagram</a></li>
								<li><a href="#">youtube</a></li>
								<li><a href="#">Pinterest</a></li>
							</ul>
							<p class="copyright">
								Created By <a href="">Physical gallery</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>


	<div class="back-to-top">
		<i class="fa fa-angle-up fa-3x"></i>
	</div>
	<script src="assets/js/slides.js"></script>
	<script src="assets/js/jquery-1.11.3.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/jquery.appear.min.js"></script>
	<script src="assets/js/jquery.bxslider.min.js"></script>
	<script src="assets/js/jquery.owl.carousel.min.js"></script>
	<script src="assets/js/jquery.countTo.js"></script>
	<script src="assets/js/jquery.easing.1.3.js"></script>
	<script src="assets/js/jquery.imagesloaded.min.js"></script>
	<script src="assets/js/jquery.isotope.js"></script>
	<script src="assets/js/jquery.placeholder.js"></script>
	<script src="assets/js/jquery.smoothscroll.js"></script>
	<script src="assets/js/jquery.stellar.min.js"></script>
	<script src="assets/js/jquery.waypoints.js"></script>
	<script src="assets/js/jquery.fitvids.js"></script>
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<script src="assets/js/jquery.ajaxchimp.min.js"></script>
	<script src="assets/js/jquery.countdown.js"></script>
	<script src="assets/js/jquery.navbar-scroll.js"></script>
	<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script src="assets/js/jquery.gmaps.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>