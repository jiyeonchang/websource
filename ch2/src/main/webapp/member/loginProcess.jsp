<%@page import="user.perslstence.userDAO"%>
<%@page import="user.domain.userDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//user 가보는 페이지 아님 
//index.jsp 에서 로그인값 가져오기 
String userid=request.getParameter("userid");
String password =request.getParameter("password");

// 데이터베이스 작업후 원하는 페이지로 이동
userDAO dao = new userDAO();

userDTO loginDto = dao.isLogin(userid,password);
if(loginDto!=null){
	//세션 객체에 값 담기(모든 페이지에서 세션 값을 사용할 수 있으)
	session.setAttribute("loginDto",loginDto);
	//페이지 이동 sendRedirect() or forward() 결정  
	response.sendRedirect("board.jsp");
	
    
}else{response.sendRedirect("/index.jsp");}


%>