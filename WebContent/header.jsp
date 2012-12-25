<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">	
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	
</head>

<body>

	<script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    


	<div id="header_top">			
		<%
		  session = request.getSession(true);
		  if( session.getAttribute("email") != null && ((String)session.getAttribute("email")).equals("true"))
		  {
		
		   %>
		   <input type="button" class="btn btn-danger" name="input" value="Log-out" onClick="javascript:window.location.href('logoutConfirm.jsp')"/>
		   <%
			  }else{%>
			<input type="button" class="btn btn-danger" name="input" value="Log-in" onClick="./signup_student.jsp"/>
			   
			   <%
			  }
			 %>
		<a href="./signup_student.jsp"><input type="button" class="btn btn-warning" value="Sign-up" style="width:100px"></a>
	</div>
	
	<div id="header_left">
		<a href="./index.jsp"><img src="./img/logo.png" width="170px" height="90px"></a>
	</div>					
		
	<div id="header_search">
		<form ACTION="./index_stu_or_prof.jsp" METHOD="get">					
			<input type=text name="keyword" id="search_box">	
				
			<select name="sel">
				<option value="1">Professor </option>
				<option value="2">School </option>
			</select>	
						
			<input type=submit value="Search">
		</FORM>			
	</div>

</body>
</html>