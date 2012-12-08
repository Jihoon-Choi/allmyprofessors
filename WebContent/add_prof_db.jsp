<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<%
    
	
			String school = request.getParameter("school");
			String name = request.getParameter("name");	
	    String major = request.getParameter("major");	
			String comment = request.getParameter("comment");
	
    if (school == null || name == null) 
<<<<<<< HEAD
        throw new Exception("�����͸� �Է��Ͻʽÿ�.");
=======
        throw new Exception("데이터를 입려하십시오");
>>>>>>> 7227e4602cbe75e2b74776a4e1fcc4ddfbd7f9e8
    
	Connection conn = null;
    Statement stmt = null;
    
	try {
        Class.forName("com.mysql.jdbc.Driver");
		
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","2477");
        if (conn == null)
<<<<<<< HEAD
            throw new Exception("�����ͺ��̽��� ������ �� ����ϴ�.");
=======
            throw new Exception("데이터베이스에 연결 불가능");
>>>>>>> 7227e4602cbe75e2b74776a4e1fcc4ddfbd7f9e8
			
        stmt = conn.createStatement();
        String command = String.format("insert into reputation" +
                  "(school, name, major,comment) values ('%s','%s','%s','%s');",
                  school, name, major, comment);
        int rowNum = stmt.executeUpdate(command);
		
        if (rowNum < 1)
<<<<<<< HEAD
            throw new Exception("�����͸� DB�� �Է��� �� ����ϴ�.");
=======
            throw new Exception("데이터를 DB에 입력할 수 없습니다.");
>>>>>>> 7227e4602cbe75e2b74776a4e1fcc4ddfbd7f9e8
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
