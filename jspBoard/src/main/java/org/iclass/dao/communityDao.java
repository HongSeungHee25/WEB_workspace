package org.iclass.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.iclass.dto.Community;

import mybatis.SqlSessionBean;

public class communityDao {

	private static communityDao dao = new communityDao();
	private communityDao() {}
	public static communityDao getInstance() {
		return dao;
	}
	
	public List<Community> list() {
		SqlSession mapper = SqlSessionBean.getSession();
		List<Community> list = mapper.selectList("community.list");
		mapper.close();
		return list;
	}
	
	public List<Community> pagelist(Map<String, Integer> map){
		SqlSession mapper = SqlSessionBean.getSession();
		List<Community> list = mapper.selectList("community.pagelist", map);
		mapper.close();
		return list;
	}
	
	public int count() {
		SqlSession mapper = SqlSessionBean.getSession();
		int count = mapper.selectOne("community.count");
		mapper.close();
		return count;
	}
	public Community selectByIdx(long idx) {
		SqlSession mapper = SqlSessionBean.getSession();
		Community dto = mapper.selectOne("community.selectByIdx");
		mapper.close();
		return dto;
	}
	public int setReadCount(long idx) {
		SqlSession mapper = SqlSessionBean.getSession();
		int count = mapper.update("community.setReadCount");
		mapper.commit();
		mapper.close();
		return count;
	}
	public int update(Community dto) {
		SqlSession mapper = SqlSessionBean.getSession();
		int count = mapper.update("community.update", dto);
		mapper.commit();
		mapper.close();
		return count;
	}
	public int delete(long idx) {
		SqlSession mapper = SqlSessionBean.getSession();
		int count = mapper.delete("community.delete");
		mapper.commit();
		mapper.close();
		return count;
	}
}
