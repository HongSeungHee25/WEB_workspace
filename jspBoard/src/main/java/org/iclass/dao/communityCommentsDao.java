package org.iclass.dao;

import org.apache.ibatis.session.SqlSession;
import org.iclass.dto.CommunityComments;

import mybatis.SqlSessionBean;

public class communityCommentsDao {

	private static communityCommentsDao dao = new communityCommentsDao();
	private communityCommentsDao() {}
	public static communityCommentsDao getInstance() {
		return dao;
	}
	
	public int insert(CommunityComments vo) {
		SqlSession mapper = SqlSessionBean.getSession();
		int idx = mapper.insert("communityComments.insert",vo);
		mapper.commit();
		mapper.close();
		return idx;
	}
	
	public int delete(int idx) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.delete("communityComments.delete",idx);
		mapper.commit();
		mapper.close();
		return result;
	}
	public int maxOf() {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.selectOne("communityComments.maxOf");
		mapper.close();
		return result;
	}
		//메인글의 댓글 갯수 업데이트	
		public int setCommentCount(long idx) {
			SqlSession mapper = SqlSessionBean.getSession();
			int result = mapper.update("community.setCommentCount", idx);
			mapper.commit();
			mapper.close();
			return result;
		}
	
}
