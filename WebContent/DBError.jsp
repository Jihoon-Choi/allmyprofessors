<%@page contentType="text/html; charset=utf-8" isErrorPage="true" %>
<% response.setStatus(200); %>
<HTML>
    <HEAD><TITLE>에러 발견</TITLE></HEAD>
    <BODY>
        <H3>에러가 발견되었습니다.</H3>
    		    에러 메시지: <%= exception.getMessage() %><br/>
    		<a href="./index.jsp">홈으로</a>
    </BODY>
</HTML>
