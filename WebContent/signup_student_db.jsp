<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"  errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<%
    
	//변경 요!! 아랫 부분은 스트링 객체 생성
	String email = request.getParameter("email");  
    String password = request.getParameter("passwd");
	String name = request.getParameter("name");
	String school = request.getParameter("school");
    String major = request.getParameter("major");	
	
	//(옵션)변경 요!! 셋중 하나라도 입력 안하면 에러뜨게함. cf)||는 OR의 의미 
    if (email == null || password == null || name == null) 
        throw new Exception("데이터를 입력하십시오.");
    
	Connection conn = null;
    Statement stmt = null;
    
	try {
        Class.forName("com.mysql.jdbc.Driver");
		
		//변경 요!! amp는 database명, root:ID, 1234:password -->
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");
        if (conn == null)
            throw new Exception("데이터베이스에 연결할 수 없습니다.");
			
        stmt = conn.createStatement();
		
		//변경 요!! insert into 테이블명 DB에 요소들 values 자료형 -->
        String command = String.format("insert into student " +
                  "(student_email, password, name, major_name, school_name,year) values ('%s', '%s', '%s', '%s', '%s','%s');",
                  email, password, name, major, school);
        int rowNum = stmt.executeUpdate(command);
		
        if (rowNum < 1)
            throw new Exception("데이터를 DB에 입력할 수 없습니다.");
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
	
	//변경 요!! 끝나고 어디 페이지로 갈건지... -->
    response.sendRedirect("signup_student_after.jsp");
%>
