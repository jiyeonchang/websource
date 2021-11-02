<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% //form1.jsp 에서 사용자가 입력한 값을 서버로 가져오는 역할 
		//HttpSevletRequest request=>request.getParameter("요소이름");
		
		
		//가져오는 값에대한 인코딩 처리 
		request.setCharacterEncoding("utf-8");
		
		pageContext.forward("forward1.jsp");
	/* String userid=	request.getParameter("userid");
	String password=	request.getParameter("password");
	String username=	request.getParameter("username"); */

%>
<%-- <p><%=userid %></p>
<p><%=password%></p>
<p><%=username%></p>
<P>client addr : <%=request.getRemoteAddr() %></P>
<P>client host : <%=request.getRemoteHost() %></P>
<P>client port : <%=request.getRemotePort() %></P>
<P>request URI : <%=request.getRequestURI() %></P>
<P>request port : <%=request.getProtocol() %></P> --%>