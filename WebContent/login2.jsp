<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page session="true" %>
 
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <title>로그인</title>
 </head>
 
<body>
 
<%
  session = request.getSession(true);
  if( session.getAttribute("email") != null && ((String)session.getAttribute("email")).equals("true"))
  {
   out.print("로그인 상태입니다. ");
   %>
   <input type="button" name="input" value="로그아웃" onClick="javascript:window.location.href('logoutConfirm.jsp')"/>
   <%
  }else{
   %>
   <p>
         <form action="loginConfirm.jsp" method="post">
    <ul>
     <li>아 이 디 : <input name="email" type="text"/></li>
     <li>비밀번호 : <input name="password" type="password" /></li>
    </ul>
           <input type="submit" name="login" value="로그인"/>
         </form>
   </p>
         <%
  }
 %>
 </body>
 </html>
 
