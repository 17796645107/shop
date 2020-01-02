<%--
  Created by IntelliJ IDEA.
  User: 邓宁宁
  Date: 2019/12/31
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>头部</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/common/css/header.css"/>

</head>
<body>
    <header class="top_nav">
        <div class="top_nav_main">
            <div class="now_address" id="now_address">
                <span>郑州市</span><i></i>
                <div class="now_address_hidden">
                    <div class="now_address_H_title">
                        <p>请选择你所在的收货地区</p>
                    </div>
                </div>
            </div>
            <ul class="top_nav_list">
                <c:if test="${true}">
                    <li class="nav_list_login" v-show="!UserState">
                        <a href="/user/login">请登录</a>
                        <div class="login_hidden">
                            <div class="login_msg">
                                <div class="login_icon">
                                    <img src="${pageContext.request.contextPath }/resources/common/image/avatar_89373029_1496285287409.jpg" alt="">
                                </div>
                                <a href="/user/login">欢迎回来 [请登录]</a>
                            </div>
                            <div class="user_msg">
                                <table border="0">
                                    <tr>
                                        <td><a href="">我的收藏</a></td>
                                        <td><a href="">我的订单</a></td>
                                    </tr>
                                    <tr>
                                        <td><a href="">零钱</a></td>
                                        <td><a href="">我的优惠券</a></td>
                                    </tr>
                                    <tr>
                                        <td><a href="">我的唯品币</a></td>
                                        <td><a href="">唯品金融</a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </li>
                </c:if>
                <c:if test="${false}">
                    <li class="nav_list_login">
                        <a href="/user/index">李慢慢</a>
                        <div class="login_hidden">
                            <div class="login_msg">
                                <div class="login_icon">
                                    <img src="${pageContext.request.contextPath }/resources/common/image/avatar_89373029_1496285287409.jpg"/>
                                </div>
                                <a href="/user/index">{{User.nickname}}</a>
                                <a href="javascript:;" class="logout" @click="Logout">[退出]</a>
                            </div>
                            <div class="user_msg">
                                <table border="0">
                                    <tr>
                                        <td><a href="">我的收藏</a></td>
                                        <td><a href="">我的订单</a></td>
                                    </tr>
                                    <tr>
                                        <td><a href="">零钱</a></td>
                                        <td><a href="">我的优惠券</a></td>
                                    </tr>
                                    <tr>
                                        <td><a href="">我的唯品币</a></td>
                                        <td><a href="">唯品金融</a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </li>
                </c:if>
                <c:if test="${true}">
                    <li class="nav_list_register">
                        <a href="${pageContext.request.contextPath}/user/register">注册</a>
                    </li>
                </c:if>
                <li class="nav_list_sign">
                    <i></i><a href="">签到有礼</a>
                    <!--
                                作者：1058156924@qq.com
                                时间：2018-11-10
                                描述：用户签到功能，待完善
                            -->
                    <!--<div class="sign_hidden">

                            </div>-->
                </li>
                <li class="nav_list_order">
                    <a href="${pageContext.request.contextPath}/user/orderDetail">我的订单</a>
                </li>
                <li class="nav_list_sale">
                    <a href="">我的特卖</a>
                    <div class="sale_hidden">
                        <span><a href="">品牌收藏 (0)</a></span>
                        <span><a href="">商品收藏 (0)</a></span>
                        <span><a href="">我的足迹 (0)</a></span>
                    </div>
                </li>
                <li class="nav_list_vip">
                    <a href="">会员俱乐部</a>
                    <div class="vip_hidden">
                        <ul>
                            <li><a href="">俱乐部首页</a></li>
                            <li><a href="">唯品币兑换</a></li>
                            <li><a href="">免费抽大奖</a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav_list_service">
                    <a href="">客户服务</a>
                    <div class="service_hidden">
                        <ul>
                            <li><a href="">联系客服</a></li>
                            <li><a href="">帮助中心</a></li>
                            <li><a href="">服务中心</a></li>
                            <li><a href="">知识产权起诉</a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav_list_phone">
                    <i></i><a href="">手机版</a>
                    <div class="phone_hidden">
<%--                        <img src="../../assets/index/1466134037230.jpg">--%>
                    </div>
                </li>
                <li class="nav_list_more">
                    <a href="">更多</a>
                    <div class="more_hidden">
                        <div class="zone">
                            <h3>合作专区</h3>
                            <ul>
                                <li><a href="">联名卡申请</a></li>
                                <li><a href="">唯品卡</a></li>
                                <li><a href="">支付专区</a></li>
                            </ul>
                        </div>
                        <div class="aboutMe">
                            <h3>关于我们</h3>
                            <ul>
                                <li><a href="">sell on vip</a></li>
                                <li><a href="">品牌招商</a></li>
                                <li><a href="">官方博客</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </header>
</body>
<script src="${pageContext.request.contextPath }/resources/common/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/common/js/header.js"></script>

</html>