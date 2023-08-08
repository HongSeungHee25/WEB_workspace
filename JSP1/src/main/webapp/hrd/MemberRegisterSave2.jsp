<%@page import="sample.DAO.MemberDAO"%>
<%@page import="sample.DTO.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8"); 
%>
<!-- class : DTO 위치 -->
<jsp:useBean id="dto" class="sample.DTO.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
<hr>
<!-- property : dto 이름과 동일해야함. (input name 과도 같아야함) -->
<jsp:getProperty property="custno" name="dto"/><br>
<jsp:getProperty property="custname" name="dto"/><br>
<jsp:getProperty property="phone" name="dto"/><br>
<jsp:getProperty property="address" name="dto"/><br>
<jsp:getProperty property="grade" name="dto"/><br>
<jsp:getProperty property="city" name="dto"/><br>
<%
	MemberDAO dao = MemberDAO.getMemberDAO();
	dao.joinMember(dto);
	
%>