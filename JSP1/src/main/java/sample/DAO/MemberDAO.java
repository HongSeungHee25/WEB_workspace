package sample.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.Util.OracleUtility;
import sample.DTO.MemberDTO;



//DAO 에는 입력과 출력은 포함시키지 않습니다.
//오직 어떤 형식의 데이터를 받아서 어떤 SQL 을 실행하여 어떤 값을 리턴할 것인가를 중점을 두고 정의하면 됩니다.
//DTO 는 데이터를 저장하는 목적의 클래스, DAO 는 어떤 동작을 할 것인지를 정의한 메소드만 있습니다.
public class MemberDAO {
   
   //싱글톤으로 만들어봅시다. (day06, 06-19) ------------------------------------
   private static MemberDAO dao = new MemberDAO();
   private MemberDAO() {}
   //메소드 이름은 getInstance 외에 내용을 알 수 있는 이름으로 정하기
   public static MemberDAO getMemberDAO() {
      return dao;
   }
   
      //메인메소드에서 싱글톤을 이용한 객체 가져오기 (day06, 06-19)---------
         //MemberDAO mDao = MemberDAO.getMemberDAO();
      //----------------------------------------------------------
   //-----------------------------------------------------------------------
   public void joinMember(MemberDTO mDto) {
      
      Connection conn = OracleUtility.getConnection();
      String sql = "insert into MEMBER_TBL_02 values(?, ? , ? , ? , sysdate , ? , ?)";
      PreparedStatement ps;
      
      try {
         conn.setAutoCommit(false);   //커밋 false
         
         ps = conn.prepareStatement(sql);
      
         ps.setInt(1, mDto.getCustno());
         ps.setString(2, mDto.getCustname());
         ps.setString(3, mDto.getPhone());
         ps.setString(4, mDto.getAddress());
         ps.setString(5, mDto.getGrade());
         ps.setString(6, mDto.getCity());
         ps.execute();
         
         conn.commit();
         conn.setAutoCommit(true);
         ps.close();
         conn.close();
         System.out.println("회원 등록이 완료되었습니다!");
      } catch (SQLException e) {
         System.out.println("예외 : "+e.getMessage());
         try {
            conn.rollback();
         } catch (Exception e2) {
            System.out.println("예외 : "+e2.getMessage());
         }//try-catch 2 end
      }//try-catch 1 end
      
   }//joinMember end
   
   public MemberDTO selectOne(int custno) throws SQLException {		//수정할 데이터 가져오기
		Connection conn = OracleUtility.getConnection();
		String sql = "select custno,custname,phone,address,to_char(joindate,'yyyy-mm-dd') as joindate,grade,city from MEMBER_TBL_02 where custno = ?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1,custno);
		MemberDTO result = null;
		ResultSet rs = ps.executeQuery();
		if(rs.next()) {
			String custname = rs.getString(2);
			String phone = rs.getString(3);
			String address = rs.getString(4);
			String joindate = rs.getString(5);
			String grade = rs.getString(6);
			String city = rs.getString(7);
			result = new MemberDTO(custno, custname, phone, address, joindate, grade, city);
		}
		conn.close();
		ps.close();
		rs.close();
		return result;
	}
   
   
   public List<MemberDTO> selectAll() throws SQLException {		//전체 목록 가져오기
		Connection conn = OracleUtility.getConnection();
		String sql = "select custno,custname,phone,address,to_char(joindate,'yyyy-mm-dd') as joindate,"
				+ " decode(grade,'A','VIP','B','일반','C','직원') ,city "
				+ " from MEMBER_TBL_02 ORDER BY custno";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		List<MemberDTO> result = new ArrayList<>();
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			MemberDTO md = new MemberDTO(rs.getInt(1), 
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4), 
						rs.getString(5), 
						rs.getString(6), 
						rs.getString(7));
			result.add(md);
		}
		ps.close();
		rs.close();
		conn.close();
		
			return result;
		
	}
   
   public int update(MemberDTO md) throws SQLException {
		Connection conn = OracleUtility.getConnection();
		//수정 가능한 항목(컬럼)은 모두 set에 포함시키기
		String sql = "update MEMBER_TBL_02 set custname = ?,phone = ?,address =?,grade =?,city =? \n"
				+ "where custno = ?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, md.getCustname());
		ps.setString(2, md.getPhone());
		ps.setString(3, md.getAddress());
		ps.setString(4, md.getGrade());
		ps.setString(5, md.getCity());
		ps.setInt(6, md.getCustno());
		int result = ps.executeUpdate();
		
		ps.close();
		conn.close();
		return result;
	}
   
   public int nextCustno() throws SQLException {
	      Connection conn = OracleUtility.getConnection();
	      String sql = "SELECT MAX(custno)+1 FROM MEMBER_TBL_02";
	      PreparedStatement ps = conn.prepareStatement(sql);
	      
	      ResultSet rs = ps.executeQuery();
	      int result = 0;
	      
	      if(rs.next()) result = rs.getInt(1);
	      
	      conn.close();
	      ps.close();
	      rs.close();
	      
	      return result;
	   }
	   
	   public String today() throws SQLException {
	      Connection conn = OracleUtility.getConnection();
	      String sql = "SELECT to_char(sysdate,'yyyy-mm-dd') FROM dual";
	      PreparedStatement ps = conn.prepareStatement(sql);
	      
	      ResultSet rs = ps.executeQuery();
	      String result = null;
	      
	      if(rs.next()) result = rs.getString(1);
	      
	      conn.close();
	      ps.close();
	      rs.close();
	      
	      return result;
	   }
   
   
   
   
}//class end