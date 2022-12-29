package model;

public class Board_DTO {
	private int b_num;
	private String id;
	private String b_date;
	private String b_title;
	private String b_content;
	private int b_no;

	// 기본생성자
	public Board_DTO() {
	}
	
	//게시글 조회수 생성자
	public Board_DTO(int b_num, int b_no) {
		this.b_num = b_num;
		this.b_no = b_no;
	}
	
	//게시글 수정 생성자
	public Board_DTO(int b_num, String b_title, String b_content) {
		this.b_num = b_num;
		this.b_title = b_title;
		this.b_content = b_content;
	}
	
	// 게시글 등록 생성자
	public Board_DTO(String id, String b_title, String b_content) {
		this.id = id;
		this.b_title = b_title;
		this.b_content = b_content;
	}

	//
	public Board_DTO(int b_num, String id, String b_date, String b_title, String b_content, int b_no) {
		this.b_num = b_num;
		this.id = id;
		this.b_date = b_date;
		this.b_title = b_title;
		this.b_content = b_content;
		this.b_no = b_no;
	}
	
	

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public int getB_num() {
		return b_num;
	}

	public String getID() {
		return id;
	}

	public String getB_date() {
		return b_date;
	}

	public String getB_title() {
		return b_title;
	}

	public String getB_content() {
		return b_content;
	}

	public void setB_num(int b_num) {
		this.b_num = b_num;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setB_date(String b_date) {
		this.b_date = b_date;
	}

	public void setB_title(String b_title) {
		this.b_title = b_title;
	}

	public void setB_content(String b_content) {
		this.b_content = b_content;
	}

}
