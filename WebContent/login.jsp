<%@ page contentType = "text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
 
<% request.setCharacterEncoding("euc-kr"); %>
 
<%
Connection conn = null;
Statement stmt = null;
 
String jdbc_driver = "com.mysql.jdbc.Driver";
String jdbc_url = "jdbc:mysql://localhost:3306/amp";
String sql;
 
String email = null;
String password = null;
String userId = request.getParameter("userId"); //입력받은 ID값 저장.
String userPwd = request.getParameter("userPwd");//입력받은 PASSWORD 저장.
 
if (request.getMethod().equals("POST")){  //POST로 넘긴값이 있을경우 즉, summit버튼을 클릭한경우
 try {
 
  Class.forName(jdbc_driver); //JDBC driver 로드
 
  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","2477"); //DB와 연결
 
  stmt = conn.createStatement(); //Connection으로부터 Statement 생성
 
  ResultSet rs = stmt.executeQuery("Select student_email, password From student"); //SELECT 쿼리 실행
  //DB에 회원 레코드가 없는 경우
  if (!rs.next()){   
   //insert문으로 DB에 회원아이디와 패스워드 저장.
   sql = "insert into student(student_email, password) values ('" + userId + "','" + userPwd + "')";
   stmt.close();
   stmt = null; //statement를 다시 생성.
   stmt = conn.createStatement();
   
   stmt.executeUpdate(sql); //INSERT 쿼리 실행
   //회원을 입력했음을 알림.
   out.print("<script>");
   out.print("alert('ID와 패스워드를 입력하였습니다.');");
   out.print("</script>");
   
   stmt.close();//statement 닫음.
    
   rs.close();//ResultSet 닫음.
  //DB에 회원이 있을 경우
  }else{
   try {  
     email = rs.getString("email"); //DB에서 회원 아이디를 가져와서 저장
     password = rs.getString("password"); //DB에서 회원 패스워드를 가져와서 저장
    //DB에 저장된 아이디와 패스워드를 입력한 아이디와 비밀번호를 비교한다.
    //아이디와 비밀번호가 맞지 않는 경우. 
    if(email.compareTo(userId)!=0 || password.compareTo(userPwd)!=0){
     out.print("<script>");
     out.print("alert('ID 또는 Password를 잘못 입력하였습니다.');");
     out.print("</script>");    
    } else { //아이디와 비밀번호가 일치하는 경우
     out.print("<script>");
     out.print("alert('ID와 Password가 일치합니다.');");
     out.print("</script>");
    }
    
    rs.close();  //모든 자원을 닫아준다.
    stmt.close();
    conn.close();
        
   }catch(Exception e){
    System.out.println(e);
   }
  }
 }catch(Exception e){
  System.out.println(e);
 }
}
 
%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>로그인 테스트</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">		
</head>
<body>
<H2>로그인화면</H2>
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



