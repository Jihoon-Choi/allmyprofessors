<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="login.MemberDao" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>로그인 테스트</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">
</head>

<body>	

<%
 request.setCharacterEncoding("UTF-8"); //한글이 깨지지 않게 하기
 
 if(request.getMethod()=="POST") {
 String email = request.getParameter("email");
 String password = request.getParameter("password");
 MemberDao dao = new MemberDao();
 int flag = dao.checkEmailPw(email, password);
 //out.println("flag="+flag);
 
 	if(flag == 1) { //틀린 경우
  	response.sendRedirect("login_fail.jsp");
 	} else if(flag == 0) { //맞은 경우
			session.setAttribute("email", email);
  		session.setAttribute("password",password);
  		response.sendRedirect("login_ok.jsp");
 		} else if(email==null || password==null || email.length()==0 || password.length()==0) {
 				%>
 				<div class="error">이메일, 비밀번호 잘못됨.</div>
		<%
 			}
 }
 %>
 	

<div id="siteWrap">
		<div id="header">
			<jsp:include page="header.jsp" flush="false"/>
		</div>		
		<div id="nav">
			<jsp:include page="navbar.jsp" flush="false"/>
		</div>
	
		<div id="contentsWrap">
		
			
			
			<!--로그인 박스-->
			
			<form method="post">
				<div id="login_windows">					
						<p>E-Mail</p><input type="text" name="email">					
						<p>Password</p><input type="password" name="password">
						<input type="submit" value="LOG-IN">
				</div>
			</form>
		</div>
		
		
		<div id="footer">			
				<jsp:include page="footer.jsp" flush="false"/>
		</div>
		
	</div>
	
</body>
</html>



<%--<%@ page language="java" contentType="text/html; charset=utf-8"
 	errorPage="loginerror.jsp" 
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">
	
</head>

	
<body>

<%
  if (request.getMethod() == "POST") {
	  String email = request.getParameter("email");
	  String pwd = request.getParameter("passwd");
	  
	  if (email == null || pwd == null || email.length() == 0 || pwd.length() == 0) {
		  %>
		   <div class="error">아이디와 비밀번호를 입력하세요.</div>
		  <%
	  } else if (email.equals("iu") && pwd.equals("12345")) {
		  // 로그인 성공
	      session.setAttribute("useremail", "iu");
	      session.setAttribute("userName", "이지은");	
//	      response.sendRedirect("ex2.jsp");	      
		 } else {
		  %>
		   <div class="error">아이디나 비밀번호가 잘못되었습니다.</div>
		  <%
	  }
	  
  }
  %>
	<div id="siteWrap">
		<div id="header">
			<jsp:include page="header.jsp" flush="false"/>
		</div>		
		<div id="nav">
			<jsp:include page="navbar.jsp" flush="false"/>
		</div>
	
		<div id="contentsWrap">
		
			
			
			<!--로그인 박스-->
			
			<form method="post">
				<div id="login_windows">					
						<p>E-Mail</p><input type="text" name="email">					
						<p>Password</p><input type="password" name="passwd">
						<input type="submit" value="LOG-IN">
				</div>
			</form>
		</div>
		
		
		<div id="footer">			
				<jsp:include page="footer.jsp" flush="false"/>
		</div>
		
	</div>
	
</body>
</html>
--%>