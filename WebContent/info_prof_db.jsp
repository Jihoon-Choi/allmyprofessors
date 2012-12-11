<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8" errorPage="DBError.jsp" %>
<%@page import="java.sql.*" import="java.util.*"%>
<%
    
			String keyword = request.getParameter("keyword");
			String heung = request.getParameter("heung");
			String nan = request.getParameter("nan");
			String myung = request.getParameter("myung");
			String comment = request.getParameter("comment");
			
			
			Connection conn = null;
		    Statement stmt = null;
		    
			try {
		        Class.forName("com.mysql.jdbc.Driver");
				
		        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");
		        if (conn == null)
		            throw new Exception("데이터베이스에 연결할 수 없습니다.");
					
		        stmt = conn.createStatement();
		        String command = String.format("insert into reputation " +
		                  "(name, grade_a, grade_b, grade_c, comment) values ('%s', '%s', '%s', '%s', '%s');",
		                  keyword, heung, nan, myung, comment);
		        int rowNum = stmt.executeUpdate(command);
				
		        if (rowNum < 1)
		            throw new Exception("데이터를 DB에 입력할 수 없습니다.");
		    }
		    finally {
		        try {stmt.close();
		        } catch (Exception ignored) {
		        }      
				try { conn.close();
		        } catch (Exception ignored) {
		        }
		    } response.sendRedirect("info_prof_db_after.jsp");
		%>

			
			
			
		
			
			
			
