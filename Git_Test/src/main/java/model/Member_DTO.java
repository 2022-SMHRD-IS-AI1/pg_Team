package model;

public class Member_DTO {
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
	// 신체정보
	private double height;
	private double mass;
	private double waist;
	private double hip;
	private String upload;
	private double BMI;
	private double RFM;
	private double BAI;
	private double WHR;
	private double WHtR;

	// getter setter
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

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public double getMass() {
		return mass;
	}

	public void setMass(double mass) {
		this.mass = mass;
	}

	public double getWaist() {
		return waist;
	}

	public void setWaist(double waist) {
		this.waist = waist;
	}

	public double getHip() {
		return hip;
	}

	public void setHip(double hip) {
		this.hip = hip;
	}

	public String getUpload() {
		return upload;
	}

	public void setUpload(String upload) {
		this.upload = upload;
	}

	public double getBMI() {
		return BMI;
	}

	public void setBMI(double bMI) {
		BMI = bMI;
	}

	public double getRFM() {
		return RFM;
	}

	public void setRFM(double rFM) {
		RFM = rFM;
	}

	public double getBAI() {
		return BAI;
	}

	public void setBAI(double bAI) {
		BAI = bAI;
	}

	public double getWHR() {
		return WHR;
	}

	public void setWHR(double wHR) {
		WHR = wHR;
	}

	public double getWHtR() {
		return WHtR;
	}

	public void setWHtR(double wHtR) {
		WHtR = wHtR;
	}

}
