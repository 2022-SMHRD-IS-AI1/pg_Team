<%@page import="java.util.ArrayList"%>
<%@page import="model.Body_DTO"%>
<%@page import="model.User_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
	Salient by TEMPLATE STOCK
	templatestock.co @templatestock
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html lang="en">
<head>

<%-- 박서연이 추가함 --%>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="./chart.js"></script>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Physical_gallery</title>

<!-- Custom Google fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,500,300,700'
	rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Crimson+Text:400,600"
	rel="stylesheet" type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600"
	rel="stylesheet" type="text/css">

<!-- Bootstrap CSS Style -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<!-- Template CSS Style -->
<link rel="stylesheet" href="assets/css/My_body.css???">

<!-- Animate CSS  -->
<link rel="stylesheet" href="assets/css/animate.css">

<!-- FontAwesome 4.3.0 Icons  -->
<link rel="stylesheet" href="assets/css/font-awesome.min.css">

<!-- et line font  -->
<link rel="stylesheet" href="assets/css/et-line-font/style.css">

<!-- BXslider CSS  -->
<link rel="stylesheet" href="assets/css/bxslider/jquery.bxslider.css">

<!-- Owl Carousel CSS Style -->
<link rel="stylesheet" href="assets/css/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="assets/css/owl-carousel/owl.theme.css">
<link rel="stylesheet"
	href="assets/css/owl-carousel/owl.transitions.css">

<!-- Magnific-Popup CSS Style -->
<link rel="stylesheet"
	href="assets/css/magnific-popup/magnific-popup.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>
<body>
	<%
	User_DTO user_info = (User_DTO) session.getAttribute("user_info");
	ArrayList<Body_DTO> body_info = (ArrayList<Body_DTO>) session.getAttribute("body_info");
	String full_name = user_info.getFull_name();
	%>

	<!-- Preload the Whole Page -->
	<div id="preloader">
		<div id="loading-animation">&nbsp;</div>
	</div>

	<!-- Navbar -->
	<header class="header">
		<nav class="navbar navbar-default navbar-static-top">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navigation-nav">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- 홈으로 돌아오게 -->
					<a class="navbar-brand" id=physical href="Main_login.jsp">Physical
						gallery</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navigation-nav">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="My_page.jsp"><%=full_name%>님 환영합니다.</a></li>
						<!-- 윤제 로그인하면 아이디로 바껴야 함 -->
						<li class="active"><a href="">내 몸 관리</a></li>
						<li><a href="disease.jsp">비만 관련 질병</a></li>
						<li><a href="Member_board.jsp">게시판</a></li>
						<li><a href="Main.jsp">로그아웃</a></li>
						<!-- 윤제 로그아웃하면 세션 삭제 -->
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container -->
		</nav>
	</header>
	<!-- End Navbar -->

	<div id="wrapper">

		<!-- Hero
  ================================================== -->
	<%
		for (Body_DTO b_dto : body_info) {
			System.out.println(b_dto.getBAI());
		}
	%>
	<!--a태그 누르면 이동하는거 -->
<div class = "scroll-container">
	<div class = b_info>
		<div class = "body_info">
		<div>
			<a href = "#BMI">BMI</a>
			<div class = "my_res">
				<h2>29.8%</h2>
				<div class = "compare">
					<div class = "good">▼BMI가 3% 감소했어요</div>
				</div>
			</div>
		</div>
		</div>
		<div class = "body_info" id = "info_bad">
			<a href = "#">몸무게</a>
			<div class = "my_res">
				<h2>76.8kg</h2>
				<div class = "compare">
				<div class = "bad">▲몸무게가 1kg 증가했어요</div>
				</div>
			</div>
		</div>
		<div class = "body_info">
			<a href = "#">허리둘레</a>
			<div class = "my_res">
				<h2>88.7cm</h2>
				<div class = "compare">
				<div class = "good">▼허리둘레가 1cm 감소했어요</div>
				</div>
			</div>
		</div>
		<div class = "body_info">
			<a href = "#">엉덩이 둘레</a>
			<div class = "my_res">
				<h2>103.9cm</h2>
				<div class = "compare">
				<div class = "good">▼엉덩이 둘레가 2cm 감소했어요</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 총평 -->
	<div class = "all_rating">
		<div class = "bmi_rating">
		<div class = "tool_tip">
			※ <span class = "tip_text"> BMI 결과 지표를 나타냅니다. </span>
		</div>
			<iframe src="chart_ex/gauge-grade.html" frameborder="0" style="width: 800px; height: 500px"></iframe>
		</div>
		<div class = "radar">
		<div class = "tool_tip">
			※ <span class="tip_text"> 키를 기준으로 한 표준 결과값과<br> 사용자의 결과값을 비교합니다. </span>
		</div>
			<iframe src="chart_ex/radar.html" frameborder="0" style="width: 800px; height: 500px"></iframe>
		</div>
	</div>
	<div class = "all_rating">
		<div class = "bmi_rating">
			<iframe src="chart_ex/gauge-grade_BAI.html" frameborder="0" style="width: 800px; height: 500px"></iframe>
		</div>
		<div class = "radar">
			<iframe src="chart_ex/gauge-grade_WHtR.html" frameborder="0" style="width: 800px; height: 500px"></iframe>
		</div>
	</div>
	
	<!-- 계속 입력한 사용자 신체 정보 -->
	<div class = "get_body">
		<div class = "get_info">
		<div class = "info_title">내 신체 정보</div>
		<iframe src="chart_ex/bar-y-category-stack.html" frameborder="0" style="width: 1300px; height: 600px"></iframe>
		</div>
	</div>
	<!-- 계속 입력한 사용자 정보를 바탕으로 나온 값 -->
	<div class = "get_res" style="margin-top:152px; margin-bottom: 135px;">
	<div id = "BMI" class="get_bmi">
	<div class = "bmi_title">내 비만도 정보</div>
	<div class = "tool_tip">
			※ <span class="tip_text"> WHR이 0.9 초과 시 복부비만에 해당합니다.</span>
		</div>
		<iframe src="chart_ex/line_chart.html" frameborder="0" style="width: 1300px; height: 600px"></iframe>
	</div>
	</div>
	
</div>
	
	
			



		<!-- Footer
    ================================================== -->
		<footer>
			<div id="footer-section" class="text-center">
				<div class="container">
					<div class="row">
						<div class="col-sm-8 col-sm-offset-2">

							<p class="copyright">
								Created By <a href="">Physical gallery</a>
							</p>
						</div>
						<!-- End col-sm-8 -->
					</div>
					<!-- End row -->
				</div>
				<!-- End container -->
			</div>
			<!-- End footer-section  -->
		</footer>
		<!-- End footer -->

	</div>
	<!-- End wrapper -->

	<!-- Back-to-top
  ================================================== -->
	<div class="back-to-top">
		<i class="fa fa-angle-up fa-3x"></i>
	</div>
	<!-- end back-to-top -->

	<!-- JS libraries and scripts -->
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