package sample.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import jdbc.Util.OracleUtility;
import sample.DTO.JCustomerDTO;


public class JCustomerDAO {
	//CRUD 실행 SQL
	
	public void insert(JCustomerDTO dto){
		Connection connection = OracleUtility.getConnection();
		String sql = "insert into j_custom values (?,?,?,?,SYSDATE,?)";
		PreparedStatement ps;
		try{
		connection.setAutoCommit(false);
			
		ps = connection.prepareStatement(sql);
		
		
		ps.setString(1, dto.getCustom_id());
		ps.setString(2, dto.getName());
		ps.setString(3, dto.getEmail());
		ps.setInt(4, dto.getAge());
		ps.setString(5, dto.getPassword());
		ps.execute();
		
		connection.commit();
		connection.setAutoCommit(true);
		ps.close();
        connection.close();
		}catch(SQLException e) {
			System.out.println("예외 : "+e.getMessage());
			try {
	            connection.rollback();
	         } catch (Exception e2) {
	            System.out.println("예외 : "+e2.getMessage());
	         }//try-catch 2 end
		}//try-catch 1 end
	}//insert end
	
	public List<JCustomerDTO> selectAll() throws SQLException{
		Connection connection = OracleUtility.getConnection();
		String sql = "select * from j_custom";
		PreparedStatement ps = connection.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		
		List<JCustomerDTO> list = new ArrayList<>();
		
		while(rs.next()) {
			JCustomerDTO dt = new JCustomerDTO(
			rs.getString("custom_ID"),
			rs.getString("name"),
			rs.getString("email"),
			rs.getInt("age"),
			rs.getString("reg_date"),null);
			
			list.add(dt);
		}
		
		connection.close();
		ps.close();
		rs.close();
		
		return list;
	}//selectAll() end
	
	public void update(JCustomerDTO dto) throws SQLException{
		
		Connection connection = OracleUtility.getConnection();
		String sql = "update j_custom set email = ? where custom_ID = ?";
		PreparedStatement ps = connection.prepareStatement(sql);
		
		ps.setString(1, dto.getEmail());
		ps.setString(2, dto.getCustom_id());
		
		ps.execute();
		
		connection.close();
		ps.close();
		
		
	}//update end
	
	public void delete(String custom_id) throws SQLException{
		Connection connection = OracleUtility.getConnection();
		
		String sql = "delete from j_custom where custom_ID = ?";
		PreparedStatement ps = connection.prepareStatement(sql);
		
		ps.setString(1, custom_id);

		ps.execute();
		
		ps.close();
		connection.close();
		
	}//delete end
	
		//1. id 로그인 - 간단히 회원아이디를 입력해서 존재하면 로그인 성공
		public JCustomerDTO selectById(String customid) throws SQLException {
			Connection conn = OracleUtility.getConnection();
			String sql = "select * from j_custom"
					+ " where custom_id=?";		//PK조회 : 결과 행 0 또는 1개
			PreparedStatement ps = conn.prepareStatement(sql);
			// Statement : SQL, Prepared : SQL 이 미리 컴파일되어 준비된.		
			// PreparedStatement 는 Statement 인터페이스와 비교할수 있습니다.
			// Statement 인터페이스 : SQL 실행에 필요한 데이터를 동시에 포함시켜서 컴파일을 합니다.
			
			ps.setString(1, customid);
			// 준비된 SQL 에 파라미터 전달하여
			
			ResultSet rs = ps.executeQuery();
			// select 쿼리 실행
			
			JCustomerDTO temp = null;
			if(rs.next()) {
				temp = new JCustomerDTO(rs.getString(1), 
						rs.getString(2), 
						rs.getString(3), 
						rs.getInt(4), 
						rs.getString(5),null);
			}
			ps.close();
			conn.close();
			
			return temp;
		}//selectById end
		
		//2. 회원 로그인 - 회원아이디와 비밀번호 입력해서 존재하면 로그인 성공
		public JCustomerDTO login(String id,String password){
		      Connection conn = OracleUtility.getConnection();
		      //id 는 custom_id 컬럼값, password는 password 컬럼값(평문으로 저장됨)
		      String sql = "select custom_id ,name  "
		            + "from j_custom where custom_id =? and password=?";
		      JCustomerDTO result = null;
		      try(PreparedStatement ps = conn.prepareStatement(sql)){
		      ps.setString(1, id);
		      ps.setString(2,password);
		      
		      ResultSet rs = ps.executeQuery();
		      if(rs.next()) {
		         result = new JCustomerDTO();
		         result.setCustom_id(rs.getString(1));
		         result.setName(rs.getString(2));
		      }
		      
		      conn.close();
		      }catch(SQLException e) {
		    	  e.printStackTrace();
		      }
		      return result;      //result 가 null 이 아니면 로그인 성공
		   }//login end
	
}
