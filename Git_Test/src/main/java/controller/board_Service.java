package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Board_DAO;
import model.Board_DTO;
import model.User_DTO;

@WebServlet("/board_Service")
public class board_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();

		User_DTO user_info = (User_DTO) session.getAttribute("user_info");
		String b_title = request.getParameter("b_title");
		String b_content = request.getParameter("b_content");

		Board_DTO dto = new Board_DTO(user_info.getId(), b_title, b_content);
		Board_DAO dao = new Board_DAO();

		int cnt = dao.write(dto);

		if (cnt > 0) {
			System.out.println("전송 성공");
		} else {
			System.out.println("전송 실패");
		}
		String nextPage = "Member_board.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);

	}

}
