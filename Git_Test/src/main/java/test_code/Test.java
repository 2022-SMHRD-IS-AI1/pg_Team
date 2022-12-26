package test_code;

import java.security.NoSuchAlgorithmException;

import security.SHA256;

public class Test {

	public static void main(String[] args) {

		SHA256 sha = new SHA256();

		try {
			System.out.println(sha.encrypt("qkrtjdus"));
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
