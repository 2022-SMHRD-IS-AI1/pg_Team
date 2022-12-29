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

@WebServlet("/Update_Service")
public class Update_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		

		int b_num = Integer.valueOf(request.getParameter("b_num"));
		String b_title = request.getParameter("nb_title");
		String b_content = request.getParameter("nb_content");
		
		Board_DAO dao = new Board_DAO();
		Board_DTO dto = new Board_DTO(b_num, b_title, b_content);
		
		int result = dao.update(dto);
		
		String Next_Page = "";
		if(result > 0) {
			System.out.println("성공");
			Next_Page = "Member_board.jsp";
		}else {
			System.out.println("실패");
		}
		RequestDispatcher rd = request.getRequestDispatcher(Next_Page);
		rd.forward(request, response);
	}

}
