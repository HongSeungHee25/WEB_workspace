package org.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.vo.Owner;

import mybatis.SqlSessionBean;

public class OwnerDAO {
	
	//싱글톤
	private static OwnerDAO dao = new OwnerDAO();
	private OwnerDAO () {}
	public static OwnerDAO getOwnerDAO () {
		return dao;
	}
	
	//사장님 로그인
	public int login(Map<String, String> map) {		
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.selectOne("Owner.login",map);
		mapper.close();
		return result;
	}
	
	//사장님 회원가입
	public int join(Owner vo) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.insert("Owner.join",vo);
		mapper.commit();
		mapper.close();
		
		return result;
	}
	
	//사장님 ID 중복체크
	public int doubleCheck(String id) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.selectOne("Owner.doubleCheck", id);
		mapper.close();
		return result;
	}
	
	//사장님 정보 수정
	public int update(Owner vo) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.update("Owner.update",vo);
		mapper.commit();
		mapper.close();
		
		return result;
	}
	
	//사장님 정보 출력
	public Owner select(String id) {
		SqlSession mapper = SqlSessionBean.getSession();
		Owner vo = mapper.selectOne("Customer.select",id);
		mapper.close();
		
		return vo;
	}
	
	
	
}
