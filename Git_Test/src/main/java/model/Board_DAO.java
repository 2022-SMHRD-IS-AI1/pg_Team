package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Board_DAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	String name = null;
	int cnt = 0;

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
	
	public int write(Board_DTO dto) {
		try {
			getConn();
			String sql = "insert into member_board values(MEMBER_BOARD_SEQ.nextval,?,sysdate,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getID());
			psmt.setString(2, dto.getB_title());
			psmt.setString(3, dto.getB_content());
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	

}
