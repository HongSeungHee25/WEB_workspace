package sample.DAO;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.SqlSessionBean;
import sample.DTO.JCustomerDTO;


public class JCustomerDAO {
	//CRUD 실행 SQL
	
	// MyBatis로 insert 메서드 구현
    public int insert(JCustomerDTO dto) throws SQLException {
    	SqlSession mapper = SqlSessionBean.getSession();
		int count = mapper.insert("sample.DAO.JCustomerDAO.insert", dto);
		//insert, update, delete 는 commit 명령이 필요합니다. (mybatis 는 autocommit 이 아닙니다.)
		mapper.commit();
		mapper.close();
		return count;
     }
    // MyBatis로 login 메서드 구현
    public JCustomerDTO login(String id, String password) {
        SqlSession mapper = SqlSessionBean.getSession();
        try {
            Map<String, Object> params = new HashMap<>();
            params.put("id", id);
            params.put("password", password);
            return mapper.selectOne("sample.DAO.JCustomerDAO.login", params);
        } finally {
            mapper.close(); // 꼭 닫아주어야 합니다.
        }
    }

}