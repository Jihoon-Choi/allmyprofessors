<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" import="java.sql.*" errorPage="DBError.jsp"%>

<!---->
	
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>All My Professors</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet" type="text/css">	
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/bootstrap.min.js"></script>	
	
</head>


<body>
	<div id="siteWrap">		
		<div id="header">
			<jsp:include page="header.jsp" flush="false"/>
		</div>		
		<div id="nav">
			<jsp:include page="navbar.jsp" flush="false"/>
		</div>


		 <div id="contentsWrap">
		  <div class="container">
			<%	if (request.getMethod() == "POST") { %>
				 <div class="well">
				  <ul>
					<li>E-mail : <%=request.getParameter("email")%></li>
					 <li>��й�ȣ : <%=request.getParameter("pwd")%></li>
					<li>�̸� : <%=request.getParameter("name")%></li>	    
					<li>School : <%=request.getParameter("school")%></li>
					<li>���� : <%=request.getParameter("major")%></li>		    
				   
					</ul>
				 </div>
		  <%} else { %>
			<div>
				  <h1>All My Professor SIGN-UP FORM</h1>

				  <form class="form-horizontal" method="post">
					<fieldset>
						<div id="legend">
							<legend>Sign up</legend>
						</div>
						
						<div class="control-group">
							<label class="control-label" for="email">E-mail</label>
							<div class="controls">
								<input type="email" placeholder="hong@abc.com" name="email">
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label" for="pwd">Password</label>
							<div class="controls">
								<input type="password" name="pwd">
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label" for="name">Name</label>
							<div class="controls">
								<input type="text" placeholder="ȫ�浿" name="name">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="school">Name</label>
							<div class="controls">
								<input type="text" placeholder="��)�������б�" name="name">
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label" for="major">Name</label>
							<div class="controls">
								<input type="text" placeholder="��)��ǻ�Ͱ��а�" name="name">
							</div>
						</div>													

						<div class="form-actions">
							<input type="submit" class="btn btn-primary">
						</div>
					</fieldset>
				  </form>
					</div>
					<% } %>
			<div id="footer">			
					<jsp:include page="footer.jsp" flush="false"/>
			</div>
		  </div>
		  </div>
  
			<div id="footer">			
					<jsp:include page="footer.jsp" flush="false" />
			</div>
		</div>
  
	</body>
</html>




<%
    
	
	String email = request.getParameter("email");  
    String password = request.getParameter("passwd");
	String name = request.getParameter("name");
	String school = request.getParameter("school");
    String major = request.getParameter("major");	
	
    if (email == null || password == null || name == null) 
        throw new Exception("�����͸� �Է��Ͻʽÿ�.");
    
	Connection conn = null;
    Statement stmt = null;
    
	try {
        Class.forName("com.mysql.jdbc.Driver");
		
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");
        if (conn == null)
            throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�.");
			
        stmt = conn.createStatement();
        String command = String.format("insert into student " +
                  "(student_email, password, name, major_name, school_name) values ('%s', '%s', '%s', '%s', '%s');",
                  email, password, name, major, school);
        int rowNum = stmt.executeUpdate(command);
		
        if (rowNum < 1)
            throw new Exception("�����͸� DB�� �Է��� �� �����ϴ�.");
    }
    finally {
        try { 
            stmt.close();
        } 
        catch (Exception ignored) {
        }
        try { 
            conn.close();
        } 
        catch (Exception ignored) {
        }
    }
    response.sendRedirect("signup_student_after.jsp");
%>
