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
import security.ARIA;
import model.Info_DAO;

@WebServlet("/Upload_Service")
public class Upload_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");


		HttpSession session = request.getSession();
		User_DTO u_dto = (User_DTO) session.getAttribute("user_info");

		// id, height, mass, waist, hip
		double height = Double.valueOf(request.getParameter("height"));
		double mass = Double.valueOf(request.getParameter("mass"));
		double waist = Double.valueOf(request.getParameter("waist"));
		double hip = Double.valueOf(request.getParameter("hip"));

		Info_DAO dao = new Info_DAO();
		Body_DTO b_dto = new Body_DTO(height, mass, waist, hip);

		int row = dao.upload(u_dto, b_dto);
		ArrayList<Body_DTO> body_info = dao.reload(u_dto);
		if (row == 1) {
			// 신체정보가 잘 업로드되면 body_info 세션 수정
			session.setAttribute("body_info", body_info);
		} else {
			System.out.println("정보수정 실패");
		}
		String nextPage = "My_body.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);
	}

}
