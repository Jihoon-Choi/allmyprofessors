package login;

public class MemberDto {
	 private String email;
	 private String password;
	 private String name;
	 private String majorname;
	 private String schoolname;

	 public String getemail() {
	  return email;
	 }
	 public void setemail(String email) {
	  this.email = email;
	 }
	 public String getpassword() {
	  return password;
	 }
	 public void setpassword(String password) {
	  this.password = password;
	 }
	 public String getName() {
	  return name;
	 }
	 public void setName(String name) {
	  this.name = name;
	 }
	 public String getmajorname() {
	  return majorname;
	 }
	 public void setmajorname(String majorname) {
	  this.majorname = majorname;
	 }
	 public String getschoolname() {
	  return schoolname;
	 }
	 public void setschoolname(String schoolname) {
	  this.schoolname = schoolname;
	 }

}
