// package kr.co.mycompany.member;
package login;
import java.sql.*;
public class MemberDao {
 public MemberDao() { 
 }
 // DB 연결 메소드
 public Connection getConn() {
  Connection con = null;
  String url = "jdbc:mysql://localhost:3306/allmyprofessors";
  String email = "root";
  String password = "1234";
  try {
   Class.forName("com.mysql.jdbc.Driver");
   con = DriverManager.getConnection(url, email, password);
  } catch (Exception e) {
   e.printStackTrace();
  }
  return con;
 } // getConn
 
 //아이디와 비밀번호가 맞는지 체크
 public int checkEmailPw(String email, String password) {
  int flag = 0;
  //JDBC 5단계:드라이버 로딩, 연결, 명령, 결과, 자원해제
  Connection con = getConn();
  PreparedStatement ps = null;
  ResultSet rs = null;
  try{
   String sql = "select count(*) from student where email=? and password=?";
   ps = con.prepareStatement(sql);
   ps.setString(1, email);
   ps.setString(2, password);
   rs = ps.executeQuery();
   if(rs.next()) {
    flag = rs.getInt(1);
   }
  } catch(Exception e) {
   e.printStackTrace();
  } finally {
   close(con, ps, rs);
  } // finally
  return flag;
 }//checkIdPw
 
 //회원 정보 저장
 public boolean insert(MemberDto dto){
  boolean saveOk = false;
  Connection con = null;
  PreparedStatement ps = null;
  try {
   con=getConn();
   String sql = "insert into student" + "(student_email, password, name, major_name, school_name)" + 
   " values(?,?,?,?,?)";   //ctrl + shit + y = 대문자를 소문자로 바꾸기
   ps = con.prepareStatement(sql);
   ps.setString(1, dto.getemail());
   ps.setString(2, dto.getpassword());
   ps.setString(3, dto.getName());
   ps.setString(4, dto.getmajorname());
   ps.setString(5, dto.getschoolname());

   int x = ps.executeUpdate(); // 1이 반환되면 저장 성공
   if(x == 1) {
    saveOk = true;
   }
  } catch (Exception e) {
   e.printStackTrace();
  } finally {
   close(con, ps);
  }//finally
  return saveOk;
 }
 private void close(Connection con, PreparedStatement ps) {
  if(ps != null) {
   try {
    ps.close();
   } catch(Exception e) {}
   
  }
  if(con != null) {
   try {
    con.close();
   } catch(Exception e) {}
  }
 }
 private void close(Connection con, PreparedStatement ps, ResultSet rs) {
  if(rs != null) {
   try {
    rs.close();
   } catch (Exception e) { }
  }
  close(con, ps);
 }
}
