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
<link rel="stylesheet" href="assets/css/Main_login.css">

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
						<li><a href="My_body.jsp">내 몸 관리</a></li>
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
		<form action="#" method="post">
			<div id="pro_info" align="center">
				<h3 id = "pro_title">내 신체 정보 입력</h3>
				<fieldset class="field">
					<div class="in_field">
					<table>
						<tr align="center">
							<td class = "pro_info">신창</td>
							<td class = "pro_info">체중</td>
						</tr>
						<tr align="center">
							<td class = "pro_info"> <input type = "text" name = "" class = "pro_input"> </td>
							<td class = "pro_info"> <input type="text" name = "" class = "pro_input"> </td>
						</tr>
						<tr>
						<td><br></td>
						</tr>
						<tr align="center">
							<td class = "pro_info">허리 둘레</td>
							<td class = "pro_info">엉덩이 둘레</td>
						</tr>
						<tr align="center">
							<td class = "pro_info"> <input type = "text" name = "" class = "pro_input"> </td>
							<td class = "pro_info"> <input type="text" name = "" class = "pro_input"> </td>
						</tr>
					</table>
					</div>
					<div id = "result_input">
					<input type="submit" value = "결과보기" id = "result_button">
					</div>
				</fieldset>
			</div>
		</form>
		<section>
			<div id="features-section" class="pad-sec">
				<div class="container">
					<div class="title-section text-center animated out"
						data-animation="fadeInUp" data-delay="0">
						<div class="row">
							<div class="col-sm-8 col-sm-offset-2">
								<h2>What we do?</h2>
								<hr>
								<p>키, 체중, 허리둘레, 몸무게를 입력하면 7가지의 비만도 검사를 할 수 있습니다.</p>
							</div>
							<!-- edn col-sm-8 -->
						</div>
						<!-- End row -->
					</div>
					<!-- end title-section -->
					<div class="row">
						<div class="col-md-3 without-padding">
							<div class="left-features-services">
								<ul class="features-list">
									<!-- feature -->
									<li>
										<div class="left-features-box animated out"
											data-animation="fadeInLeft" data-delay="0">

											<div class="features-box-content">
												<h6>BMI</h6>
												<p>어떻게 재는지랑 이런거 써주세요</p>
											</div>
											<!-- end features-box-content -->
										</div> <!-- end left-features-box -->
									</li>
									<!-- feature -->
									<li>
										<div class="left-features-box animated out"
											data-animation="fadeInLeft" data-delay="0">
											<div class="features-box-content">
												<h6>RFM</h6>
												<p>어떻게 재는지랑 이런거 써주세요</p>
											</div>
											<!-- end features-box-content -->
										</div> <!-- end left-features-box -->
									</li>
									<!-- feature -->
									<li>
										<div class="left-features-box animated out"
											data-animation="fadeInLeft" data-delay="0">
											<div class="features-box-content">
												<h6>BMR</h6>
												<p>어떻게 재는지랑 이런거 써주세요</p>
											</div>
											<!-- end features-box-content -->
										</div> <!-- end left-features-box -->
									</li>
									<li>
										<div class="left-features-box animated out"
											data-animation="fadeInLeft" data-delay="0">
											<div class="features-box-content">
												<h6>BAI</h6>
												<p>어떻게 재는지랑 이런거 써주세요</p>
											</div>
											<!-- end features-box-content -->
										</div> <!-- end left-features-box -->
									</li>
								</ul>
								<!-- end features-list -->
							</div>
							<!-- end left-features-service -->
						</div>
						<!--  end col-md-3 -->

						<div class="col-md-6">
							<div class="features-image animated out"
								data-animation="fadeInUp" data-delay="0">
								<img src="assets/images/body.jpg" alt="">
							</div>
							<!-- end features-image -->
						</div>
						<!-- end col-md-6 -->

						<div class="col-md-3 without-padding">
							<div class="right-features-services">
								<ul class="features-list">
									<!-- feature -->
									<li>
										<div class="right-features-box animated out"
											data-animation="fadeInRight" data-delay="0">
											<div class="features-box-content">
												<h6>WHR</h6>
												<p>어떻게 재는지랑 이런거 써주세요</p>
											</div>
										</div>
									</li>
									<!-- feature -->
									<li>
										<div class="right-features-box animated out"
											data-animation="fadeInRight" data-delay="0">
											<div class="features-box-content">
												<h6>WHtR</h6>
												<p>어떻게 재는지랑 이런거 써주세요</p>
											</div>
										</div>
									</li>
									<!-- feature -->
									<li>
										<div class="right-features-box animated out"
											data-animation="fadeInRight" data-delay="0">
											<div class="features-box-content">
												<h6>PIBW</h6>
												<p>어떻게 재는지랑 이런거 써주세요</p>
											</div>
										</div>
									</li>
								</ul>
								<!-- end features-list -->
							</div>
						</div>
						<!-- end col-md-3 -->

					</div>
					<!-- end row -->
				</div>
				<!-- end container -->
			</div>
		</section>
		<!-- End features-section -->

		<!-- Video section
    ================================================== -->


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