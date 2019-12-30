<%--
  Created by IntelliJ IDEA.
  User: 邓宁宁
  Date: 2019/12/26
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户主页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/common/common.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/userIndex.css"/>
</head>
<body>
    <div class="user_index">
        <!--头部-->
        <%--<IndexHeadTop></IndexHeadTop>
        <UserTopLogo></UserTopLogo>
        <UserTopNav></UserTopNav>--%>
        <!--页面主体 -->
        <div class="body">
            <div class="user_warp">

                <UserNav></UserNav>

                <!--主界面-->
                <div class="frame_right" id="frame">
                    <div class="user_message">
                        <div class="message_top">
                            <div class="information">
                                <div class="head_image">
                                    <a href="">
                                        <img src="${pageContext.request.contextPath }/resources/user/image/avatar_89373029_1496285287409.jpg" alt=""/>
                                    </a>
                                </div>
                                <div class="user_context">
                                    <div class="context_title">
                                        <strong>
                                            李曼曼
                                            <!--字符串截取,拼接加密用户手机-->
                                            17796645107
                                        </strong>
                                        <i></i>
                                        <span>上午好！</span><br>
                                    </div>
                                    <div class="context_complete">
                                        <span>资料完整度：</span>
                                        <a href=""><i>50%</i></a>
                                        <a href="">立即完善</a><br>
                                    </div>
                                    <div class="context_safe">
                                        <span>账户安全级别:</span>
                                        <span>低</span>
                                        <i></i>
                                        <a href=""></a>
                                        <a href=""></a>
                                        <a href="">立即提示</a>
                                    </div>
                                </div>
                            </div>
                            <div class="news">
                                <h3><a href="">我的消息</a></h3>
                                <p> 哎呀，没有新消息了</p>
                            </div>
                        </div>
                        <div class="message_context">
                            <div class="context_card">

                            </div>
                            <div class="context_total">

                            </div>
                        </div>
                    </div>
                    <div class="user_message_bottom"></div>
                    <div class="user_order">
                        <el-tabs v-model="el_tab_select">
                            <el-tab-pane label="全部订单" name="first">
                                <div class="order_main">
                                    <table>
                                        <tr>
                                            <td>
                                                <img  src="'../../../static/product/'+order.goodCartList[0].product.defaultImage.image">
                                            </td>
                                            <td>
                                                <p>订单号:87897756598098</p>
                                                <p>2019-12-12</p>
                                            </td>
                                            <td>按时发放发放沙发革热热火</td>
                                            <td>订单已取消</td>
                                            <td><a href="">查看详情</a></td>
                                        </tr>
                                    </table>
                                    <div class="orderNone_hidden">
                                        <div class="order_hidden_img"></div>
                                        <p>
                                            当前没有订单哦，先去 <a href="">抢购</a>吧~
                                        </p>
                                    </div>
                                    <div class="all_order">
                                        <a href="/order/orderControl">查看所有订单</a>
                                    </div>
                                </div>
                            </el-tab-pane>
                            <el-tab-pane label="待支付" name="second">
                                <div class="order_main"></div>
                            </el-tab-pane>
                            <el-tab-pane label="待收货" name="third">
                                <div class="order_main"></div>
                            </el-tab-pane>
                        </el-tabs>
                    </div>
                    <div class="user_collect">
                        <div class="collect_title">
                            <ul>
                                <li>
                                    <i></i>
                                    <a href="">我收藏的品牌</a>
                                </li>
                                <li>
                                    <a href="">正在特卖</a>
                                </li>
                                <li>
                                    <a href="">即将特卖</a>
                                </li>
                            </ul>
                        </div>
                        <div class="collect_main">

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--底部-->
        <jsp:include page="../common/footer.jsp"/>
    </div>
</body>
</html>