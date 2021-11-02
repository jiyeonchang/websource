<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% //특정 세션 제거 

session.removeAttribute("name");
//페이지 이동
response.sendRedirect("sessionTest1.jsp");

%>
</body>
</html>