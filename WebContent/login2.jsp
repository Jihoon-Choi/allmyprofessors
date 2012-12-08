<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"  errorPage="DBError.jsp" %>
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
 
<%
  session = request.getSession(true);
  if( session.getAttribute("email") != null && ((String)session.getAttribute("email")).equals("true"))
  {
   // out.print("로그인 상태입니다. ");
   %>
   <input type="button" name="input" value="로그아웃" onClick="javascript:window.location.href('logoutConfirm.jsp')"/>
   <%
  }else{
   %>
   <%
  }
 %>
   
         <form action="loginConfirm.jsp" method="post">
    <ul>
     <li>아 이 디 : <input name="email" type="text"/></li>
     <li>비밀번호 : <input name="password" type="password" /></li>
    </ul>
           <input type="submit" name="login" value="로그인"/>
         </form>
         
    			</div>
		</div>
	</div>

		<div id="footer">			
			<jsp:include page="footer.jsp" flush="false" />
		</div>
         
 </body>
 </html>
 
