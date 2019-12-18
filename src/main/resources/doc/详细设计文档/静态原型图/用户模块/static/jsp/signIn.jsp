<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/17
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="../css/signIn.css">
</head>
<body id="i88" style="margin: 0">
<div class = "pg_header">
    <a class = "logo">LOGO</a>
    <a class="pg_dl" id="i77">注册</a>
</div>
<form  method="post"  action="">
    <div class="left"></div>
    <div class="pg_body">
        <div class="menu">用户名:</div>
        <div class="kong">
            <input id="text1" type="text" name="01" placeholder="请输入用户名" onblur="check()"><span id="div1" class="tian" style="margin-top: 4px">*(为必填)</span>
        </div>
        <div class="menu">真实姓名:</div>
        <div class="kong">
            <input id="i2" type="text" name="01">
        </div>
        <div class="menu">性别:</div>
        <div class="kong" style="width:200px;">
            男<input type="radio" name="gender" value="1">
            女 <input type="radio" name="gender" value="2">
        </div>
        <div class="menu">密码:</div>
        <div class="kong">
            <input id="text2" type="password" name="02" onblur="check()">
            <span id="div2" class="tian" style="margin-top: -25px">*(为必填)</span>
        </div>
        <div class="menu">确认密码:</div>
        <div class="kong">
            <input id="text3" type="password" name="01" onblur="check()">
            <span id="div3" class="tian">*(为必填)</span>
        </div>
        <div class="menu">电话号码:</div>
        <div class="kong">
            <input id="i5" type="text" name="01">
        </div>
        <div class="menu">邮箱地址:</div>
        <div class="kong">
            <input id="text4" type="text" name="01" onblur="check()">
            <span id="div4" class="tian">*(为必填)</span>
        </div>
        <div class="menu">头像上传:    </div>
        <div class="kong">
            <input type="file" name="file" value="选择头像" accept="image/*">
        </div>
        <div class="menu">爱好:</div>
        <div class="kong" style="width: 300px;">
            撩妹 <input type="checkbox" name="favor">
            写代码 <input type="checkbox" name="favor">
            篮球 <input type="checkbox" name="favor">
            足球 <input type="checkbox" name="favor">
        </div>
        <div class="menu">个人签名:</div>
        <div class="kong">
                    <textarea name="meno" style="width: 280px;height: 40px;">
                    有点懒。。。。
                    </textarea>
        </div>
    </div>
    <div class="can">
        <input id="i111" type="submit" name="002" value="注  册">
        <p style="width: 200px;display: inline-block;"></p>
        <input id="i222" type="button" name="004" value="取  消">
    </div>
</form>
<script type="text/javascript" src="../js/signIn.js">
</script>
</body>
</html>
