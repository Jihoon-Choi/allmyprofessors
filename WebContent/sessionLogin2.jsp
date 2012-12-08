<%@ page language="java" contentType="text/html; charset=utf-8"
  errorPage="loginerror.jsp" 
    pageEncoding="utf-8"%>
    <%session.setAttribute("email",request.getParameter("email")); %>
<html>
<head>
<title>로그인완료</title>
</head>
<body>
<center>
<h3>로그인되었습니다.</h3>
<h3>로그인 아이디 : <%=(String)session.getAttribute("email")%></h3>
<a href="sessionLogout.jsp">로그아웃</a>
</center>
</body>
</html>