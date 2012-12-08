<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"  errorPage="DBError.jsp" %>

<%@ page  import="java.sql.*"  %>
 <%@ page session="true" %>
 
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
	 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	 <title>회원확인</title>
 </head>
 
<body>
 
<%
  String email = request.getParameter("email");
  String password = request.getParameter("password");
  
  email = new String(email.getBytes("8859_1"), "utf-8");
  password = new String(password.getBytes("8859_1"), "utf-8");
 
 Connection conn = null;
  Statement stmt = null;
  ResultSet rs = null;
  Boolean isLogin = false;
  
  try{
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp?" +
      "characterEncoding=utf-8", "root","2477");
    
    stmt = (Statement) conn.createStatement();
    // 현재 페이지의 글 가져오기
    rs = stmt.executeQuery("select * from student where student_email='" + email + "' and password='" + password + "'" );
    while( rs.next())
    {
     session.setMaxInactiveInterval(3600);
     session.setAttribute( "email", "true" );
     
     out.print( email );
     out.print( " 회원님 로그인이 처리되었습니다." );
     isLogin = true;
     %>
                  <br />
                  <a href="login2.jsp">로그인 페이지로 이동</a>
                 <%
    }
    
    if( !isLogin )
    {
     out.print( "회원정보가 없습니다. " );
     %>
  <input type="button" name="input" value="뒤로가기" onClick="javascript:window.location.href('login2.jsp')"/>
                 <%
    }
   }
   
   catch(ClassNotFoundException cnfe){
    out.println("해당 클래스를 찾을 수 없습니다." + cnfe.getMessage());
   }
   
   catch(SQLException se){
    out.println(se.getMessage());
   }
   
   try{
    conn.close();
   }
   catch(SQLException e){
    out.println(e.getMessage());
   }
 %>
 
</body>
 </html>
 
