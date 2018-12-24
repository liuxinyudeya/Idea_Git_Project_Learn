<%@ page import="java.net.CookieHandler" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/24 0024
  Time: 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add_cookie</title>
</head>
<body>
    <%
        Cookie cookie1 = new Cookie("name","liuxinyu");
        Cookie cookie2 = new Cookie("pwd","123456");
        response.addCookie(cookie1);
        response.addCookie(cookie2);
        response.sendRedirect("result.jsp");
    %>
</body>
</html>
