package sample.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.Util.OracleUtility;
import sample.DTO.JBuyDTO;
import sample.DTO.JCustomerDTO;
import sample.DTO.JProductDTO;
import sample.DTO.MyPageBuyDTO;


public class JBuyDAO {	//구매와 관련된 CRUD 실행 SQL. DAO : JCustomerDao, ProductDao
//메소드 이름은 insert, update, delete, select, selectByPname 등등으로 이름을 작성하세요.
	
	

	public void buyProduct(JCustomerDTO loginCS, List<JProductDTO> buyCart, List<Integer> productCount) throws SQLException{
		Connection connection = OracleUtility.getConnection();
		
		String sql = "insert into j_buy values (jbuy_seq.nextval, ?,?,?, sysdate)";
		PreparedStatement ps = connection.prepareStatement(sql);
		
		for (JProductDTO jdto : buyCart) {
			ps.setString(1, loginCS.getCustom_id());
			ps.setString(2, jdto.getPcode());
			for (int i = 0; i < productCount.size(); i++) {
				ps.setInt(3, productCount.get(i));
			}
			
		}
		
		ps.close();
		connection.close();
	}
	
	public void credit(List<JBuyDTO> cart) {
		Connection connection = OracleUtility.getConnection();
		
		String sql = "insert into j_buy values (jbuy_seq.nextval, ?,?,?, sysdate)";
		
		PreparedStatement ps = null;
		try {
			
			connection.setAutoCommit(false);			
			
			ps = connection.prepareStatement(sql);
		
			//int result = 0;
			for (JBuyDTO bDto : cart) {
				ps.setString(1, bDto.getCustomID());
				ps.setString(2, bDto.getPcode());
				ps.setInt(3, bDto.getQty());
				ps.execute();
			//	result = ps.executeUpdate();
			}
			connection.commit();		
			connection.setAutoCommit(true);
			ps.close();
			connection.close();
		}catch(SQLException e) {
			System.out.println("장바구니 상품 구매하기 예외 : " + e.getMessage());
			System.out.println("장바구니 상품 구매를 취소합니다.");
			try {
				connection.rollback();		//롤백
			} catch (SQLException e1) {
				System.out.println("예외 : "+e.getMessage());
			}
			
		}
		//return result;
	}//credit end
	
	public int history(String id) throws SQLException{
		Connection connection = OracleUtility.getConnection();
		
		String sql = "select pname, qty, price, qty*price total, buy_date \r\n"
				+ "from j_buy b join j_product p\r\n"
				+ "on p.pcode = b.pcode\r\n"
				+ "and b.customid = ?\r\n"
				+ "order by buy_date desc";
		PreparedStatement ps = connection.prepareStatement(sql);
		
	   ps.setString(1, id);
	   ps.execute();
	   
	   ResultSet rs = ps.executeQuery();
	   int count = 0;
	   
	   while(rs.next()) {
		  //select pname, qty, price, qty*price total, buy_date
		   System.out.println(String.format("▶ 상품명 : %-10s\t ┃ 수량 : %-5d\t ┃ 상품 가격 : %-10d\t ┃ 총 가격 : %-10d\t ┃ 구매 일자 : %10s",
				   rs.getString(1),rs.getInt(2),rs.getInt(3),rs.getInt(4),rs.getString(5))+" ◀");
		   count++;
	   }
	   
		return count;
	}//history end

	
	
	public int insert(JBuyDTO buy) {
		return 1;
	}

	public JBuyDTO selectOne(int buy_seq) throws SQLException {
	
		Connection connection = OracleUtility.getConnection();
		String sql = "select * from j_buy where buy_seq = ?";
		
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, buy_seq);
		
		ResultSet rs = ps.executeQuery();
		JBuyDTO dto = null;
		
		if(rs.next()) dto = new JBuyDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5));
		
		connection.close();
		ps.close();
		rs.close();
		return dto;
		
	}
	//	 select * from mypage_buy where customid='twice';
	 public List<MyPageBuyDTO> mypageBuy(String customid) throws SQLException{
		 Connection conn = OracleUtility.getConnection();
			String sql = "select * from mypage_buy where customid= ?"; 
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, customid);
			ResultSet rs = ps.executeQuery();
			
			List<MyPageBuyDTO> list = new ArrayList<>();
			while(rs.next()) {
				list.add(new MyPageBuyDTO(rs.getDate(1), 
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4), 
						rs.getInt(5), 
						rs.getInt(6),
						rs.getLong(7)));
			}
			return list;
	 }
//	 select sum(total) from mypage_buy where customid='twice';
	 public long myMoney(String customid) throws SQLException {
		 Connection conn = OracleUtility.getConnection();
		 String sql = "select sum(total) from mypage_buy where customid= ?"; 
		 //함수 조회하는 select는 항상 결과행이 1개, 컬럼도 1개
		 
		 PreparedStatement ps = conn.prepareStatement(sql);
		 ps.setString(1, customid);
		 ResultSet rs = ps.executeQuery();
		 
		 rs.next();
		 long sum = rs.getLong(1);
		 
		 return sum;
	 }

	
	
	
//	public int totalPay(List<JBuyDTO> list){
//		Connection connection = OracleUtility.getConnection();
//		String sql = "select price from j_product where pcode = ?";
//		
//		try {
//		PreparedStatement ps = connection.prepareStatement(sql);
//		for (int i = 0; i < list.size(); i++) {
//			
//		}
//		}catch(SQLException e) {
//			
//		}
//		
//	}//totalPay end
	
	
	
	
}
