<%@page import="sample.DTO.MemberDTO"%>
<%@page import="sample.DAO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//메소드 방식이 port 일 때는 인코딩이 꼭 필요합니다.
	request.setCharacterEncoding("UTF-8");
	
	int custno = Integer.parseInt(request.getParameter("custno"));
	String custname = request.getParameter("custname");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");

	MemberDTO dto = new MemberDTO(custno,custname,phone,address,null,grade,city);
	
	MemberDAO dao = MemberDAO.getMemberDAO();
	dao.joinMember(dto);
	
	 out.println("<script>");
     out.println("alert('회원 정보가 등록되었습니다.');");
     out.println("location.href='MemberList.jsp';");
     out.println("</script>");
	
	
%>
<!-- <script type="text/javascript">
	alert('회원 정보가 등록되었습니다.')
	window.location.href='MemberList.jsp'
</script> -->