<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<%
    
	
	String school = request.getParameter("school");
	String homepage = request.getParameter("homepage");
	String tell = request.getParameter("tell");
	
	
    if (school == null) 
        throw new Exception("Data를 입력하십시오.");
    
	Connection conn = null;
    Statement stmt = null;
    
	try {
        Class.forName("com.mysql.jdbc.Driver");
		
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");
        if (conn == null)
            throw new Exception("Failed Connecting to DB");
			
        stmt = conn.createStatement();
        String command = String.format("insert into school" +
                  "(name, homepage, tell,year) values ('%s','%s','%s','%s');",
                  school, homepage, tell);
        int rowNum = stmt.executeUpdate(command);
		
        if (rowNum < 1)
            throw new Exception("DATA를 DB에 입력 불가능합니다.");
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
