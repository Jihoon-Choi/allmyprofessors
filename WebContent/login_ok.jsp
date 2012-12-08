<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="login.MemberDao" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 성공</title>
</head>
<body>
<% 
request.setCharacterEncoding("euc-kr");
String email=request.getParameter("email");
String password=request.getParameter("password");

 if(email!=null && password!=null){
	session.setAttribute("email",email);
	session.setAttribute("password",password);
	}
%>
정상 로그인 되었습니다<br>
메뉴1<br>
메뉴2<br>
메뉴3<br>
메뉴4<br>
메뉴5<br>
</body>
</html>





