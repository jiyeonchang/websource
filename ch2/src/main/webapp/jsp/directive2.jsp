<!-- 여기는 에러가 나왔을때 에러페이지로 이동하는 방법을 알려줌 
화면은 에러 페이지로 넘어갔지만 주소줄은 directiove2로 나와있다  
 -->
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
    <!-- 지시어에 errorPage="error.jsp"생성해서 에러를 알려주는 페이지로이동
    그전에 error.jsp 만드는것 잊지말기  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>지시어</h1>
<%--page/ include /taglib --%>
<!--  -->
<%
int a = 1,b=0;
out.print("<p>a와 b의 사칙연산<p>");
out.print("<p>a+b="+(a+b)+"</p>");
out.print("<p>a+b="+(a-b)+"</p>");
out.print("<p>a+b="+(a*b)+"</p>");
out.print("<p>a+b="+(a/b)+"</p>");
%>
</body>
</html>