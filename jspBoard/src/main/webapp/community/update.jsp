<%@page import="org.iclass.dto.Community"%>
<%@page import="org.iclass.dao.communityDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 기본키 idx 값으로 글 조회하여 화면에 전달하기 -->
<% 
	int idx = 0;
	int pageNo = 0;
	if(request.getParameter("idx") != null){
	idx = Integer.parseInt(request.getParameter("idx"));
	}
	
	if(request.getParameter("page") != null){
		pageNo = Integer.parseInt(request.getParameter("page"));
		}
	
	communityDao dao = communityDao.getInstance();
	Community vo = dao.selectByIdx(idx);		// idx 글 조회하기
	
	
	request.setAttribute("vo", vo);
	request.setAttribute("page", pageNo);	
	
	pageContext.forward("updateView.jsp");
%>