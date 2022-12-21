package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Join_DTO;
import model.PG_DAO;

@WebServlet("/Join_Service")
public class Join_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// request 인코딩
		request.setCharacterEncoding("utf-8");

		// 회원가입 할때 필요한 데이터 가져와서 Member_DTO에 담기
		// 회원가입 정보를 담은 Member_DTO를 Member_DAO로 DB에 전송하기
		Join_DTO j_dto = new Join_DTO();
		PG_DAO dao = new PG_DAO();

		// pw해시화 이후 dto 에 담기
		String hash_pw = request.getParameter("pw");
		j_dto.setId(request.getParameter("id"));
		j_dto.setPw(hash_pw);
		j_dto.setFull_name(request.getParameter("full_name"));
		j_dto.setB_year(Integer.valueOf(request.getParameter("b_year")));
		j_dto.setB_month(Integer.valueOf(request.getParameter("b_month")));
		j_dto.setB_day(Integer.valueOf(request.getParameter("b_day")));
		j_dto.setSex(Integer.valueOf(request.getParameter("sex")));

		// 회원가입 메소드 실행
		int row = dao.join(j_dto);

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
