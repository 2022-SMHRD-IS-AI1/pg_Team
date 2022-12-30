package test_code;

import security.SHA256;

public class Main {

	public static void main(String[] args) {
		SHA256 sha256 = new SHA256();

		try {
			String hash_1 = sha256.encrypt("안녕하세요 피지컬 갤러리입니다.");
			String hash_2 = sha256.encrypt("안녕하세요 피지컬 갤러리입니다");
			System.out.println(String.format("%s : %s\n%s : %s\n","안녕하세요 피지컬 갤러리입니다.", hash_1,"안녕하세요 피지컬 갤러리입니다 ", hash_2));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
