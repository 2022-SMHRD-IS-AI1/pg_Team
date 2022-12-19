package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Member_DAO;
import model.Member_DTO;

@WebServlet("/Join_Service")
public class Join_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// request 인코딩
		request.setCharacterEncoding("utf-8");

		// 회원가입 할때 필요한 데이터 가져와서 Member_DTO에 담기
		// 회원가입 정보를 담은 Member_DTO를 Member_DAO로 DB에 전송하기
		Member_DTO dto = new Member_DTO();
		dto.setId(request.getParameter("id"));
		dto.setPw(request.getParameter("pw"));
		dto.setFull_name(request.getParameter("full_name"));
		dto.setBirth_year(Integer.valueOf(request.getParameter("year")));
		dto.setBirth_month(Integer.valueOf(request.getParameter("month")));
		dto.setBirth_day(Integer.valueOf(request.getParameter("day")));
		dto.setSex(Integer.valueOf(request.getParameter("sex")));

		Member_DAO dao = new Member_DAO();
		int row = dao.join(dto);

		// ID 중복확인
		
		String nextPage = "";
		if (row == 1) {
			// row가 1이면 회원가입 정보가 1개 정확히 입력되어 성공한 것
			// 회원가입이 잘 되었다면 메인화면으로 다시 이동
			nextPage = "main.html";
		} else {
			// row가 1이 아니면 회원가입 정보가 입력되지 않았거나 잘못 입력된 것
			// 회원가입이 잘못 되었다면 다시 회원가입 화면을 띄워주고 문구 출력
			nextPage = "join.html";
		}

	}

}
