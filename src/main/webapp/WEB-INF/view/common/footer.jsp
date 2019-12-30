<%--
  Created by IntelliJ IDEA.
  User: 邓宁宁
  Date: 2019/12/25
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>resources/">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="common/common.css"/>
    <link rel="stylesheet" href="common/footer.css"/>

</head>
<body>
    <footer>
        <p>
            Copyright 2008-2018 shop.com，All Rights Reserved ICP证：豫 A2-20080329
        </p>
    </footer>
</body>
</html>
