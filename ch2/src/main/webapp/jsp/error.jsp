<!-- directive2가 에러났을때 넘어오는 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
    <!-- isErrorPage="true" 라고 지시어에 추가함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>에러발생</h3>
<!-- 에러 메세지 가져오는 구문  -->
<%=exception.getMessage()%>
</body>
</html>