<%--
  Created by IntelliJ IDEA.
  User: 邓宁宁
  Date: 2019/12/31
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>导航</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/common/css/nav.css"/>

</head>
<body>
    <nav class="main_nav" id="main_nav">
        <ul>
            <li class="category" @mouseover="primaryCategoryShow = true"
                @mouseout="primaryCategoryShow = false">
                <i></i>商品分类
                <%--<el-collapse-transition>
                    <div class="primaryCategory transition-box" v-show="primaryCategoryShow">
                        <ul>
                            <li v-for="nav in navList" @mouseover="getSecondaryCategory(nav.id)">{{nav.categoryName}}
                            </li>

                        </ul>
                        <div class="secondaryCategory">
                            <a href="javascript:;" v-for="category in secondaryCategory"
                               @click="goCategoryMenu(category.id)">
                                {{category.categoryName}}
                            </a>
                        </div>
                    </div>
                </el-collapse-transition>--%>
            </li>
            <li>
                <a href="/index">首页</a>
            </li>
            <li class="super">
                <img src="${pageContext.request.contextPath }/resources/common/image/hot.gif"><a href="#">超级预付</a>
            </li>
            <li v-for="nav in navList">
                <a href="javascript:;" @click="goPrimaryCategoryMenu(nav.id)">{{nav.categoryName}}</a>
            </li>
        </ul>
    </nav>
</body>
</html>