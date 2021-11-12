<!--이러한 페이지 지시어가 있다는 것을 알려줌 import도 들어감 
<%-- <%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> --%>
      -->
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>지시어</h1>
<%--page/include taglib --%>

<% SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
  Date date = new Date();
   out.print(format.format(date));%>
</body>
</html>