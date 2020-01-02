<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 2019/12/30
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <title>商品主页</title>

    <%--引入css--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/product/css/style.css"/>
    <script src="${pageContext.request.contextPath }/resources/product/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/product/js/productIndex.js"></script>

</head>
<body onload="swapPic()">

<!-- 商城头部 -->
<div id="head">

    <!-- 导航栏 -->
    <div class="header">

        <!-- 左侧导航栏 -->
        <div class="left_header">
            <a href="index.html">首页</a>
            <a href="product_list.html">更多商品</a>
            <a href="#">用户中心</a>
        </div>

        <!-- 右侧导航栏 -->
        <div class="right_header">
            <a href="#">登录</a>
            <a href="#">注册</a>
            <a href="#">我的订单</a>
        </div>
    </div>

    <!-- 商城 -->
    <div class="gmall">
        <div class="img" style="margin-top: 5px; margin-left: 1px;">
            <a href="index.html">ZLJ.COM</a>
        </div>

        <!-- 搜索按钮 -->
        <div class="container">
            <form action="" class="parent">
                <input type="text" class="search" placeholder="搜索">
                <input type="button" name="" id="" class="btn"
                       style="background-image: url(${pageContext.request.contextPath }/resources/product/img/log2.1.png);">
            </form>
        </div>
    </div>

</div>

<!-- 商城菜单栏 -->
<div id="body">

    <!-- 商品推荐和菜单 -->
    <div id="product">

        <!-- 菜单 -->
        <div class="menu">
            <!--菜单列表-->
            <ul class="sec-mainNav">
                <%--查询品牌--%>
                <c:forEach items="${brandList}" var="brand">
                    <li>
                        <input type="hidden" class="brandId" name="${brand.brandId}" value="${brand.brandId}">
                        <div class="menu-tab">
                            <a href="/product/findbrandById?${brand.brandId}">${brand.brandName}</a>
                            <div class="fix"></div>
                        </div>
                        <span class="menu-more">更多</span>
                        <!--二级菜单-->
                        <div class="menu-panel">
                            <div class="menu-panel-hd">
                                <h4>热销机型</h4>
                                <div class="sub-group">
                                    <c:forEach items="${modelList}" var="model">
                                        <c:if test="${brand.brandId==model.brandId}">
                                            <a href="">${model.modelType}</a>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>

        <!-- 滚动框 -->
        <div class="product_roll">
            <img name="randimg" src="${pageContext.request.contextPath }/resources/product/img/poster/haibao2.jpg">
        </div>

    </div>

    <!-- 空 -->
    <div class="kong">
    </div>

    <!-- 热销推荐 -->
    <div class="text">
        <div>
            <span>
               <h1>热销推荐</h1>
            </span>
        </div>
    </div>

    <!-- 商品推荐 -->
    <div id="product_hot">
        <c:forEach items="${productInfoList}" var="productInfo">
        <div class="hot">
            <%--判断：--%>
            <c:if test="${!(productInfo.activityReduceProduct.activityReduceId eq null)}">
                <div>
                    <span class="activity01">促销</span>
                </div>
            </c:if>

            <c:if test="${!(empty productInfo.activityDiscountProduct.activityDiscountId)}">
                <div>
                    <span class="activity02">打折</span>
                </div>
            </c:if>
            <c:if test="${empty productInfo.activityDiscountProduct.activityDiscountId && empty productInfo.activityReduceProduct.activityReduceId}">
                <span>&nbsp;</span>
            </c:if>
                <a href="product_details.html">
                    <img src="${pageContext.request.contextPath }/resources/product/img/phone/${productInfo.productImage}">
                </a>
                <div>
                <span style="color: #008000;">
                    <c:out value="${productInfo.model.modelType}"></c:out>
                </span>
                    <br/>
                    <span style="color: #FF0000;">
                    ¥<c:out value="${productInfo.stock.productPrice}"></c:out>
                </span>
                </div>

        </div>
        </c:forEach>
    </div>

    <div class="kong">
    </div>

    <%--<div class="text">
        <div>
            <span>
               <h1>华为专区</h1>
            </span>
        </div>
    </div>

    <div class="text">
        <div>
            <span>
               <h1>苹果专区</h1>
            </span>
        </div>
    </div>

    <div class="text">
        <div>
            <span>
               <h1>小米专区</h1>
            </span>
        </div>
    </div>--%>

    <div class="text">
        <div>
            <span>
               <h1>更多商品</h1>
            </span>
        </div>
    </div>

    <!-- 更多商品 -->
    <div id="more">
        <c:forEach items="${productInfoMoreList}" var="more">
            <div class="hot">

                <%--活动判断--%>
                <%--该商品存在打折活动id--%>
                <c:if test="${!(empty more.activityDiscountProduct.activityDiscountId)}">
                    <%--显示打折span--%>
                    <div>
                        <span class="activity02">打折</span>
                    </div>
                </c:if>
                <%--该商品存在促销活动的ID--%>
                <c:if test="${!empty more.activityReduceProduct.activityReduceId}">
                    <%--显示促销活动--%>
                    <div>
                        <span class="activity01">促销</span>
                    </div>
                </c:if>

                <%--都不存在--%>
                <c:if test="${empty more.activityReduceProduct.activityReduceId && empty more.activityDiscountProduct.activityDiscountId}">
                    <%--空，不然样式会看着不舒服--%>
                    <span>&nbsp;</span>
                </c:if>

                <a href="product_details.html">
                    <img src="${pageContext.request.contextPath }/resources/product/img/phone/${more.productImage}">
                </a>
                <div>
						<span style="color: #008000;">
							<c:out value="${more.model.modelType}"></c:out>
						</span>
                    <br/>
                    <span style="color: #FF0000;">
							¥<c:out value="${more.stock.productPrice}"></c:out>
						</span>
                </div>
            </div>
        </c:forEach>
    </div>

    <div class="kong">
    </div>

</div>

<!-- 商城底部 -->
<div id="footer">
    <!-- 商城信息 -->
    <div class="message">
        <a href="product_list.html">商品大全</a>
        <a href="#">用户中心</a>
        <a href="#">订单中心</a>
        <a href="#">我的商家</a>
        <a href="#">建议和意见</a>

        <div>
            <p class="b_url">www.zlj6.com 豫ICP证00000号 豫ICP备0000000000号 豫公网安备0000000000000号 豫网文[2019]0059-0009号</p>
        </div>
    </div>


</div>

<div class="kong" style="height: 20px;">
</div>

</body>
</html>
<script type="text/javascript">
    $(function () {
        var $top = $('.sec-mainNav').offset().top + $('.sec-mainNav').height()
        //左侧导航动画
        $('.sec-mainNav li').on('mouseenter', function () {
            var $height = $(this).offset().top + $(this).find('.menu-panel').outerHeight();
            $(this).find('.menu-panel').show();
            if ($height - $top >= 0) {
                $(this).find('.menu-panel').css({
                    top: -($height - $top) + 'px'
                })
            }
        });
        $('.sec-mainNav li').on('mouseleave', function () {
            $(this).find('.menu-panel').hide();
        });
    });
</script>

<!-- 滚动 -->
<script language="javascript" type="text/javascript">
    var ranl = 0;
    var useRand = 0;

    images = new Array;
    images[1] = new Image();
    images[1].src = "${pageContext.request.contextPath }/resources/product/img/poster/haibao1.jpg";
    images[2] = new Image();
    images[2].src = "${pageContext.request.contextPath }/resources/product/img/poster/haibao2.jpg";
    images[3] = new Image();
    images[3].src = "${pageContext.request.contextPath }/resources/product/img/poster/haibao3.jpg";
    images[4] = new Image();
    images[4].src = "${pageContext.request.contextPath }/resources/product/img/poster/haibao4.jpg";

    function swapPic() {
        var imgnum = images.length - 1;
        do {
            var randnum = Math.random();
            randl = Math.round((imgnum - 1) * randnum) + 1;
        } while (randl == useRand);
        useRand = randl;
        document.randimg.src = images[useRand].src
        setTimeout('swapPic()', 4000);
    }
</script>
