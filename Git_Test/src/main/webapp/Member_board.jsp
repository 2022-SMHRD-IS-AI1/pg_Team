<%@page import="java.util.ArrayList"%>
<%@page import="model.Board_DAO"%>
<%@page import="model.Board_DTO"%>
<%@page import="model.Join_DTO"%>
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
				Join_DTO user_info = (Join_DTO) session.getAttribute("user_info");
				String full_name = user_info.getFull_name();
				System.out.print(user_info.toString());
				%>
				<div class="collapse navbar-collapse" id="navigation-nav">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="My_page.jsp"><%=full_name%>님 환영합니다.</a></li>
						<!-- 윤제 로그인하면 아이디로 바껴야 함 -->
						<li><a href="My_body.jsp">내 몸 관리</a></li>
						<li><a href="disease.jsp">비만 관련 질병</a></li>
						<li class="active"><a href="Member_borde.jsp">게시판</a></li>
						<li><a href="Main.jsp">로그아웃</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<div class = "board_wrap">
		<div class = "board_title">
			<strong>게시판</strong>
			<p>자신만의 다이어트 스킬을 자랑해보세요.</p>
		</div>
		<div>
			<select class = "title_sort">
				<option>정렬하기</option>
				<option>오름차순</option>
				<option>내림차순</option>
			</select>
		</div>
		<div class = "board_list_wrap">
			<div class = "board_list">
				<div class = "top">
					<div class = "num">번호</div>
					<div class = "title">제목</div>
					<div class = "writer">글쓴이</div>
					<div class = "date">작성일</div>
					<div class = "count">조회</div>
				</div>
				<div>
				<%
				Board_DTO dto = new Board_DTO();
				ArrayList<Board_DTO> list = new ArrayList<>(); 
				Board_DAO dao = new Board_DAO();
				
				list = dao.getList();
				for(int i = 0; i<list.size(); i++){
					System.out.println(list.get(i).getID());
				}
				%>
				
				<% for(int i = 0; i<list.size(); i++){ %>
					<div class = "num"><%=list.get(i).getB_num()%></div>
					<div class = "title"><a href = "board_view.jsp?b_num="><%=list.get(i).getB_title()%></a></div>
					<div class = "writer"><%=list.get(i).getID()%></div>
					<div class = "date"><%=list.get(i).getB_date()%></div>
					<div class = "count">33</div>
				
				<%} %>
				</div>
			</div>
			<div class = "board_page">
				<a class = "bt first"><<</a>
				<a class = "bt prev"><</a>
				<a href = "#" class = "num on">1</a>
				<a href = "#" class = "num">2</a>
				<a href = "#" class = "num">3</a>
				<a href = "#" class = "num">4</a>
				<a href = "#" class = "num">5</a>
				<a class = "bt next">></a>
				<a class = "bt last">>></a>
			</div>
			<div class = "bt_wrap">
				<a href="board_write.jsp" class = "on">등록</a>
				<!-- <a href="#">수정</a> -->
			</div>
		</div>
	</div>

	<div id="wrapper">
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