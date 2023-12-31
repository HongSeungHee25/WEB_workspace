package sample.DAO;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import sample.DTO.OrderDTO;

public class OrderDAO {

	private static OrderDAO dao = new OrderDAO();
	private OrderDAO() {}
	public static OrderDAO getOrderDAO() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	//SqlSession 의 메소드 selectList, insert 의 첫번째 인자는 mapper xml 의 sql id 와 동일하게 합니다.
	//					 두번째 인자는 전달한 파라미터.
	public List<String> selectOrderByEmail() throws SQLException{
		SqlSession mapper = factory.openSession();
		List<String> list = mapper.selectList("selectOrderByEmail");
		mapper.close();
		return list;
	}
	
	public int insert(OrderDTO order) throws SQLException{
		SqlSession mapper = factory.openSession();
		int count = mapper.insert("order.insert",order);
		//insert, update, delete 는 commit 명령이 필요합니다. (mybatis 는 autocommit 이 아닙니다.)
		mapper.commit();
		mapper.close();
		return count;
	}
	
	public List<OrderDTO> selectByEmail(String email) throws SQLException{
		SqlSession mapper = factory.openSession();
		List<OrderDTO> list = mapper.selectList("selectByEmail",email);
		mapper.close();
		return list;
	}
}
