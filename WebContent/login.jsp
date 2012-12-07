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
String userId = request.getParameter("userId"); //�Է¹��� ID�� ����.
String userPwd = request.getParameter("userPwd");//�Է¹��� PASSWORD ����.
 
if (request.getMethod().equals("POST")){  //POST�� �ѱ䰪�� ������� ��, summit��ư�� Ŭ���Ѱ��
 try {
 
  Class.forName(jdbc_driver); //JDBC driver �ε�
 
  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","2477"); //DB�� ����
 
  stmt = conn.createStatement(); //Connection���κ��� Statement ����
 
  ResultSet rs = stmt.executeQuery("Select student_email, password From student"); //SELECT ���� ����
  //DB�� ȸ�� ���ڵ尡 ���� ���
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
   
   stmt.close();//statement ����.
    
   rs.close();//ResultSet ����.
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
<!DOCTYPE HTML>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>�α��� �׽�Ʈ</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">		
</head>
<body>
<H2>�α���ȭ��</H2>
<div id="siteWrap">
		<div id="header">
			<jsp:include page="header.jsp" flush="false"/>
		</div>		
		<div id="nav">
			<jsp:include page="navbar.jsp" flush="false"/>
		</div>
	
		<div id="contentsWrap">
		
			
			
			<!--�α��� �ڽ�-->
			
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



