<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%//세션확인
    
    String name;
    if(session.getAttribute("name")!=null){
    	name = (String)session.getAttribute("name");
    }else{
    	name ="세션 값 없음";
    }
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>세션값: <%=name %>></h1>
<button type ="button" onclick="lacation.htef='sessionSet.jsp"> 세션값 저장 </button>
<button type ="button" onclick="lacation.htef='sessionRemove.jsp"> 세션값 삭제 </button>
<button type ="button" onclick="lacation.htef='sessionInvalidate"> 세션값 초기화 </button>
</body>
</html>