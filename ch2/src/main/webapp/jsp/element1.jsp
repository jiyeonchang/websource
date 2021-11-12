
<!--  자바코드선언문 사용법 <%= %>-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! 
    private String str = "선언문";
    private String getStr(){
    	return str;
    } %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>jsp 스크립트 요소 - 선언문</h3>
<h4><%=getStr() %></h4>
<!--<%=getStr() %>는 private String str = "선언문";을 출력해줌  -->
</body>
</html>