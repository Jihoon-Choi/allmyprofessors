<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"  errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>





<html>
<head>
<script>
	function alert()
	  {
	  alert("Invalid value!!!");
	  }
</script>
</head>
<body>



<%    
	request.setCharacterEncoding("utf-8");

	String str = request.getParameter("keyword");  
	String sel = request.getParameter("sel");
	
	if(str.equals("") || str.equals(null)){%>
		alert();
		<%
	}
	
	
	if(sel.equals("1")){
		RequestDispatcher dispatcher = request.getRequestDispatcher("professor.jsp");
		dispatcher.forward(request, response); 	 
		 //response.sendRedirect("professor.jsp");
		 }
		 
	else{
		RequestDispatcher dispatcher = request.getRequestDispatcher("school.jsp");
		dispatcher.forward(request, response); 
		// response.sendRedirect("school.jsp");
		 }
	
%>

</body>
</html>