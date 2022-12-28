package controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;

//github.com/2022-SMHRD-IS-AI1/pg_Team.git

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import model.User_DTO;
import model.Info_DAO;
import security.SHA256;

@WebServlet("/Join_Service")
public class Join_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// request 인코딩
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		// 세션 초기화
		try {
			session.removeAttribute("fail_code");
		} catch (Exception e) {
		}

		// 보안, DAO 객체 생성
		SHA256 sha256 = new SHA256();
		Info_DAO dao = new Info_DAO();

		String pw = request.getParameter("pw");
		String pw_c = request.getParameter("pw_c");
		int fail_code = 0;

		// pw, pw_c가 다르면 돌아가라 애송이
		if (!pw.equals(pw_c)) {
			// 실패코드 1 : 입력한 pw와 확인 pw가 서로 다르다.
			session.setAttribute("fail_code", 1);
			fail_code = 1;
		}

		// pw 해시화
		String hash_pw = "";
		try {
			hash_pw = sha256.encrypt(pw);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		String id = request.getParameter("id");
		String full_name = request.getParameter("full_name");
		String email = request.getParameter("email");
		int b_year = Integer.valueOf(request.getParameter("b_year"));
		int b_month = Integer.valueOf(request.getParameter("b_month"));
		int b_day = Integer.valueOf(request.getParameter("b_day"));
		int sex = Integer.valueOf(request.getParameter("sex"));
		User_DTO j_dto = new User_DTO(id, hash_pw, full_name, email, b_year, b_month, b_day, sex);

		// 회원가입 메소드 실행
		int row = dao.join(j_dto);

		// ID 중복확인

		String nextPage = "";
		if (row == 1) {
			// 로그인에 성공하면 실패코드 세션 삭제
			session.removeAttribute("fail_code");
			nextPage = "Main.jsp";
		} else {
			// 실패코드 0 : 중복된 아이디가 존재한다.
			// 실패코드 1 : 비밀번호가 서로다르다.
			session.setAttribute("fail_code", fail_code == 0 ? 0 : 1);
			nextPage = "join.jsp";
		}
		// 회원가입에 실패하면 다시 회원가입
		// 회원가입에 성공하면 메인화면
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);
	}
}
