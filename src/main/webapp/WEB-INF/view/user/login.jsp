<%--
  Created by IntelliJ IDEA.
  User: 邓宁宁
  Date: 2019/12/26
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/login.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/common/common.css"/>
</head>
<body>
    <div class="UserLogin">

        <!--头部-->
        <jsp:include page="userHead.jsp"/>

        <div class="main">
            <div class="main_warp">
                <div class="login_warp">
                    <div class="login_nav">
                        <div class="code_login">
                            <span>扫码登录</span>
                        </div>
                        <div class="account_login">
                            <span>账户登录</span>
                        </div>
                    </div>
                    <div class="login_form">
                        <div class="username">
                            <i class="el-icon-user"></i>
                            <input type="text" onclick="showUsernameList();" onblur="hiddenUsernameList();"
                                   id="telephone" placeholder="手机号" required="required"/>
                            <div class="usernameList">
                                <ul>
                                    <li v-for="user in UsernameCookie" onmouseover="fillUsername(user)">
                                        {{user[0]}}
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="password">
                            <i class="el-icon-unlock"></i>
                            <input type="password" id="password" placeholder="密码"
                                   required="required" @keyup.enter="userLogin"/>
                        </div>
                        <div class="group">
                            <div class="remember_username">
                                <input type="checkbox" id="r_username"/>
                                <label for="r_username">记住密码</label>
                            </div>
                            <div class="forget_password">
                                <a href="">忘记密码</a>
                            </div>
                        </div>
                        <input type="button" class="login_submit" value="登录" onclick="userLogin();"/>
                    </div>
                    <div class="other">
                        <div class="weChat">
                            <a href=""><span></span></a>
                        </div>
                        <div class="other_list">
                            <ul>
                                <li><a href="">新浪微博</a></li>
                                <li><a href="">QQ</a></li>
                                <li><a href="">支付宝</a></li>
                                <li><a href="">更多</a></li>
                                <li><a href="${pageContext.request.contextPath}/user/toRegister">免费注册</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--底部-->
        <jsp:include page="../common/footer.jsp"/>
    </div>

</body>
<script src="${pageContext.request.contextPath }/resources/common/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/user/js/login.js"></script>
</html>
