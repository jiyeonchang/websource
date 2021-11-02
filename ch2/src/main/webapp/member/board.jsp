<%@page import="user.domain.userDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% userDTO loginDto = (userDTO)session.getAttribute("loginDto"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>보드 페이지 </h1>
<h2><%=loginDto.getName() %>님 반갑습니다</h2>
</body>
</html>