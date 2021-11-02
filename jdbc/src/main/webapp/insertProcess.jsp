<%@page import="user.domain.MemberDTO"%>
<%@page import="user.perisstence.MemberDAO"%>
<%@page import="user.perisstence.JdbcUtil"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("utf-8");
//insert.jsp 에서 넘긴 값 가져오기 
MemberDTO dto = new MemberDTO();
dto.setUserid(request.getParameter("userid"));
dto.setPassword(request.getParameter("password"));
dto.setName(request.getParameter("name"));
dto.setGender(request.getParameter("gender"));
dto.setEmail(request.getParameter("email"));

//db작업
//Connection 생성 하기
Connection con = JdbcUtil.getConnection();

MemberDAO dao = new MemberDAO(con);
boolean insertFlag= dao.insert(dto);
//db작업 결과에 따라 페이지 이동
if(insertFlag){
	response.sendRedirect("index.jsp");
	JdbcUtil.commit(con);
}else{	//입력실패
JdbcUtil.rollback(con);
	response.sendRedirect("insert.jsp");
}

%>