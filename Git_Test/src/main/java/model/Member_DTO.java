package model;

public class Member_DTO {
	private String id;
	private String pw;
	private String full_name;
	private String birth;
	private int sex;
	private double height;
	private double mass;
	private double waist;
	private double hip;
	private double upload;
	private double BMI;
	private double RFM;
	private double BAI;
	private double WHR;
	private double WHtR;

	// 생성자 회원가입
	public Member_DTO(String id, String pw, String full_name, String birth, int sex) {
		super();
		this.id = id;
		this.pw = pw;
		this.full_name = full_name;
		this.birth = birth;
		this.sex = sex;
	}

	// 생성자 로그인
	public Member_DTO(String id, String pw, String full_name, String birth, int sex, double height, double mass,
			double waist, double hip, double upload) {
		super();
		this.id = id;
		this.pw = pw;
		this.full_name = full_name;
		this.birth = birth;
		this.sex = sex;
		this.height = height;
		this.mass = mass;
		this.waist = waist;
		this.hip = hip;
		this.upload = upload;
		this.BMI = mass / Math.pow(height / 100, 2);
		this.RFM = (64 - 20 * (height / waist) + 10 * sex);
		this.BAI = (hip / ((height / 100) * Math.sqrt(height)));
		this.WHR = waist / hip;
		this.WHtR = waist / height;
	}

}
