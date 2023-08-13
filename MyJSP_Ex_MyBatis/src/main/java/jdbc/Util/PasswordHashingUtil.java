package jdbc.Util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class PasswordHashingUtil {

    public static String hashPassword(String password) {
        try {
        	//MessageDigest 클래스는 Java에서 해시 함수를 구현하고 사용하는 데 사용되는 클래스
        	//해시 함수는 임의의 크기의 데이터를 입력으로 받아서 고정된 크기의 해시 값(일련의 바이트)을 출력하는 함수
            //해시 함수는 입력 데이터를 변환하여 보안적으로 안전한 형태로 나타내는 데 사용
        	MessageDigest md = MessageDigest.getInstance("SHA-256");
            // MessageDigest 클래스를 사용하여 SHA-256 해시 함수를 초기화
            byte[] hashedBytes = md.digest(password.getBytes());
            //입력된 비밀번호 문자열(password.getBytes())을 바이트 배열로 변환한 후, 
            //해당 바이트 배열을 SHA-256으로 해시화

            StringBuilder sb = new StringBuilder();
            //해시된 바이트 배열을 16진수 문자열로 변환하여 StringBuilder에 추가
            for (byte b : hashedBytes) {
                sb.append(Integer.toString((b & 0xff) + 0x100, 16).substring(1));
            }
            return sb.toString();
            //StringBuilder에 저장된 해시된 비밀번호를 문자열로 반환
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
}