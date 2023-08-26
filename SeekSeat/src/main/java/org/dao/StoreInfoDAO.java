/*작성자 : 차일도*/
package org.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.vo.StoreInfo;

import mybatis.SqlSessionBean;

public class StoreInfoDAO {
	
	//싱글톤
	private static StoreInfoDAO dao = new StoreInfoDAO();
	private StoreInfoDAO () {}
	public static StoreInfoDAO getStoreInfoDAO () {
		return dao;
	}
	
	//메소드
	
	// 매장 등록
	public int insert(StoreInfo storeInfo) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.insert("StoreInfo.insert", storeInfo);
		mapper.commit();
		mapper.close();
		return result;
	}// ~insert end
	
	// 지정 매장 정보 변경
	public int update(StoreInfo storeInfo) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.update("StoreInfo.update", storeInfo);
		mapper.commit();
		mapper.close();
		return result;
	}// ~update end
	
	// 지정 매장 삭제
	public int delete(String store_id) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result= mapper.delete("StoreInfo.delete",store_id);
		mapper.commit();
		mapper.close();
		return result;
	}// ~ delete end
	
	// 매장 전체 조회
	public List<StoreInfo> selectAll(){
		SqlSession mapper = SqlSessionBean.getSession();
		List<StoreInfo> results = mapper.selectList("StoreInfo.selectAll");
		mapper.close();
		return results;
	}// ~ selectAll end
	
	// 사장(owner) 별 매장 조회
	public List<StoreInfo> selectByOwner(String owner_id){
		SqlSession mapper = SqlSessionBean.getSession();
		List<StoreInfo> results = mapper.selectList("StoreInfo.selectByOwner", owner_id);
		mapper.close();
		return results;
	}// ~ selectByOwner end
	
	//TODO
	// Review 테이블에서 리뷰 수와 평점 평균을 가져와서 값 초기화해주는 DAO
	// 검색 기능 추가해야 함
	
}
