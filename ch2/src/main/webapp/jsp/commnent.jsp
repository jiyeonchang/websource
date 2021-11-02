<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <%%>으로 시작 -->
<%-- jsp주석--%>
<%
//1-10까지 출력
for(int i=1; i<11; i++){
//out => 화면 출력 할때 
	out.print(i+"<br>");
}
//실행시 에러뜰때 참고: https://lucasjeong.tistory.com/55

%>

<div> 
<a href= "sendRedirect.jsp">이동</a>
 <a href= "main.jsp">이동</a>
 </div>
</body>
</html>