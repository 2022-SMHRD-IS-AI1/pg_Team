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
<link rel="stylesheet" href="assets/css/My_body.css">

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
					<a class="navbar-brand" id=physical href="Main.jsp">Physical
						gallery</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navigation-nav">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="My_page.jsp">User님 환영합니다.</a></li>
						<!-- 윤제 로그인하면 아이디로 바껴야 함 -->
						<li><a href="">내 몸 관리</a></li>
						<li><a href="disease.jsp">비만 관련 질병</a></li>
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
	<div class = "y_container">
		<div class = "y_header">
			<h1>USER 님은 복부 비만 입니다.</h1>
		</div>
		<div class = "y_menu">
			<div class="user_info">
				<table class="input_info">
					<img src="https://cdn-icons-png.flaticon.com/512/10/10522.png">
					<tr>
						<td>키 </td>
						<td><input type="text" name="info"></td>
					</tr>
					<tr>
						<td>몸무게 </td>
						<td><input type="text" name="info"></td>
					</tr>
					<tr>
						<td>허리둘레 </td>
						<td><input type="text" name="info"></td>
					</tr>
				</table>				
			</div>
		</div>
		<div class = "y_main">main ~~차트 자리~~</div>
		<div class = "y_top">
			<div class="mean">
				<h5>정의</h5>
			</div>
			<div class="info">
				<p>복부비만은 배에 과도한 지방이 축적된 상태로, 한국인 허리둘레 기준으로 남자 90cm(35.4인치), 여자 85cm(33.5인치) 이상인 경우에 해당된다.</p>
			</div>
		</div>
		<div class = "y_aside">
			<div class="mean">
				<h5>증상</h5>
			</div>
			<div class="info">
				<p>뚜렷한 증상이 없는 경우가 많다. 전체적으로 체중이 증가하면서 허리둘레가 늘어나 자각하게 되지만 체중이 정상인 경우에도 복부비만인 경우가 있다. 내장지방 축적으로 인해 횡격막이 과다 신장되어 호흡운동 시 폐의 움직임을 방해하면, 수면 중 코를 골다가 호흡을 멈추는 수면 무호흡증을 유발할 수 있다.</p>
			</div>
		</div>
		<div class = "y_bottom">
			<div class="mean">
				<h5>원인</h5>
			</div>
			<div class="info">
				<p>내장지방이 축적되는 이유는 나이의 증가, 과식, 운동 부족, 흡연, 유전적 영향 등이 복합적으로 관여하는 것으로 알려져 있다. 남자의 경우 군대에서 제대한 후 또는 결혼 직후이며, 여자가 복부 비만이 되는 시기는 폐경기 이후이다.</p>
			</div>
		</div>
		<div class = "y_footer">footer</div>
	</div>
	


		<!-- Footer
    ================================================== -->
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
								Created By <a
									href="">Physical gallery</a>
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