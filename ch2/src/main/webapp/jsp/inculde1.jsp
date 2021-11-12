<!-- 다른 jsp페이지 포함 하고싶을때 쓰는 include <%@%>사용법 
    파일을 불러오면 두가지 페이지가 한페이지에떳는데 이유는? -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>include 지시어 테스트</h2>
<h3>오늘 날짜</h3>
<!-- 다른 jsp 파일도 가져와서 띄워줌 : 하나의 파일로 합친후 클래스 변환-->
<%@ include file="directive.jsp" %>
</body>
</html>