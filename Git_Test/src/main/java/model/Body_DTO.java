package model;

public class Body_DTO {

	// 입력
	private double height;
	private double mass;
	private double waist;
	private double hip;
	// measurements
	private String upload;
	private double BMI;
	private double RFM;
	private double BAI;
	private double WHR;
	private double WHTR;

	// 기본 생성자
	public Body_DTO() {
		super();
	}

	// 신체정보 생성자
	public Body_DTO(double height, double mass, double waist, double hip) {
		super();
		this.height = height;
		this.mass = mass;
		this.waist = waist;
		this.hip = hip;

		// DAO에서 계산해서 넣으니까 신경쓸 필요 없음
		this.BAI = 0;
		this.RFM = 0;
		this.BAI = 0;
		this.WHR = 0;
		this.WHTR = 0;
	}

	// 신체 정보 getter setter
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

	public double getWHTR() {
		return WHTR;
	}

	public void setWHTR(double wHTR) {
		WHTR = wHTR;
	}

}
