<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8" errorPage="DBError.jsp" %>
<%@page import="java.sql.*" import="java.util.*"%>
<%
    
	
			String school = request.getParameter("school");
			String name = request.getParameter("name");	
	    String major = request.getParameter("major");	
			String comment = request.getParameter("comment");
			String year = request.getParameter("year");
	
    if (school == null || name == null) 
        throw new Exception("데이터를 입려하십시오");

    
		Connection conn = null;
    PreparedStatement stmt = null;
    
	try {
        Class.forName("com.mysql.jdbc.Driver");
		
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");
        if (conn == null)
            throw new Exception("데이터베이스에 연결 불가능");        
			
        stmt = conn.prepareStatement(
        		"insert into reputation(school, name, major,comment, year) "  
        		+ "values(?,?,?,?,?)"
        		);
        
        stmt.setString(1, school);
        stmt.setString(2, name);
        stmt.setString(3, major);
        stmt.setString(4, comment);
        stmt.setString(5, year);
		
       
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
    response.sendRedirect("add_prof_end.jsp");
%>
