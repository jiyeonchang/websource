<%@page import="user.domain.userDTO"%>
<%@page import="user.perslstence.userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String userid=request.getParameter("userid");
String password =request.getParameter("password");
String name =request.getParameter("name");
String gender=request.getParameter("gender");
String email =request.getParameter("email");

session.setAttribute("userid", userid);
session.setAttribute("password", password);
session.setAttribute("name", name);
session.setAttribute("gender", gender);
session.setAttribute("email", email);
// 데이터베이스 작업후 원하는 페이지로 이동
userDAO dao = new userDAO();

userDTO loginDto = dao.isLogin(userid, password);
if(loginDto!=null){

	session.setAttribute("loginDto",loginDto);

	response.sendRedirect("join.jsp");
	
    
}else{response.sendRedirect("er.jsp");}


%>
</body>
</html>