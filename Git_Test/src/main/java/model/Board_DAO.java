package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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

	// 게시글 등록
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
		} finally {
			close();
		}
		return cnt;
	}

	// 게시글 정보 불러오기
	public ArrayList<Board_DTO> board_reload(int sort_code) {
		// 0은 최신순으로
		ArrayList<Board_DTO> list = new ArrayList<>();
		try {
			getConn();
			String sql = "select * from member_board order by b_num DESC";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {

				int num = rs.getInt(1);
				String id = rs.getString(2);
				String date = rs.getString(3);
				String title = rs.getString(4);
				String content = rs.getString(5);

				Board_DTO dto = new Board_DTO(num, id, date, title, content);

				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	// 게시글 수정
	public int update(Board_DTO dto) {
		try {
			getConn();
			String sql = "update member_board set b_title = ?, b_content = ? where b_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getB_title());
			psmt.setString(2, dto.getB_content());
			psmt.setInt(3, dto.getB_num());

			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	//게시글 보기
	public Board_DTO getdto(int b_num) {
		Board_DTO dto = new Board_DTO();
		try {
			getConn();
			String sql = "select * from member_board where b_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, b_num);
			rs = psmt.executeQuery();
			if(rs.next()) {
				int num = rs.getInt(1);
				String id = rs.getString(2);
				String date = rs.getString(3);
				String title = rs.getString(4);
				String content = rs.getString(5);

				dto = new Board_DTO(num, id, date, title, content);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dto;
	}
	
	//총 레코드 수 구하기
	public int getCount() {
		int count = 0;
		try {
			getConn();
			String sql = "select count(*) from Member_board";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return count;
	}

}
