<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<title>Login</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">		
</head>
 
<body>
 
	<div id="siteWrap">		
		<div id="header"><jsp:include page="header.jsp" flush="false"/></div>		
		<div id="nav"><jsp:include page="navbar.jsp" flush="false"/></div>
		
		<div id="contentsWrap">
			<div class="wrapper">			
 
   
         <form action="loginConfirm.jsp" method="post">
    <ul>
     <li>E-mail : <input name="email" type="text"/></li>
     <li>비밀번호 : <input name="password" type="password" /></li>
    </ul>
           <input type="submit" name="login" value="로그인"/>
           
           <p>계정이 없으세요? 그렇다면 가입해주세요!</p>
           	<a href="./signup_student.jsp"><input type="button" value="Sign-up" style="width:100px"></a>
         </form>
         
    			</div>
		</div>
	</div>

		<div id="footer">			
			<jsp:include page="footer.jsp" flush="false" />
		</div>
         
 </body>
 </html>
 
