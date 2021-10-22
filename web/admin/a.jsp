<%--
  Created by IntelliJ IDEA.
  User: pkl
  Date: 2021/10/15
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--    这里模拟以下登录--%>
    <%
        Object user = request.getSession().getAttribute("user");
        if (user == null) {
            // 如果用户为空，说明没有登录，将请求转发至首页
            request.getRequestDispatcher("/index.jsp").forward(request, response);
            return;
        }
    %>
    a.jsp文件
</body>
</html>
