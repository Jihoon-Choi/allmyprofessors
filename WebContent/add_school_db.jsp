<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<%
    
	
	String school = request.getParameter("school");
	String homepage = request.getParameter("homepage");
	String tell = request.getParameter("tell");
	String year = request.getParameter("year");
	
	
    if (school == null) 
        throw new Exception("Data를 입력하십시오.");
    
	Connection conn = null;
  PreparedStatement stmt = null;
    
	try {
        Class.forName("com.mysql.jdbc.Driver");
		
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");
        if (conn == null)
            throw new Exception("Failed Connecting to DB");
			
        stmt = conn.prepareStatement("insert into school(name, homepage, tell, year)" + " values (?,?,?,?);");
        
        stmt.setString(1, school);
        stmt.setString(2, homepage);
        stmt.setString(3, tell);
        stmt.setString(4, year);        
        
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
    response.sendRedirect("add_school_end.jsp");
%>
