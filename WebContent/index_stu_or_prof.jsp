<%@page contentType="text/html; charset=euc-kr" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<%
    
	
	String str = request.getParameter("keyword");  
	String sel = request.getParameter("sel");
	
	if(sel=1)
		 response.sendRedirect("professor.jsp");
	else
		 response.sendRedirect("school.jsp");
	
%>

