package model;

public class User_DTO {
	// 로그인
	private String id;
	private String pw;
	// 회원가입
	private String full_name;
	private String email;
	private int b_year;
	private int b_month;
	private int b_day;
	private int sex;

	// 기본 생성자
	public User_DTO() {
		super();
	}

	// 회원가입 생성자
	public User_DTO(String id, String pw, String full_name, String email, int b_year, int b_month, int b_day, int sex) {
		super();
		this.id = id;
		this.pw = pw;
		this.full_name = full_name;
		this.email = email;
		this.b_year = b_year;
		this.b_month = b_month;
		this.b_day = b_day;
		this.sex = sex;
	}

	// 로그인 생성자
	public User_DTO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	// 회원 정보 getter setter
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getB_year() {
		return b_year;
	}

	public void setB_year(int b_year) {
		this.b_year = b_year;
	}

	public int getB_month() {
		return b_month;
	}

	public void setB_month(int b_month) {
		this.b_month = b_month;
	}

	public int getB_day() {
		return b_day;
	}

	public void setB_day(int b_day) {
		this.b_day = b_day;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

}
