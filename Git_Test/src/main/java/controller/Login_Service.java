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
import model.Join_DTO;
import model.PG_DAO;
import security.SHA256;

@WebServlet("/Login_Service")
public class Login_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 요청값에 대한 인코딩
		request.setCharacterEncoding("utf-8");
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
		Join_DTO j_dto = new Join_DTO(id, hash_pw);

		PG_DAO dao = new PG_DAO();
		ArrayList<Body_DTO> user_info = dao.login(j_dto);

		// 로그인 결과
		String nextPage = "";
		if (user_info != null) {
			// 로그인된 회원 정보 저장
			nextPage = "";
			HttpSession session = request.getSession();
			session.setAttribute("user_info", user_info);
			RequestDispatcher rd = request.getRequestDispatcher(nextPage);
			rd.forward(request, response);
		} else {
		}
	}

}
