<%@ page import="java.util.Map" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: pkl
  Date: 2021/10/14
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--tomcat会将jsp文件翻译成一个java类, 会将如下的代码片段加入到这个类中--%>

    jsp
<%--声明脚本--%>
<%--1.声明类变量--%>
    <%!
        private Integer id;
        private String name;
        private static Map<String, Object> map;
    %>
<%--2.声明static静态代码块--%>
    <%!
        static {
            map = new HashMap<>();
            map.put("k1", "v1");
            map.put("k2", "v2");
        }
    %>
<%--3.声明实例方法--%>
    <%!
        public int test() {
            return 12;
        }
    %>
<%--4.内部类--%>
    <%!
        // 只有内部类可以使用static
        public static class A {
            private int age;
        }
    %>




<%--表达式脚本--%>
<%--1.输出整型--%>
    <%=12%>
<%--2.输出浮点型--%>
    <%=12.12%>
<%--3.输出字符串--%>
    <%="我是字符串"%>
<%--4.输出对象--%>
    <%=map%>
<%--使用_jspService中的变量--%>
    <%=request.getParameter("username")%>
</body>
</html>
