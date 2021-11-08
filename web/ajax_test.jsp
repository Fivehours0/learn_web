<%--
  Created by IntelliJ IDEA.
  User: pkl
  Date: 2021/10/31
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="static/js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        function ajaxRequest() {
            var xmlHttpRequest = new XMLHttpRequest();
            xmlHttpRequest.open("GET", "http://localhost:8080/learn_web/ajaxTest", false);
            xmlHttpRequest.onreadystatechange = function () {
                if (xmlHttpRequest.readyState === 4 && xmlHttpRequest.status === 200) {
                    document.getElementById("div01").innerHTML = xmlHttpRequest.responseText;
                }
            }
            xmlHttpRequest.send();
        }
    </script>


</head>
    <body>
<%--    多个按钮来测试同步请求和异步请求--%>
        <button onclick="ajaxRequest()">发起请求</button>
        <button onclick="ajaxRequest()">发起请求1</button>
        <button onclick="ajaxRequest()">发起请求2</button>
        <div id="div01"></div>
    </body>
<img src="img/小埋.jpg" width="700" height="700" alt="图片显示失败"/>
<img src="img/小林.jpg" width="668" height="713" alt="图片显示失败"/>
<img src="img/小埋.jpg" width="700" height="700" alt="图片显示失败"/>
<img src="img/小林.jpg" width="668" height="713" alt="图片显示失败"/>
</html>
