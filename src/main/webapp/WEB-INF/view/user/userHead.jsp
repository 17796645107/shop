<%--
  Created by IntelliJ IDEA.
  User: 邓宁宁
  Date: 2019/12/26
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<head>
    <title>用户头部</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/userHead.css"/>

</head>
<body>
    <header>
        <div class="head">
            <div class="logo">
                <a href="">
                    <img src="${pageContext.request.contextPath }/resources/user/image/logo.jpg" onclick="goIndex"/>
                </a>
            </div>
            <div class="service">
                <img src="${pageContext.request.contextPath }/resources/user/image/logoService.png" alt=""/>
            </div>
        </div>
    </header>
</body>
</html>
