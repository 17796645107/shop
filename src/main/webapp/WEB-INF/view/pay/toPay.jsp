<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 王攀
  Date: 2019/12/30 0030
  Time: 上午 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>前往支付</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/pay/css/buju.css"/>
    <script src="${pageContext.request.contextPath }/resources/pay/JavaScript/toPay.js"></script>
</head>
<body>
    <!-- 导航栏 -->
    <div class="header">

        <!-- 左侧导航栏 -->
        <div class="left_header">
            <font size="+3" style="float:right">支付订单</font>
        </div>

        <!-- 右侧导航栏 -->
        <div class="right_header">
            <a href="#">用户</a>
            <a href="#">我的订单</a>
        </div>
    </div>
    <br>
    <br>
    <br>
    <div class="zhongjian" >
        <div class="zj001">
            <font size="+3" style="float:left">订单提交成功！前往支付~</font>
            <font size="+2" style="float:right"><a>应付金额：</a>
                <font color="#FF9933" size="+1">${order.actualAmount}元</font></font>

            <br><br>
            <br><br>
            <h4 align="left">订单详情:</h4>
            <table align="center">
                <tr>
                    <td><font style="float:right">订单号：</font></td>
                    <td><font style="float:left">${order.orderNumber}</font></td>
                </tr>
                <tr>
                    <td><font style="float:right">用户：</font></td>
                    <td><font style="float:left">${order.userName}</font></td>
                </tr>
                <tr>
                    <td><font style="float:right">商品信息：</font></td>
                    <c:forEach items="${order.productInfos}" var="i">
                        <td><font style="float:left">${i.productName}&nbsp;</font></td>
                    </c:forEach>
                </tr>
                <tr>
                    <td><font style="float:right">地址：</font></td>
                    <td><font style="float:left">${order.address}</font></td>
                </tr>
            </table>
            <br><br>
        </div>
        <div class="zj001">
            <h4 align="left">支付方式</h4>
            <hr color="#FF6600">
            <button class="butten02" onclick="toPay()" style="float:left">支付宝</button>
            <form id="toPayFrom" action="pay" method="post">
                <!-- 商户订单号 ： -->
                <input type="hidden" id="WIDout_trade_no" name="WIDout_trade_no" value="${order.orderNumber}"/>
                <!-- 订单名称 ： -->
                <input type="hidden" id="WIDsubject" name="WIDsubject" value="mbp2020（${order.orderNumber}）"/>
                <!-- 付款金额 ： -->
                <input type="hidden" id="WIDtotal_amount" name="WIDtotal_amount" value="${order.actualAmount}"/>
                <!-- 商品描述： -->
                <input type="hidden" id="WIDbody" name="WIDbody" value="${order.productInfos.get(0).productName}等商品"/>
            </form>
        </div>
    </div>
    <br>
    <br>
    <br>
    <div class="wei">
        SHOP网站
    </div>
</body>
</html>
