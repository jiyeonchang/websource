<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<% 
//request 객체 : 사용자의 요청을 가지고 올 수 있다 . 
//				사용자가 보낸 값도 가져온다 

//sendRedirect()/forward() 사용시 현재 페이지가 보여지지 않기 때문에 필요없는 코드가됨 
/* String page1= request.getParameter("page");
String password = request.getParameter("password");
out.print("page :" +page1+"<br>");
out.print("password :" +password+"<br>");


response.sendRedirect("adminProcess.jsp"); */

// /jsp/foward/admin.jsp => /jsp/foward/adminPage.js ==adminProcess.jsp
//request 가 같기 때문에 adminPage.jsp request  가 할수 있는 일을 
//adminProcess.jsp 도 할 수 있게 되는 것
pageContext.forward("adimProcess.jsp");

%>
<!-- <h2><a href = "adminProcess.jsp"></a></h2> -->