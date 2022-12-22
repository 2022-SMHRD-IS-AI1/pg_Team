package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Logout_Service")
public class Logout_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 로그아웃하면 회원의 정보 세션 삭제
		HttpSession session = request.getSession();
		session.removeAttribute("user_info");
		session.removeAttribute("body_info");

		RequestDispatcher rd = request.getRequestDispatcher("");
		rd.forward(request, response);
	}

}
