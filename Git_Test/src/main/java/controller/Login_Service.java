package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Body_DTO;
import model.User_DTO;
import model.Info_DAO;
import security.SHA256;

@WebServlet("/Login_Service")
public class Login_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 요청값에 대한 인코딩
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		// 세션 삭제
		try {
			session.removeAttribute("fail_code");
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 데이터 가져오기
		SHA256 sha256 = new SHA256();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		// pw 해시화
		String hash_pw = "";
		try {
			hash_pw = sha256.encrypt(pw);
		} catch (Exception e) {
			e.printStackTrace();
		}

		Info_DAO dao = new Info_DAO();
		User_DTO j_dto = new User_DTO(id, hash_pw);
		User_DTO user_info = dao.login(j_dto);
		ArrayList<Body_DTO> body_info = dao.reload(j_dto);

		// 로그인 결과
		String nextPage = "";
		if (user_info.getId() != null) {
			// 로그인에 성공하면 실패코드 세션 삭제
			// 회원 정보 세션으로 저장
			nextPage = "Main_login.jsp";
			session.removeAttribute("fail_code");
			// 로그인에 성공하면 비밀번호를 제외한 회원정보를 반환
			// 로그인에 성공하면 회원의 모든 신체 기록을 반환
			session.setAttribute("user_info", user_info);
			session.setAttribute("body_info", body_info);
		} else {
			// 실패코드 -1 : id, pw 불일치
			nextPage = "login.jsp";
			session.setAttribute("fail_code", -1);
		}
		// 실패하면 다시 로그인, 성공하면 유저 개인 페이지로 이동
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);
	}
}
