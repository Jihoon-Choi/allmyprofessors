<%@ page language="java" contentType="text/html; charset=utf-8"
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
	  String id = request.getParameter("id");
	  String pwd = request.getParameter("passwd");
	  
	  if (id == null || pwd == null || id.length() == 0 || pwd.length() == 0) {
		  %>
		   <div class="error">아이디와 비밀번호를 입력하세요.</div>
		  <%
	  } else if (id.equals("iu") && pwd.equals("12345")) {
		  // 로그인 성공
	      session.setAttribute("userId", "iu");
	      session.setAttribute("userName", "이지은");	
	      response.sendRedirect("ex2.jsp");	      
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
						<input type="submit" value="LOG-IN"></a>
				</div>
			</form>
		</div>
		
		
		<div id="footer">			
				<p> 
					사이트소개 | 이용약관 | 개인정보취급방침 | 고객센터
				</p>			
				<p> Copyright(c) Choi Jihoon. All rights reserved.
				</p>
		</div>
		
	</div>
	
</body>

</html>