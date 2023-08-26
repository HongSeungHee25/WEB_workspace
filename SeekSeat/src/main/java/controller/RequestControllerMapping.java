package controller;

import java.util.HashMap;
import java.util.Map;

import controller.login.UserLoginActionController;
import controller.login.UserLoginController;


public class RequestControllerMapping {
	private static final Map<RequestMap,Controller> mapping = new HashMap<>();
	
	public static void init() {
		//로그인 기능(회원)
		mapping.put(new RequestMap("/jsp/c_login","GET"), new UserLoginController());
		mapping.put(new RequestMap("/jsp/c_login","POST"), new UserLoginActionController());
		mapping.put(null, null);
		
		//회원가입 기능(회원)
		mapping.put(null, null);
		mapping.put(null, null);
		mapping.put(null, null);
		
		//회원 정보 수정
		mapping.put(null, null);
		mapping.put(null, null);
		
		//로그인 기능(사장님)
		mapping.put(null, null);
		mapping.put(null, null);
		
		//회원가입 기능(사장님)
		mapping.put(null, null);
		mapping.put(null, null);
		
		//관리자 로그인
		mapping.put(null, null);
		mapping.put(null, null);
		
		//매장 정보 등록
		mapping.put(null, null);
		mapping.put(null, null);
		
		//메뉴 등록
		mapping.put(null, null);
		mapping.put(null, null);
		
		//예약
		mapping.put(null, null);
		mapping.put(null, null);
		
		//리뷰작성
		mapping.put(null, null);
		mapping.put(null, null);
		
		//커뮤니티 글 작성,수정,삭제
		mapping.put(null, null);
		mapping.put(null, null);
		mapping.put(null, null);
		mapping.put(null, null);
		mapping.put(null, null);
		
		//댓글 작성
		mapping.put(null, null);
		mapping.put(null, null);
		mapping.put(null, null);
		
		//1:1 문의(회원)
		mapping.put(null, null);
		mapping.put(null, null);
		mapping.put(null, null);
		
		//1:1 문의(사장님)
		mapping.put(null, null);
		mapping.put(null, null);
		mapping.put(null, null);
		
		//1:1 문의(관리자)
		mapping.put(null, null);
		mapping.put(null, null);
		mapping.put(null, null);
				
	}
	
	public static Controller getController(RequestMap key) {
		return mapping.get(key);
	}
}
