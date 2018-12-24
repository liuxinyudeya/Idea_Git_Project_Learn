<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/24 0024
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>

<%!

    String pwd = "";
    String name = "";
%>
<%
    Cookie[] cookies = request.getCookies();
    for (Cookie c : cookies) {
        if (c.getName().equals("pwd")) {
            pwd = c.getValue();
        }
        if (c.getName().equals("username")) {
            name = c.getValue();
        }

    }
%>
<form action="saveCookie.jsp" method="post">
    <span>用户名 :</span><input type="text" name="username" value="<%=name%>"><br/>
    <span> 密 码 :</span><input type="text" name="pwd" value="<%=pwd%>"><br/>
    <input type="submit" value="登陆">
</form>
</body>
</html>
