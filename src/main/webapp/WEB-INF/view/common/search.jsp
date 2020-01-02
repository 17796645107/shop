<%--
  Created by IntelliJ IDEA.
  User: 邓宁宁
  Date: 2019/12/31
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>搜索</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/common/css/search.css"/>

</head>
<body>
    <div class="head_logo">
        <img src="${pageContext.request.contextPath }/resources/common/image/logo.jpg"/>
        <img src="${pageContext.request.contextPath }/resources/common/image/logoService.png"/>

        <div class="goodCart">
            <i></i><a href="javascript:void(0);" @click="goGoodCart">购物车</a>
            <span class="cart_number">5</span>
            <div class="goodCart_hidden" v-show="userState && cartNumber !== 0">
                <ul>
                    <li v-for="goodCart in goodCartList">
                        <div class="productImage">
                            <img src="'../../static/product/'+goodCart.product.defaultImage.image">
                        </div>
                        <div class="productDetail">
                            <div class="productTitle">
                                {{goodCart.product.title}}
                            </div>
                            <div class="colorAndSize">
                                {{goodCart.productColor}} {{goodCart.productSize}}
                            </div>
                        </div>
                        <div class="productPrice">
                            <span>¥{{goodCart.product.price}}</span>X{{goodCart.productNumber}}
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <div class="search">
            <input type="search" @focus="showSearch" @blur="hideSearch" v-model="search_title" placeholder="大家都在搜：连衣裙"/>
            <a href="javascript:void(0)" @click="searchProduct"></a>
            <div class="search_history" v-show="searchHistoryShow">
                <div class="search_ul">
                    <div class="search_title">
                        搜索历史
                        <i title="清除搜索历史" @mousedown="delete_searchHistory"></i>
                    </div>
                    <ul>
                        <li v-for="search_li in searchHistory">
                            <span>{{search_li}}</span>
                        </li>
                    </ul>
                </div>
                <div class="recommend">
                </div>
            </div>
        </div>
    </div>
</body>
</html>