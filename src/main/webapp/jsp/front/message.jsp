<%--
  Created by IntelliJ IDEA.
  User: jie
  Date: 2018/11/26
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信息面板</title>
    <style type="text/css">
        #message{
            width:800px;
            height: 100px;
            margin: 100px auto;
        }
    </style>
</head>
<body>
    <div id="message">${param.message}</div>
</body>
</html>
