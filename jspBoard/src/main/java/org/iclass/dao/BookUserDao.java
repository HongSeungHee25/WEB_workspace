package org.iclass.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.iclass.dto.BookUser;

import mybatis.SqlSessionBean;


public class BookUserDao {		
	
	public BookUser login(Map<String,String> map)  {
		SqlSession mapperSession = SqlSessionBean.getSession();
		BookUser vo = mapperSession.selectOne("bookuser.login",map);
		mapperSession.close();
		return vo;
	}
	
	public int insert(BookUser vo) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.insert("bookuser.insert", vo);
		mapper.commit();
		mapper.close();
		
		return result;
	}
	
	
}
