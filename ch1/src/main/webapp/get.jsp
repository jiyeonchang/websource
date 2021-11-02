<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    //post방식 한글깨짐 방지 
    request.setCharacterEncoding("utf-8");
    
    //사용자의요청을 가져올때 request로 처리 (getParameter:form 안에들어있는내용)
    //사용자의 요청은 무조건 string으로 넘어온다
   String username = request.getParameter("username");
    String age = request.getParameter("age");
    String page1 = request.getParameter("page1");
    String bno = request.getParameter("bno");
    String gender = request.getParameter("gender");
    //하나의 값만 가져와 져서 request.getParameterValues로 변경
    String fruits[] = request.getParameterValues("fruits");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>이름 : <%=username %>: <%=age %>: <%=gender %>:<%=Arrays.toString(fruits) %></h3>
<h3>page : <%=page1%>,bno :<%=bno %></h3>
<!-- 1)index의 내용연결//
2) 실행했을때http://localhost:8080/get.jsp?username=hong
get.jsp?뒤에따라오는 username=hong가 get방식이다 
     3)새로고침 ctrl+f5 
     4)&로 age가 따라간다 -->
     
</body>
</html>