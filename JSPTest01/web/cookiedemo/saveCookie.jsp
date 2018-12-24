<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/24 0024
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>saveCookie</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("username");
    String pwd = request.getParameter("pwd");

    Cookie cookie2 = new Cookie("username",name);
    Cookie cookie1 = new Cookie("pwd", pwd);

    response.addCookie(cookie1);
    response.addCookie(cookie2);
    response.sendRedirect("A.jsp");

%>
</body>
</html>
