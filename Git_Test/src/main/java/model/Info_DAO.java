package model;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import security.ARIA;
import security.SHA256;

public class Info_DAO {

	// DB 연결을 위한 객체
	Connection conn = null;
	PreparedStatement psmt = null;
	// Statement smt = null;
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
	public int join(User_DTO u_dto) {
		int row = 0;
		try {
			// DB에 연결
			getConn();
			// SQL문 실행 준비
			String sql = "INSERT INTO MEMBER_JOIN_INFO VALUES(?,?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, u_dto.getId());
			psmt.setString(2, u_dto.getPw());
			psmt.setString(3, u_dto.getFull_name());
			psmt.setString(4, u_dto.getEmail());
			psmt.setInt(5, u_dto.getB_year());
			psmt.setInt(6, u_dto.getB_month());
			psmt.setInt(7, u_dto.getB_day());
			psmt.setInt(8, u_dto.getSex());

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
	public User_DTO login(User_DTO u_dto) {
		User_DTO result_dto = new User_DTO();
		try {
			// DB에 연결
			getConn();

			// SQL문 실행 준비
			/**
			 * 2022/12/21에 사는 미래의 박서연에게 이거 sql파일에 뷰로 만들어서 DB에 저장하고 View로 query 문 다시 짜라
			 */
			// 대충 로그인한 아이디로 조건 줘서 회원 정보랑 신체 정보 조인한 이후 업로드한 정보 가져오겠다는 Query
			String sql = "SELECT * FROM MEMBER_JOIN_INFO WHERE ID = ? AND PW = ?";
			// hash는 Service에서 다 했다.

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, u_dto.getId());
			psmt.setString(2, u_dto.getPw());

			// 실행
			// ResultSet 리턴
			rs = psmt.executeQuery();
			// pw를 제외한 회원 정보 가져오기
			if (rs.next()) {
				System.out.println(rs.getString("ID") + rs.getString("FULL_NAME") + rs.getString("EMAIL"));
				result_dto.setId(rs.getString("ID"));
				result_dto.setFull_name(rs.getString("FULL_NAME"));
				result_dto.setEmail(rs.getString("EMAIL"));
				result_dto.setB_year(rs.getInt("B_YEAR"));
				result_dto.setB_month(rs.getInt("B_MONTH"));
				result_dto.setB_day(rs.getInt("B_DAY"));
				result_dto.setSex(rs.getInt("SEX"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result_dto;
	}

	// 신체정보 모두 가져오는 메소드
	public ArrayList<Body_DTO> reload(User_DTO u_dto) {
		ArrayList<Body_DTO> user_info = new ArrayList<>();
		try {
			// DB에 연결
			getConn();

			// SQL문 실행 준비
			String sql = "SELECT * FROM MEMBER_JOIN_INFO J RIGHT OUTER JOIN MEMBER_BODY_INFO B ON J.ID = B.ID WHERE J.ID = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, u_dto.getId());
			rs = psmt.executeQuery();

			while (rs.next()) {
				Body_DTO b_dto = new Body_DTO();

				// 복호키
				String key = "SMHRD_pg";
				ARIA aria = new ARIA(key);

				// 개인정보 복호화
				String height = aria.Decrypt(rs.getString("HEIGHT"));
				String mass = aria.Decrypt(rs.getString("MASS"));
				String waist = aria.Decrypt(rs.getString("WAIST"));
				String hip = aria.Decrypt(rs.getString("HIP"));
				String bmi = aria.Decrypt(rs.getString("BMI"));
				String rfm = aria.Decrypt(rs.getString("RFM"));
				String bai = aria.Decrypt(rs.getString("BAI"));
				String whr = aria.Decrypt(rs.getString("WHR"));
				String whtr = aria.Decrypt(rs.getString("WHTR"));

				b_dto.setHeight(Double.valueOf(height));
				b_dto.setMass(Double.valueOf(mass));
				b_dto.setWaist(Double.valueOf(waist));
				b_dto.setHip(Double.valueOf(hip));
				b_dto.setUpload(rs.getString("UPLOAD"));
				b_dto.setBMI(Double.valueOf(bmi));
				b_dto.setRFM(Double.valueOf(rfm));
				b_dto.setBAI(Double.valueOf(bai));
				b_dto.setWHR(Double.valueOf(whr));
				b_dto.setWHTR(Double.valueOf(whtr));

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
	public int upload(User_DTO u_dto, Body_DTO b_dto) {
		int row = 0;
		try {
			// DB에 연결
			getConn();

			double height = Double.valueOf(b_dto.getHeight());
			double mass = Double.valueOf(b_dto.getMass());
			double waist = Double.valueOf(b_dto.getWaist());
			double hip = Double.valueOf(b_dto.getHip());
			double BMI = mass / Math.pow(height / 100, 2);
			double RFM = (64 - 20 * (height / waist) + 12 * u_dto.getSex());
			double BAI = (hip / (height / 100) * Math.sqrt(height));
			double WHR = waist / hip;
			double WHtR = waist / height;

			// 암호키 설정
			String key = "SMHRD_pg";
			ARIA aria = new ARIA(key);

			// 개인정보 암호화
			String height_ = aria.Encrypt(String.valueOf(height));
			String mass_ = aria.Encrypt(String.valueOf(mass));
			String waist_ = aria.Encrypt(String.valueOf(waist));
			String hip_ = aria.Encrypt(String.valueOf(hip));
			String BMI_ = aria.Encrypt(String.valueOf(BMI));
			String RFM_ = aria.Encrypt(String.valueOf(RFM));
			String BAI_ = aria.Encrypt(String.valueOf(BAI));
			String WHR_ = aria.Encrypt(String.valueOf(WHR));
			String WHtR_ = aria.Encrypt(String.valueOf(WHtR));

			// SQL문 실행 준비
			String sql = "INSERT INTO MEMBER_BODY_INFO(ID , HEIGHT , MASS, WAIST, HIP, BMI , RFM , BAI , WHR , WHTR) VALUES (? , ? , ? , ? , ? , ? , ? , ? , ? , ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, u_dto.getId());
			psmt.setString(2, height_);
			psmt.setString(3, mass_);
			psmt.setString(4, waist_);
			psmt.setString(5, hip_);
			psmt.setString(6, BMI_);
			psmt.setString(7, RFM_);
			psmt.setString(8, BAI_);
			psmt.setString(9, WHR_);
			psmt.setString(10, WHtR_);

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
