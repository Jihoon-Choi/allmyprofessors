<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"  errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<%
    
	
		String email = request.getParameter("email");  
    String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String school = request.getParameter("school");
    String major = request.getParameter("major");	
		String phone = request.getParameter("phone");
	
    if (email == null || passwd == null || name == null) 
        throw new Exception("데이터를 입력하십시오.");
    
	Connection conn = null;
  PreparedStatement stmt = null;
    
	try {
        Class.forName("com.mysql.jdbc.Driver");
		
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");
        if (conn == null)
            throw new Exception("데이터베이스에 연결할 수 없습니다.");
			
        stmt = conn.prepareStatement("insert into professor(email, passwd, name, school, major, phone) " +
        	"	values (?,?,?,?,?,?)");
        
        stmt.setString(1, email);
        stmt.setString(2, passwd);
        stmt.setString(3, name);
        stmt.setString(4, school);
        stmt.setString(5, major);
        stmt.setString(6, phone);
        stmt.executeUpdate();
               
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
    response.sendRedirect("signup_student_after.jsp");
%>
