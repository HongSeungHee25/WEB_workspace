package sample.DAO;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.SQLException;

import org.junit.jupiter.api.Test;

import sample.DTO.JCustomerDTO;

class JCustomerDAOTest {

	@Test
	void daoTest() {
		JCustomerDAO dao = new JCustomerDAO();
		assertNotNull(dao);
	}
	
	@Test
	void selectById() {
		JCustomerDAO dao = new JCustomerDAO();
		JCustomerDTO dto;
		try {
			dto = dao.selectById("mina012");
			assertNotNull(dto);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	void Login() throws SQLException {
		JCustomerDAO dao = new JCustomerDAO();
		JCustomerDTO dto;
		dto = dao.login("mina012","1111");
		assertNotNull(dto);
	}
	
	
	

}
