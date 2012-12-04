<%@page contentType="text/html; charset=euc-kr" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<%
    
  
  String email = request.getParameter("email");  
  String password = request.getParameter("passwd");
  String pwd_confirm = request.getParameter("pwd_confirm");
  String name = request.getParameter("name");
  String school = request.getParameter("school");
  String major = request.getParameter("major"); 
  
  if (email == null || email.trim().length() == 0)
    throw new Exception("email을 반드시 입력해주세요.");
    
  if (password == null ||password.length() < 8)
      throw new Exception("비밀번호는 8자 이상 입력해주세요.");
  
  if (!password.equals(pwd_confirm)) 
    throw new Exception("비밀번호가 일치하지 않습니다.");
    
  if (name == null || name.trim().length() == 0)
    throw new Exception("이름을 반드시 입력해주세요.");
    
    
  if (school == null || school.trim().length() == 0) 
      throw new Exception("학교를 반드시 입력해주세요.");
    
    
  if (major == null || major.trim().length() == 0)
      throw new Exception("전공을 반드시 입력해주세요.");
  

    
  Connection conn = null;
  Statement stmt = null;
    
  try {
        Class.forName("com.mysql.jdbc.Driver");
    
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");
        if (conn == null)
            throw new Exception("데이터베이스에 연결할 수 없습니다.");
      
        stmt = conn.createStatement();
        String command = String.format("insert into student " +
                  "(student_email, password, name, major_name, school_name) values ('%s', '%s', '%s', '%s', '%s');",
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
    response.sendRedirect("signup_student_after.jsp");
%>
