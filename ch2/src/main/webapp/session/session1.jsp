<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 로그인 페이지를 계속 끌고가기 위한 세션 연습  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 세션을 유지하는 시간 : 10 초  -->
<%session.setMaxInactiveInterval(10); %>
<h3>세션테스트</h3>
<p>isNew : <%=session.isNew() %></p>
<p>생성시간 : <%=session.getCreationTime() %></p>
<p>최정접속시간 : <%=session.getLastAccessedTime() %></p>
<p>세션id : <%=session.getId() %></p>
<div>
		<a href="section1.jsp">섹션 1 페이지</a>
	</div>
	<div>
		<a href="user.jsp">user 페이지</a>
	</div>
	<div>
		<a href="main.jsp">main 페이지</a>
	</div>
	<h2>세션객체에 담긴 값 : <%=session.getAttribute("name") %></h2>
	<h2>세션객체에 담긴 값 : <%=session.getAttribute("userid") 
%></h2>
</body>
</html>