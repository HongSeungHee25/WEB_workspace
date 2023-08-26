package org.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.vo.Reservation;

import mybatis.SqlSessionBean;

public class ReservationDAO {
	
	//싱글톤
	private static ReservationDAO dao = new ReservationDAO();
	private ReservationDAO () {}
	public static ReservationDAO getReservationDAO () {
		return dao;
	}
	
	//메소드
	
	// 예약 신청
	public int insert(Reservation reservation) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.insert("Reservation.insert", reservation);
		mapper.commit();
		mapper.close();
		return result;
		
	}// ~ insert end
	
	// 예약 취소
	public int delete(String reserveNo) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.delete("Reservation.delete", reserveNo);
		mapper.commit();
		mapper.close();
		return result;
		
	}// ~ delete end
	
	// 예약 승인/거절
	public int setStatus(Map<String, Object> map) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.update("Reservation.setStatus",map);
		mapper.commit();
		mapper.close();
		return result;
		
	}// ~ admit end
	
	// (회원 기준) 예약 리스트 출력
	public List<Reservation> selectUserReservation(String user_id){
		SqlSession mapper = SqlSessionBean.getSession();
		List<Reservation> results = mapper.selectList("Reservation.selectUserReservation", user_id);
		mapper.close();
		return results;
		
	}// ~ selectUserReservation
	
	// (회원 기준) 예약 리스트 출력
	public List<Reservation> selectStoreReservation(String store_id){
		SqlSession mapper = SqlSessionBean.getSession();
		List<Reservation> results = mapper.selectList("Reservation.selectStoreReservation", store_id);
		mapper.close();
		return results;
		
	}// ~ selectUserReservation
	
	
}// ReservationDAO
