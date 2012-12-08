<%@page contentType="text/html; charset=utf-8" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>


<%
    
	request.setCharacterEncoding("euc-kr");
	String str = request.getParameter("keyword");  
	String sel = request.getParameter("sel");
	
	if(str.equals("") || str.equals("") || str.equals(null)	){
		response.sendRedirect("index.jsp");}
	
	
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

