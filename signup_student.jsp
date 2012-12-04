<%@page contentType="text/html; charset=utf-8" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
	
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>

<body>
	<div id="header">
			<jsp:include page="header.jsp" flush="false"/>
	</div>
	
	<div id="nav">
		<jsp:include page="navbar.jsp" flush="false"/>
	</div>
		
		
  <div id="contentsWrap">
	<%	if (request.getMethod() == "POST") { %>
		 <div class="well">
		  <ul>
		    <li>E-mail : <%=request.getParameter("Email")%></li>
		    <li>Mame : <%=request.getParameter("name")%></li>
		    <li>Password : <%=request.getParameter("passwd")%></li>
		    <li>School : <%=request.getParameter("school")%></li>
		    <li>Major : <%=request.getParameter("major")%></li>		    
			</ul>
		 </div>
	<%} else { %>
		<div>
		<p> Create an Account </p>
			<p> Creating an account will let you rate professors, leave comments, and more.</p>
			<div id="ifprof">당신이 교수면, 특별한 계정이 필요하다. <a href="./signup_prof.html">CLICK</a>이곳을 눌러서 교수용 계정으로 가입해라.</div>
			
			  <h1>회원가입</h1>

			  <form class="form-horizontal" method="post">
				<fieldset>
					<div id="legend">
						<legend>Sign up</legend>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="email">E-mail</label>
						<div class="controls">
							<input type="email" placeholder="ex)webmaster@mju.ac.kr" name="email">
						</div>
					</div>
					
					
					<div class="control-group">
						<label class="control-label" for="name">Name</label>
						<div class="controls">
							<input type="text" placeholder="홍길동" name="name">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="pwd">Password</label>
						<div class="controls">
							<input type="password" placeholder="최소 6자이상" name="pwd">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="school">School</label>
						<div class="controls">
							<input type="text" placeholder="ex)명지대학교,송담대학..."name="school">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="major">major</label>
						<div class="controls">
							<input type="text" placeholder="ex)컴퓨터공학과,정보통신학과.."name="major">
						</div>
					</div>				

					

					<div class="form-actions">
						<input type="submit" class="btn btn-primary">
					</div>
				</fieldset>
			  </form>
		</div>
	<% } %>
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
        throw new Exception("데이터를 입력하십시오.");
    
	Connection conn = null;
    Statement stmt = null;
    
	try {
        Class.forName("com.mysql.jdbc.Driver");
		
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");
        if (conn == null)
            throw new Exception("데이터베이스에 연결할 수 없습니다.");
			
        stmt = conn.createStatement();
        String command = String.format("insert into student " +
                  "(student_email, password, name, major_name, school_name) values ('%s', '%s', '%s', '%s', '%s');",
                  email, password, name, major, school);
        int rowNum = stmt.executeUpdate(command);
		
        if (rowNum < 1)
            throw new Exception("데이터를 DB에 입력할 수 없습니다.");
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


