<%@ page language="java" contentType="text/html; charset=utf-8"
  errorPage="loginerror.jsp" 
    pageEncoding="utf-8"%>
    
<html>
<head>
<title>Login</title>
</head>
<body>
<form action="sessionLogin2.jsp" method="post">

<div id="siteWrap">
<div id="header">
      <div id="header_left">
        <a href="./index.jsp"><img src="./img/logo.png" width="200px" height="100px"></a>
      </div>          
      
      <div id="header_right">     
        <input type="button" value="Login" style="width:100px" disabled="disabled">
        <input type="button" value="Sign-up" style="width:100px" >
      </div>
      
      <div id="header_search">
        <input type="text">
        <input type="button" value="Search">      
      </div>
      
    </div>
<div id="login_windows">
<div id="contentsWrap">

          <!--로그인에서의 id입력-->
          <div id="enter_id">
            <p>E-Mail</p><input type="text" name="email">       
          </div>
          
          <!--로그인에서의 password입력-->
          <div id="enter_password">
            <p>Password</p><input type="password" name="passwd">
          </div>

          <input type="submit" value="LOG-IN"></a>
        </div>
        
     </div>
     </div>
     </form>
      

</body>
</html>