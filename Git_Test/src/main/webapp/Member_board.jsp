<%@page import="java.util.ArrayList"%>
<%@page import="model.Board_DAO"%>
<%@page import="model.Board_DTO"%>
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

	<!-- 페이징 처리 -->
	
	<%
	//게시판에 글이 있는지 확인
			Board_DAO dao = new Board_DAO();
			int cnt = dao.getCount();
			System.out.println(cnt);
			
			//한페이지에 보여줄 수 있는 글 개수 설정
			int pageSize = 5;
			//내가 몇페이지에 있는지 확인
			String pageNum = request.getParameter("pageNum");
			//페이지 정보가 없으면 내가 보는 페이지가 1페이지 이다.
			if(pageNum == null){
				pageNum = "1";
			}
			//시작행 번호 계산
			int currentPage = Integer.parseInt(pageNum);
			//가져와야 할 행의 번호
			int startRow = (currentPage-1)*pageSize + 1;
			int getend = cnt - ((currentPage-1)*pageSize);
			//끝행 번호 계산
			int getSize = getend-4;
			int endRow = currentPage*pageSize;
			
			//게시판 총 글의 수 출력
			System.out.println(getend);
			System.out.println(getSize);
			
			ArrayList boardList = null;
			boardList = dao.board_reload(getSize, getend);
			
	%>
	
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
				session.removeAttribute("board_success");
				%>
				<div class="collapse navbar-collapse" id="navigation-nav">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="My_page.jsp"><%=full_name%>님 환영합니다.</a></li>
						<!-- 윤제 로그인하면 아이디로 바껴야 함 -->
						<li><a href="My_body.jsp">내 몸 관리</a></li>
						<li><a href="disease.jsp">비만 관련 질병</a></li>
						<li class="active"><a href="Member_board.jsp">게시판</a></li>
						<li><a href="Main.jsp">로그아웃</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<div class="board_wrap">
		<div class="board_title">
			<strong>게시판</strong>
			<p>자신만의 다이어트 스킬을 자랑해보세요.</p>
		</div>
		<div class="board_list_wrap">
			<div class="board_list">
				<div class="top">
					<div class="num">번호</div>
					<div class="title">제목</div>
					<div class="writer">글쓴이</div>
					<div class="date">작성일</div>
					<div class="count">조회</div>
				</div>
				<div>

					<%
					
					//Board_DTO dto = new Board_DTO();
					//ArrayList<Board_DTO> list = new ArrayList<>();
					//dao = new Board_DAO();
					
					//list = dao.board_reload(startRow, pageSize);
					//list = dao.board_reload(0);
					

					
					%>

					<%
					for (int i = 0; i < boardList.size(); i++) {
						Board_DTO dto = (Board_DTO)boardList.get(i);
					%>
					<div class="num"><%=dto.getB_num()%></div>
					<div class="title">
						<a href="board_view.jsp?b_num=<%= dto.getB_num() %>&pageNum=<%=pageNum%>"><%=dto.getB_title()%></a>
					</div>
					<div class="writer"><%=dto.getID()%></div>
					<div class="date"><%=dto.getB_date()%></div>
					<div class="count"><%=dto.getB_no()%></div>

					<%
					}
					%>
				</div>
			</div>
			<div class="board_page">
			<%
				int pageBlock = 0;
				int startPage = 0;
				int endPage = 0;
				int pageCount = 0;
				if(cnt != 0){
					//페이지 개수처리
					pageCount = cnt/pageSize + (cnt%pageSize == 0? 0:1);
					//화면에 고정해 놓을 페이지 이동버튼 개수
					pageBlock = 4;
					startPage = ((currentPage-1)/pageBlock)*pageBlock + 1;
					endPage = startPage + pageBlock -1;
					if(endPage > pageCount){
						endPage = pageCount;
					}
				}
			%>
				<!-- <a class="bt first"><<</a> --> 
				<%
				if(startPage > pageBlock){
				%>
				<a href = "Member_board.jsp?pageNum=<%=startPage-pageBlock%>" class="bt prev"><</a> 
				<%} %>
				<%
				for(int i = startPage; i<=endPage; i++){
				%>
				<a href="Member_board.jsp?pageNum=<%=i %>" class="num on"><%=i %></a> 
				<%} %>
				<%
				if(endPage < pageCount){
				%>
				<a href = "Member_board.jsp?pageNum=<%= startPage+pageBlock%>"class="bt next">></a> 
				<%} %>
				<!-- <a class="bt last">>></a> -->
			</div>
			<div class="bt_wrap">
				<a href="board_write.jsp" class="on">글쓰기</a>
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