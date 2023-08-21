package org.iclass.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.checkerframework.checker.units.qual.m;
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
	
	//글 등록 
	public long insert(Community vo) {
	/*
		<insert id="insert" parameterType="org.iclass.dto.Community">
 		INSERT INTO 
 			community (idx,writer,title,content)
		VALUES 
			(community_idx_seq.nextval,#{writer}, #{title}, #{content})
			<!-- insert 후에 community_idx_seq 시퀀스 값을 가져와서 idx 프로퍼티에 저장하는 태그 -->
			<selectKey keyProperty="idx" resultType="long" order="AFTER">
				<!-- community_idx_seq 시퀀스값 가져오는 sql -->
				select community_idx_seq.currval
				from dual
			</selectKey>
 		</insert>
	 */
		SqlSession mapper = SqlSessionBean.getSession();
		mapper.insert("community.insert",vo);
		mapper.commit();
		mapper.close();
		
		//매퍼 xml에서 selectkey 로 시퀀스 값을 vo 객체 idx 프로퍼티에 저장시켰습니다.
		return vo.getIdx();
	}
}
