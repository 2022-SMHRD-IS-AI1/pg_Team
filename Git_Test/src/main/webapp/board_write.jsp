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
<link rel="stylesheet" href="assets/css/Member_board.css">
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
						<li><a href="My_page.jsp"><%=full_name%>??? ???????????????.</a></li>
						<!-- ?????? ??????????????? ???????????? ????????? ??? -->
						<li><a href="My_body.jsp">??? ??? ??????</a></li>
						<li><a href="disease.jsp">?????? ?????? ??????</a></li>
						<li class="active"><a href="Member_board.jsp">?????????</a></li>
						<li><a href="Main.jsp">????????????</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<div class="board_wrap">
		<div class="board_title">
			<strong>?????????</strong>
			<p>???????????? ???????????? ????????? ??????????????????.</p>
		</div>
		<div class="board_list_wrap">
			<form action="board_Service" method="post">
				<div class="board_write">
					<div class="y_title">
						<dl>
							<dt>??????</dt>
							<dd>
								<input type="text" name="b_title" placeholder="?????? ??????"
									required="required">
							</dd>
						</dl>
					</div>
					<div class="cont">
						<textarea name="b_content" placeholder="?????? ??????" required="required"></textarea>
					</div>
				</div>
				<div class="bt_wrap">
					<input type="submit" class = "board_input" value = "??????">
					<!-- <a href="Member_board.jsp" class="on">??????</a>  -->
					<a href="Member_board.jsp">??????</a>
				</div>
			</form>
		</div>
	</div>

	<div id="wrapper">
		<footer>
			<div id="footer-section" class="text-center">
				<div class="container">
					<div class="row">
						<div class="col-sm-8 col-sm-offset-2">
							
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