<%--
  Created by IntelliJ IDEA.
  User: 邓宁宁
  Date: 2019/12/27
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>收货地址</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/common/common.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/userAddress.css"/>
</head>
<body>
    <div class="UserAddress">

        <div class="body">
            <div class="body_main">
                <UserNav></UserNav>
                <div class="address_warp">
                    <div class="address_title">
                        <p>
                            <strong>已经保存的收货地址</strong>
                            您已经创建 <span>{{addressList.length}}</span> 个收货地址，最多可创建 10 个
                        </p>
                        <a href="#add" class="btn_add">新增收货地址</a>
                    </div>
                    <div class="address_list">
                        <div class="address_info" v-for="address in addressList">
                            <a href="javascript:;" class="default_address" v-show="address.is_default === 1">默认地址</a>
                            <a href="javascript:;" class="setDefaultAddress"
                               v-show="address.is_default !== 1">设为默认地址</a>
                            <p class="u_name">{{address.name}}</p>
                            <p class="u_address">
                                {{address.province}}&nbsp;
                                {{address.city}}&nbsp;
                                {{address.town}}&nbsp;
                                {{address.area}}
                            </p>
                            <p class="u_telephone">
                                {{address.telephone.substring(0,3)}}*****{{address.telephone.substring(8,11)}}
                            </p>
                            <div class="address_btn">
                                <a href="javascript:;" v-show="address.is_default !== 1"
                                   @click="deleteAddress(address.address_id)">删除</a>
                                <a href="#add" @click="updateAddress(address)">修改</a>
                            </div>
                        </div>

                    </div>
                    <div class="address_add">
                        <a name="add"></a>
                        <div class="address_add_title">
                            <strong>新增收货地址</strong>
                        </div>
                        <form>
                            <div class="consignee">
                                <label>
                                    <strong>*</strong>收货人:
                                </label>
                                <input type="text" placeholder="收货人姓名" v-model="name">
                            </div>
                            <div class="area">
                                <label>
                                    <strong>*</strong>地址:
                                </label>
                                <input type="text" placeholder="省/直辖市" v-model="province">
                                <input type="text" placeholder="市" v-model="city">
                                <input type="text" placeholder="区/县" v-model="town">
                                <!--<input type="text" placeholder="乡镇/街道" v-model="area">-->
                            </div>
                            <div class="address">
                                <label>

                                </label>
                                <input type="text" placeholder="详细地址" v-model="area">
                            </div>
                            <div class="phone">
                                <label>
                                    <strong>*</strong>手机:
                                </label>
                                <input type="text" placeholder="手机号" v-model="telephone">
                            </div>
                            <div class="address_add_submit">
                                <input type="submit" value="保存收货地址" @click="saveAddress"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!--底部-->
        <jsp:include page="../common/footer.jsp"/>
    </div>
</body>
</html>