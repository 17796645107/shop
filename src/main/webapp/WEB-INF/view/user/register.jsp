<%--
  Created by IntelliJ IDEA.
  User: 邓宁宁
  Date: 2019/12/26
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户注册</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/common/common.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/register.css"/>

</head>
<body>
    <div class="userRegister">
        <!--头部-->
        <jsp:include page="userHead.jsp"/>

        <div class="main">
            <div class="main_warp">
                <div class="register_warp">

                    <div class="register_nav">
                        <h3>会员注册</h3>
                        <span>已注册可<a href="${pageContext.request.contextPath}/user/toLogin">直接登录</a></span>
                    </div>

                    <div class="register_form">
                        <!--手机号码-->
                        <div class="telephone">
                            <i></i>
                            <input type="text" onblur="checkTelephone();" onfocus="clearTelephoneMsg()" id="telephone"
                                   placeholder="请输入手机号码" required="required"/>
                        </div>
                        <!--提示信息-->
                        <div class="telephone_msg"></div>

                        <!--验证码-->
                        <div class="code">
                            <i></i>
                            <input type="text" onblur="checkValidate()" placeholder="请输入验证码" id="verificationCode"
                                   required="required">
                        </div>
                        <input type="button" value="buttonContext" onclick="sendCode()" class="getCode"
                               disabled="disabled" required="required"/>
                        <!--提示信息-->
                        <div class="code_msg"></div>

                        <!--密码-->
                        <div class="password">
                            <i></i>
                            <input type="password" onblur="checkPassword()" placeholder="密码以字母开头，6-18位，数字和符号组合"
                            id="password"/>
                        </div>
                        <!--提示信息-->
                        <div class="password_msg"></div>

                        <!--重复密码-->
                        <div class="pwd">
                            <i></i>
                            <input type="password" onblur="checkRepeatPassword()" placeholder="请再次输入上面的密码"/>
                        </div>
                        <!--提示信息-->
                        <div class="pwd_msg"></div>

                        <!--用户协议-->
                        <div class="read">
                            <input type="checkbox" id="user_read" onblur="checkRead()"/>
                            <label for="user_read">我已阅读并接受以下条款：</label>
                            <a href="">《唯品会服务条款》</a>
                            <a href="">《隐私条款》</a>
                            <a href="">《唯品支付用户服务协议》</a>
                            <a href="">《唯品信用服务协议》</a>
                        </div>
                        <!--提示信息-->
                        <div class="read_msg"></div>

                        <!--提交按钮-->
                        <input type="submit" value="立即注册" class="sub_register" onclick="userRegister();"/>
                    </div>
                </div>
            </div>
        </div>

        <!--底部-->
        <jsp:include page="../common/footer.jsp"/>

    </div>
</body>
<script src="${pageContext.request.contextPath }/resources/user/js/register.js"></script>
</html>