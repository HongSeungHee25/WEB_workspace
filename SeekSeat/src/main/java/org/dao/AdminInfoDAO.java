package org.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.SqlSessionBean;

public class AdminInfoDAO {
	
	//싱글톤
	private static AdminInfoDAO dao = new AdminInfoDAO();
	private AdminInfoDAO () {}
	public static AdminInfoDAO getAdminDAO () {
		return dao;
	}
	
	//관리자 로그인
	public int login(Map<String, String> map) {		
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.selectOne("AdminInfo.login",map);
		mapper.close();
		return result;
	}
	
	
}
