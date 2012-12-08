<%@ page contentType = "text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@page info="" language="java" import="java.sql.*,java.util.*"%>


		<%
		
		String email = request.getParameter("email");
		String passwd = request.getParameter("passwd"); 
		 
		 
		 Connection conn = null;
		 Statement stmt = null;
		 
		  
		 boolean success = false;
		 String script="";
		 try{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");
			Statement stmt = con.createStatement();
			String query = "select student_email,password from student;";
			ResultSet rs = stmt.executeQuery(query);
			   
			while(rs.next()){			 
				 if (id.equals(rs.getString(1)) && pwd.equals(rs.getString(2)))  {				 			
					  System.out.println("성공3");					   
					  response.sendRedirect("./login_success.jsp"); 
				 }
				 else  {
					  System.out.println("실패1");					
					  response.sendRedirect("./login_fail.jsp");
				 }
			}
			
			//PreparedStatement rs = con.prepareStatement(query);
				rs.close();
				stmt.close();
				con.close();     
			}
		   catch(Exception e) {
			System.out.println(e);
			//response.sendRedirect("./login_fail.jsp");
		   } 
			%>

 
 
 
 
 
 
 
 
 
 <!--
 
 
<% request.setCharacterEncoding("euc-kr"); %>
 
<%
Connection conn = null;
Statement stmt = null;
 


 

String email = request.getParameter("email"); //입력받은 ID값 저장.
String passwd = request.getParameter("passwd");//입력받은 PASSWORD 저장.

String email = null;
String password = null;

String sql;

 
if (request.getMethod().equals("POST")){  //POST로 넘긴값이 있을경우 즉, summit버튼을 클릭한경우
	try {
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
   
	   stmt.close();
	   rs.close();
  
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
-->
