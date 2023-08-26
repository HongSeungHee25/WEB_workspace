package org.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.vo.QnA;

import mybatis.SqlSessionBean;

public class QnADAO {
	
	//싱글톤
	private static QnADAO dao = new QnADAO();
	private QnADAO () {}
	public static QnADAO getQnADAO () {
		return dao;
	}
	
	//1:1 문의
	public int insert(QnA vo) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.insert("QnA.insert",vo);
		mapper.commit();
		mapper.close();
		
		return result;
	}
	
	//1:1 문의글 출력
	public List<QnA> selectList(){
		SqlSession mapper = SqlSessionBean.getSession();
		List<QnA> list = mapper.selectList("QnA.select");
		mapper.close();
		return list;
	}
	
	//선택한 문의글 출력
	public QnA selectOne(int writeNo) {
		SqlSession mapper = SqlSessionBean.getSession();
		QnA vo = mapper.selectOne("QnA.selectOne",writeNo);
		mapper.close();
		
		return vo;
	}
	
	//1:1 문의 답글
	public int update(QnA vo) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.update("QnA.update",vo);
		mapper.commit();
		mapper.close();
		
		return result;
	}
	
	
	
}
