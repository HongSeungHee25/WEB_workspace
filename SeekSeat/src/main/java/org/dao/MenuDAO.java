package org.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.vo.Menu;

import mybatis.SqlSessionBean;

public class MenuDAO {
	
	//싱글톤
	private static MenuDAO dao = new MenuDAO();
	private MenuDAO () {}
	public static MenuDAO getMenuDAO () {
		return dao;
	}
	
	//메뉴 출력
	public List<Menu> menuList(String store_id) {
		SqlSession mapper = SqlSessionBean.getSession();
		List<Menu> list = mapper.selectList("Menu.menuList",store_id);
		mapper.close();
		
		return list;
	}
	
	//메뉴 등록
	public int insert(Menu menu) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.insert("Menu.insert",menu);
		mapper.commit();
		mapper.close();
		
		return result;
	}
	
	//메뉴 수정
	public int update(Menu menu) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.update("Menu.update",menu);
		mapper.commit();
		mapper.close();
		
		return result;
	}
	
	//메뉴 삭제
	public int delete(Map<String, String> map) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.delete("Menu.delete",map);
		mapper.commit();
		mapper.close();
		
		return result;
	}
	
}
