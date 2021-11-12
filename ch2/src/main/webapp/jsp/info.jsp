
<!--request.getParameter("요소이름") 으로 사용자가 입력한 입력값  info로 가져와보기 fomr1이 시작 페이지임 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//form1.jsp 에서 사용자가 입력한 값을 서버로 가져오는 역할 
//HttpSevletRequest request=>request.getParameter("요소이름");

//	<form action="info.jsp" method="post">로 보낼때는 가져오는 값에대한 인코딩 처리 


	request.setCharacterEncoding("utf-8");	
	
	String userid=request.getParameter("userid");
	String password=request.getParameter("password");
	String username=request.getParameter("username");		
%>
<p><%=userid%></p>
<p><%=password%></p>
<p><%=username%></p>
<!--클라이언트가 어떤 아이피로 들어왔는지 알수있음 
request.getRemoteAddr()=>로컬 호스트 주소 
request.getRemoteHost() =>로컬 호스트 주소 
request.getRemotePort()=>포트번호
request.getRequestURI()=>사용자가 이용한 uri기록(본페이지 정보)
request.getProtocol()=>프로토콜과 버전 정보 
  -->

<p>client addr : <%=request.getRemoteAddr() %></p>
<p>client host : <%=request.getRemoteHost() %></p>
<p>client port : <%=request.getRemotePort() %></p>
<p>request URI : <%=request.getRequestURI() %></p>
<p>request protocol : <%=request.getProtocol() %></p>













