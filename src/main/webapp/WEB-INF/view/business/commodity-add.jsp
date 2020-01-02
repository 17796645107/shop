<!--_meta 作为公共模版分离出去-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="Bookmark" href="favicon.ico" >
    <link rel="Shortcut Icon" href="favicon.ico" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/business/css/static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/business/css/static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/business/css/lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/business/css/static/h-ui.admin/skin/default/skin.css" id="skin" />
    <!--[if IE 6]>
    <script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script><![endif]-->
    <!--/meta 作为公共模版分离出去-->

    <link href="${pageContext.request.contextPath }/resources/business/css/lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="page-container">
    <form action="${pageContext.request.contextPath }/Commodity/input.do" method="post" enctype="multipart/form-data" class="form form-horizontal" id="form-article-add">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>产品名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="productName"  onblur="product_name_is()" name="productName">
                <span id="product_name_msg"> </span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>品牌：</label>
            <div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select name="model.brandId" id="Product_Brand" class="select" >
                    <c:forEach var="br" items="${brand}">
                        <option value="${br.brandId}">${br.brandName}</option>
                    </c:forEach>
				</select>
				</span>
                <span id="Product_Brand_msg"></span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>型号：</label>
            <div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select name="modelId" class="select">
				<c:forEach items="${model}" var="mode">
                    <option value="${mode.modelId}">${mode.modelType}</option>
                </c:forEach>
                </select>
				</span> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>颜色：</label>
            <div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select name="stock.colorId" class="select">
				<c:forEach items="${colors}" var="color">
                    <option value="${color.colorId}">${color.colorName}</option>
                </c:forEach>
                </select>
				</span> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>运存+存储：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="Product_color_arm" name="storeName">
                <span id="Product_color_arm_msg"></span>
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">价格计算单位：</label>
            <div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select class="select" name="unit">
					<option>请选择</option>
					<option value="1">件</option>
					<option value="4">克</option>
					<option value="5">套</option>
				</select>
				</span> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">产品价格：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" name="stock.productPrice" id="Product_amount" onblur="Product_amount_is()" placeholder="" value="" class="input-text" style="width:90%">
                元</div>
            <span id="Product_amount_msg"></span>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">库存：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" name="stock.stockNumber" id="Product_in_stock" onblur="Product_amount_is()" placeholder="" value="" class="input-text" style="width:90%">
                件</div>
            <span id="Product_in_stock_msg"></span>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">产品摘要：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <textarea name="productInfo" cols="" rows="" class="textarea"  placeholder="说点什么...最少输入10个字符" datatype="*10-300" dragonfly="true" nullmsg="备注不能为空！" onKeyUp="textarealength(this,200)"></textarea>
                <p class="textarea-numberbar"><em class="textarea-length">0</em>/300</p>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">图片上传（最多1张）：</label>
            <!--            <div class="formControls col-xs-8 col-sm-9">-->
            <!--                <div class="uploader-list-container">-->
            <!--                    <div class="queueList">-->
            <!--                        <div id="dndArea" class="placeholder">-->
            <!--                            <div id="filePicker-2"></div>-->
            <!--&lt;!&ndash;                            <p>或将照片拖到这里，单次最多可选300张</p>&ndash;&gt;-->
            <!--                        </div>-->
            <!--                    </div>-->
            <!--                    <div class="statusBar" style="display:none;">-->
            <!--                        <div class="progress"> <span class="text">0%</span> <span class="percentage"></span> </div>-->
            <!--                        <div class="info"></div>-->
            <!--                        <div class="btns">-->
            <!--                            <div id="filePicker2"></div>-->
            <!--                            <div class="uploadBtn">开始上传</div>-->
            <!--                        </div>-->
            <!--                    </div>-->
            <!--                </div>-->
            <!--            </div>-->
            <div id="imgPreview">
                <div id="prompt3">
	<span id="imgSpan">
	   点击上传
           <br />
	   <i class="aui-iconfont aui-icon-plus"></i>
        <!--AUI框架中的图标-->
	</span>

                    <input type="file" id="file" name="file" class="filepath" onchange="changepic(this)" accept="image/jpg,image/jpeg,image/png,image/PNG">
                    <!--当vaule值改变时执行changepic函数，规定上传的文件只能是图片-->
                </div>
                <input type="hidden" name="productImage" value="${imgs}">
                <img src="#" id="img3" name="product_image" style="width: 80px;height: 70px;" />
            </div>
        </div>



        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
                <button onclick="subi()" class="btn btn-primary radius" type="button"><i class="Hui-iconfont">&#xe632;</i> 保存并提交审核</button>
                <button onClick="article_save();" class="btn btn-secondary radius" type="button"><i class="Hui-iconfont">&#xe632;</i> 保存草稿</button>
                <button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/business/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/business/js/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/business/js/commodity-add.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/business/js/H-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/business/js/H-ui.admin.page.js"></script>

<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/business/js/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/business/js/lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/business/js/lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/business/js/lib/webuploader/0.1.5/webuploader.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/business/js/lib/ueditor/1.4.3/ueditor.config.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/business/js/lib/ueditor/1.4.3/ueditor.all.min.js"> </script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/business/js/lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
    function changepic() {
        $("#prompt3").css("display", "none");
        var reads = new FileReader();
        f = document.getElementById('file').files[0];
        reads.readAsDataURL(f);
        reads.onload = function(e) {
            document.getElementById('img3').src = this.result;
            $("#img3").css("display", "block");
            // img();
        };
    };
</script>
</body>
</html>