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
					  System.out.println("����3");					   
					  response.sendRedirect("./login_success.jsp"); 
				 }
				 else  {
					  System.out.println("����1");					
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
 


 

String email = request.getParameter("email"); //�Է¹��� ID�� ����.
String passwd = request.getParameter("passwd");//�Է¹��� PASSWORD ����.

String email = null;
String password = null;

String sql;

 
if (request.getMethod().equals("POST")){  //POST�� �ѱ䰪�� ������� ��, summit��ư�� Ŭ���Ѱ��
	try {
		if (!rs.next()){   
	   //insert������ DB�� ȸ�����̵�� �н����� ����.
	   sql = "insert into student(student_email, password) values ('" + userId + "','" + userPwd + "')";
	   stmt.close();
	   
	   stmt = null; //statement�� �ٽ� ����.
	   stmt = conn.createStatement();
   
		stmt.executeUpdate(sql); //INSERT ���� ����
	   //ȸ���� �Է������� �˸�.
	   out.print("<script>");
	   out.print("alert('ID�� �н����带 �Է��Ͽ����ϴ�.');");
	   out.print("</script>");
   
	   stmt.close();
	   rs.close();
  
  //DB�� ȸ���� ���� ���
  }else{
   try {  
     email = rs.getString("email"); //DB���� ȸ�� ���̵� �����ͼ� ����
     password = rs.getString("password"); //DB���� ȸ�� �н����带 �����ͼ� ����
    //DB�� ����� ���̵�� �н����带 �Է��� ���̵�� ��й�ȣ�� ���Ѵ�.
    //���̵�� ��й�ȣ�� ���� �ʴ� ���. 
    if(email.compareTo(userId)!=0 || password.compareTo(userPwd)!=0){
     out.print("<script>");
     out.print("alert('ID �Ǵ� Password�� �߸� �Է��Ͽ����ϴ�.');");
     out.print("</script>");    
    } else { //���̵�� ��й�ȣ�� ��ġ�ϴ� ���
     out.print("<script>");
     out.print("alert('ID�� Password�� ��ġ�մϴ�.');");
     out.print("</script>");
    }
    
    rs.close();  //��� �ڿ��� �ݾ��ش�.
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
