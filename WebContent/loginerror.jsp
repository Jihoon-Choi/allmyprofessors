<%@page contentType="text/html; charset=euc-kr" isErrorPage="true" %>
<% response.setStatus(200); %>
<HTML>
    <HEAD><TITLE>Login 에러</TITLE></HEAD>
    <BODY>
        <H3>Login 에러</H3>
        에러 메시지: <%= exception.getMessage() %>
    </BODY>
</HTML>
