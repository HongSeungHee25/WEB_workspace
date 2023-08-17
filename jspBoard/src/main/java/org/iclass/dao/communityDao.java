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
		int result = mapper.selectOne("community.count");
		mapper.close();
		return result;
	}
	// PK 로 글 조회(글 읽기)
	public Community selectByIdx(long idx) {
		/*
		   <select id="selectByIdx" parameterType="long" resultType="org.iclass.vo.Community">
	 		SELECT * 
	 		FROM 
	 			community 
	 		WHERE 
	 			idx=#{idx}   
	 		</select>
		 */
		SqlSession mapper = SqlSessionBean.getSession();
		Community vo = mapper.selectOne("community.selectByIdx",idx);
		mapper.close();
		return vo;
	}
	// 글 조회수 증가
	public int setReadCount(long idx) {
		/*
		   <update id="setReadCount" parameterType="long">
	 		UPDATE community 
			SET 
				READCOUNT = READCOUNT +1 
			WHERE 
				idx = #{idx}
	 		</update>
		 */
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.update("community.setReadCount",idx);
		mapper.commit();
		mapper.close();
		return result;
	}
	// 글 수정
	public int update(Community vo) {
		/*
		 	<update id="update" parameterType="org.iclass.vo.Community">
		 	UPDATE community
			SET 
				title=#{title}, content=#{content} ,ip=#{ip}
			WHERE 
				idx=#{idx}
	 		</update>
		 */
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.update("community.update", vo);
		mapper.commit();
		mapper.close();
		return result;
	}
	// 글 삭제
	public int delete(long idx) {
		/*
		 	<delete id="delete" parameterType="long">
	 		DELETE FROM 
	 			community 
	 		WHERE 
	 			idx=#{idx}
	 		</delete>
		 */
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.delete("community.delete",idx);
		mapper.commit();
		mapper.close();
		return result;
	}
}
