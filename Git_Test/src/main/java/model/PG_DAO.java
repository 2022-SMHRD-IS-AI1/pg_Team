package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import security.SHA256;

public class PG_DAO {

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
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String username = "cgi_4_1220_4";
			String password = "smhrd4";
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
	public int join(Join_DTO j_dto) {
		int row = 0;
		try {
			// DB에 연결
			getConn();
			// SQL문 실행 준비
			String sql = "INSERT INTO MEMBER_JOIN_INFO VALUES(?,?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, j_dto.getId());
			psmt.setString(2, j_dto.getPw());
			psmt.setString(3, j_dto.getFull_name());
			psmt.setString(4, j_dto.getEmail());
			psmt.setInt(5, j_dto.getB_year());
			psmt.setInt(6, j_dto.getB_month());
			psmt.setInt(7, j_dto.getB_day());
			psmt.setInt(8, j_dto.getSex());

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

	// 로그인 메소드 (업로드한 모든 정보도 가져와야한다)
	public Join_DTO login(Join_DTO j_dto) {
		Join_DTO result_dto = new Join_DTO();
		try {
			// DB에 연결
			getConn();

			// SQL문 실행 준비
			/**
			 * 2022/12/21에 사는 미래의 박서연에게 이거 sql파일에 뷰로 만들어서 DB에 저장하고 View로 query 문 다시 짜라
			 */
			// 대충 로그인한 아이디로 조건 줘서 회원 정보랑 신체 정보 조인한 이후 업로드한 정보 가져오겠다는 Query
			String sql = "SELECT * FROM MEMBER_JOIN_INFO J RIGHT OUTER JOIN MEMBER_BODY_INFO B ON J.ID = B.ID WHERE J.ID = ? AND J.PW = ?";
			// 로그인 할때 pw를 hash pw로 바꿔서 sql query에 담기

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, j_dto.getId());
			psmt.setString(2, j_dto.getPw());

			// 실행
			// ResultSet 리턴
			rs = psmt.executeQuery();
			// pw를 제외한 회원 정보 가져오기
			result_dto.setId(rs.getString("ID"));
			result_dto.setFull_name(rs.getString("FULL_NAME"));
			result_dto.setEmail(rs.getString("EMAIL"));
			result_dto.setB_year(rs.getInt("B_YEAR"));
			result_dto.setB_month(rs.getInt("B_MONTH"));
			result_dto.setB_day(rs.getInt("B_DAY"));
			result_dto.setSex(rs.getInt("SEX"));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result_dto;
	}

	// 신체정보 모두 가져오는 메소드
	public ArrayList<Body_DTO> reload(Join_DTO j_dto) {
		ArrayList<Body_DTO> user_info = new ArrayList<>();
		try {
			// DB에 연결
			getConn();

			// SQL문 실행 준비
			String sql = "SELECT * FROM MEMBER_JOIN_INFO J RIGHT OUTER JOIN MEMBER_BODY_INFO B ON J.ID = B.ID WHERE J.ID = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, j_dto.getId());

			while (rs.next()) {
				Body_DTO b_dto = new Body_DTO();

				b_dto.setHeight(rs.getDouble("HEIGHT"));
				b_dto.setMass(rs.getDouble("MASS"));
				b_dto.setWaist(rs.getDouble("WAIST"));
				b_dto.setHip(rs.getDouble("HIP"));
				b_dto.setUpload(rs.getString("UPLOAD"));
				b_dto.setBMI(rs.getDouble("BMI"));
				b_dto.setRFM(rs.getDouble("RFM"));
				b_dto.setBAI(rs.getDouble("BAI"));
				b_dto.setWHR(rs.getDouble("WHR"));
				b_dto.setWHTR(rs.getDouble("SHTR"));

				user_info.add(b_dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return user_info;

	}

	// 신체정보 업로드 메소드
	// id, height, mass, waist, hip, (upload는 DB 서버시간 사용 나머지는 계산)
	public int upload(Join_DTO j_dto, Body_DTO b_dto) {
		int row = 0;
		try {
			// DB에 연결
			getConn();

			double height = b_dto.getHeight();
			double mass = b_dto.getMass();
			double waist = b_dto.getWaist();
			double hip = b_dto.getHip();
			double BMI = mass / Math.pow(height / 100, 2);
			double RFM = (64 - 20 * (height / waist) + 12 * j_dto.getSex());
			double BAI = (hip / (height / 100) * Math.sqrt(height));
			double WHR = waist / hip;
			double WHtR = waist / height;

			// SQL문 실행 준비
			String sql = "INSERT INTO FROM MEMBER_BODY_INFO(ID , HEIGHT , MASS, WAIST, HIP, BMI , RFM , BAI , WHR , WHTR) VALUES (? , ? , ? , ? , ? , ? , ? , ? , ? , ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, j_dto.getId());
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
}
