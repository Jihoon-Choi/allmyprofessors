<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8" errorPage="DBError.jsp" %>
<%@page import="java.sql.*" import="java.util.*"%>
<%
    
			String keyword = request.getParameter("keyword");
			String heung = request.getParameter("heung");
			String nan = request.getParameter("nan");
			String myung = request.getParameter("myung");

			String comment = request.getParameter("comment");

	
	
		Connection conn = null;
    PreparedStatement stmt = null;
    
	try {
        Class.forName("com.mysql.jdbc.Driver");
		
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");
        if (conn == null)
            throw new Exception("Failed Connecting to DB");
			
        String query ="select * from reputation where name='?';";
        stmt = conn.prepareStatement(query);
        stmt.setString(1, keyword);
        ResultSet rs = stmt.executeQuery();       

        String command = String.format("insert into reputation(keyword, grade_a, grade_b, grade_c)",keyword,heung,nan,myung);
       
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
