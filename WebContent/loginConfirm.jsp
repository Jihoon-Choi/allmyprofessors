<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
 <%@ page session="true" %>
 
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<title>LOGIN 확인</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">		
</head>
 
<body>
 
 	<div id="siteWrap">		
		<div id="header"><jsp:include page="header.jsp" flush="false"/></div>		
		<div id="nav"><jsp:include page="navbar.jsp" flush="false"/></div>
		
		<div id="contentsWrap">
			<div class="wrapper">			
 
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
      "characterEncoding=utf-8", "root","1234");
    
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
                  <a href="index.jsp">검색 페이지로 이동</a>
                 <%
    }
    
    if( !isLogin )
    {
     out.print( "회원정보가 없습니다. " );
     %>
  <input type="button" name="input" value="HOME" onClick="javascript:window.location.href('index.jsp')"/>
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
 
     			</div>
		</div>
	</div>

		<div id="footer">			
			<jsp:include page="footer.jsp" flush="false" />
		</div>
 
</body>
 </html>
 
