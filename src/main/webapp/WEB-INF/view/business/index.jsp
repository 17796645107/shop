<!--_meta 作为公共模版分离出去-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/business/css/static/h-ui/css/H-ui.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/business/css/static/h-ui.admin/css/H-ui.admin.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/business/css/lib/Hui-iconfont/1.0.8/iconfont.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/business/css/static/h-ui.admin/skin/default/skin.css" id="skin" />
	<!--[if IE 6]>
	<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
	<script>DD_belatedPNG.fix('*');</script>
	<![endif]-->
	<!--/meta 作为公共模版分离出去-->

	<title>H-ui.admin v3.0</title>
</head>
<body>
<!--_header 作为公共模版分离出去-->
<header class="navbar-wrapper">
	<div class="navbar navbar-fixed-top">
		<div class="container-fluid cl"> <a class="logo navbar-logo f-l mr-10 hidden-xs" href="/aboutHui.shtml">H-ui.admin</a> <a class="logo navbar-logo-m f-l mr-10 visible-xs" href="/aboutHui.shtml">H-ui</a>
			<span class="logo navbar-slogan f-l mr-10 hidden-xs">v3.0</span>
			<a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
			<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
				<ul class="cl">
					<li>超级管理员</li>
					<li class="dropDown dropDown_hover"> <a href="#" class="dropDown_A">admin <i class="Hui-iconfont">&#xe6d5;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="javascript:;" onClick="myselfinfo()">个人信息</a></li>
							<li><a href="#">切换账户</a></li>
							<li><a href="login.html">退出</a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</header>
<!--/_header 作为公共模版分离出去-->

<!--_menu 作为公共模版分离出去-->
<aside class="Hui-aside">

	<div class="menu_dropdown bk_2">
		<dl id="menu-product">
			<dt><i class="Hui-iconfont">&#xe620;</i> 商品管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="Brand-list.html" title="品牌管理">品牌管理</a></li>
					<li><a href="format-list.html" title="规格管理">规格管理</a></li>
					<li><a href="Commodity/all.do" title="商品管理">商品管理</a></li>
					<li><a href="model-list.html" title="型号管理">型号管理</a></li>
					<li><a href="reserve-list.html" title="库存管理">库存管理</a></li>
					<li><a href="activity-list.html" title="活动管理">活动管理</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-comments">
			<dt><i class="Hui-iconfont">&#xe622;</i> 评论管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="comment-list.html" title="评论列表">评论列表</a></li>
				</ul>
			</dd>
		</dl>
	</div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<!--/_menu 作为公共模版分离出去-->

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/" class="maincolor">首页</a>
		<span class="c-999 en">&gt;</span>
		<span class="c-666">我的桌面</span>
		<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="Hui-article">
		<article class="cl pd-20">
			<p>欢迎使用</p>
		</article>
		<footer class="footer">
		</footer>
	</div>
</section>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/business/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/business/js/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/business/js/H-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/business/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript">

</script>
</body>
</html>
