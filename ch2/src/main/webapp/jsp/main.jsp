
<!-- 인클루드를 사용했을때 페이지가 합쳐진것인지확인법 
footer와 같은 변수 선언했을대 있는 변수라고 에러 뜸 ,같은 변수 선언 불가능 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>


<%int age = 10; %>
<%-- <%@include file="footer.jsp" %>--%>
</body>
</html>