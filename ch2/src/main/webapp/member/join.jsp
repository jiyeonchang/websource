<%@page import="user.domain.userDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <% userDTO loginDto = (userDTO)session.getAttribute("loginDto");
      %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>join 페이지 </h1>
<h2>반갑습니다</h2>

<h2>가져온 값 나열</h2>

<%= session.getAttribute("userid")%>
<%= session.getAttribute("password")%>
<%= session.getAttribute("name")%>
<%= session.getAttribute("gender")%>
<%= session.getAttribute("eamil")%>

</body>
</html>