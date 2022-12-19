package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Member_DAO {

	// DB 연결을 위한 객체
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	String name = null;

	// DB 연결
	public void getConn() {
		try {
			// 드라이버 클래스 동적로딩
			Class.forName("oracle.jdbc.OracleDriver");

			// DB와 연결 객체 생성
			String url = "여기는 스마트인재개발원 DB 서버임ㅇㅇ 미래의 서연이가 수정할 계획임";
			String username = "ㅇㅇ";
			String password = "ㅇㅇ";

			conn = DriverManager.getConnection(url, username, password);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 객체 종료
	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 회원가입 메소드
	// id, pw, full_name, year, month, day, sex
	public int join(Member_DTO dto) {
		int row = 0;
		try {
			// DB에 연결
			getConn();

			// SQL문 실행 준비
			String sql = "회원가입 sql문 적어라 서연아";
			psmt = conn.prepareStatement(sql);

			// 이미 존재하는 ID로 로그인해보고 로직 수정하기

			// 실행
			// 변화한 행의 개수 리턴
			row = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
	}

	// 로그인 메소드
	// id, pw
	public ArrayList<Member_DTO> login_member(Member_DTO dto) {
		ArrayList<Member_DTO> user_body_info = new ArrayList<>();
		try {
			// DB에 연결
			getConn();

			// SQL문 실행 준비
			String sql = "로그인 sql문 적어라 서연아";
			psmt = conn.prepareStatement(sql);

			// 실행
			// ResultSet 리턴
			rs = psmt.executeQuery();
			while (rs.next()) {
				// dto setter로 바꾸기
				Member_DTO result_dto = new Member_DTO();

				// 홈화면에 보여줄 DB에서 가져온 정보 날짜순으로 들고오기
				// arraylist에 유저의 모든 업로드 add(dto)
				user_body_info.add(dto);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return user_body_info;
	}

	// 신체정보 업로드 메소드
	// id, height, mass, waist, hip, (upload는 DB 서버시간 사용 나머지는 계산)
	public int upload(Member_DTO dto) {
		int row = 0;
		try {
			// DB에 연결
			getConn();

			String id = dto.getId();
			int sex = dto.getSex();
			double height = dto.getHeight();
			double mass = dto.getMass();
			double waist = dto.getWaist();
			double hip = dto.getHip();
			double BMI = mass / Math.pow(height / 100, 2);
			double RFM = (64 - 20 * (height / waist) + 10 * sex);
			double BAI = (hip / ((height / 100) * Math.sqrt(height)));
			double WHR = waist / hip;
			double WHtR = waist / height;

			// SQL문 실행 준비
			String sql = "INSERT INTO FROM MEMBER_BODY_INFO(ID , HEIGHT , MASS, WAIST, HIP, BMI , RFM , BAI , WHR , WHTR) VALUE (? , ? , ? , ? , ? , ? , ? , ? , ? , ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setDouble(2, height);
			psmt.setDouble(3, mass);
			psmt.setDouble(4, waist);
			psmt.setDouble(5, hip);
			psmt.setDouble(6, BMI);
			psmt.setDouble(7, RFM);
			psmt.setDouble(8, BAI);
			psmt.setDouble(9, WHR);
			psmt.setDouble(10, WHtR);

			// 실행
			// 변화한 행의 개수 리턴
			row = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
	}
	//
}
