<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>后台管理系统</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="assets/css/amazeui.min.css"/>
<link rel="stylesheet" href="assets/css/admin.css">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/app.js"></script>
<script src="assets/js/amazeui.min.js"></script>

</head>
  
  
<body>
<!-- 头部 --begin -->
				<%@include file="header.jsp" %>
			<!-- 头部 --end -->
			<!-- 左边导航栏 --begin -->
				<%@include file="left.jsp" %>
			<!-- 左边导航栏 --end -->

<div class="am-cf admin-main"> 

			<!-- 导航栏 --begin -->
			<div class="daohang">
					<ul>
					</ul>
			</div>
			<!-- 导航栏 --end -->
	


<div class="admin-biaogelist">
<!-- 标题栏 --begin-->
	   			<div class="listbiaoti am-cf">
	      			<ul class="am-icon-flag on"> 添加新品牌</ul>
	     				<dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="brandadd.jsp">添加品牌</a></dl>
				</div>
<!-- 标题栏 --end-->
	<!-- 添加 begin -->
    <div class="fbneirong">
      <form class="am-form"  enctype="multipart/form-data" method="post" action="../BrandServlet?type=add">
        <div class="am-form-group am-cf">
          	  <div class="zuo">名称：</div>
	          <div class="you">
	            <input name="brandName" type="text" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入名称">
	          </div>
        </div>
        
         <div class="am-form-group am-cf">
          <div class="zuo">LOGO：</div>
          <div  class="you"><input name="brandLogo" type="file" id="doc-ipt-file-1"> </div>
        </div>
        
        
        
        
       
        <div class="am-form-group am-cf">
	          <div class="zuo">URL：</div>
	          <div class="you">
	            <textarea name="url" class="" rows="2" id="doc-ta-1"></textarea>
	          </div>
        </div>
       <div class="am-form-group am-cf">
	          <div class="zuo">是否显示：</div>
	          <div class="you">
	             <select id="isShow" name="isShow" data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
		          <option value="1" >请选择....</option>
		          <option value="1" >是</option>
		           <option value="0">否</option>
		        </select>
	          </div>
        </div>
 
       
 
        <div class="am-form-group am-cf">
          <div class="you" style="margin-left: 11%;">
              <button type="submit" class="am-btn am-btn-success am-radius">发布并关闭窗口</button>&nbsp;  &raquo; &nbsp; <button type="submit" class="am-btn am-btn-secondary am-radius">发布并继续发布</button>

          </div>
        </div>
      </form>
    </div>
	<!-- 添加 end -->
  
 
 <!-- 底部 --begin-->
			 	<%@include file="bottom.jsp" %>
<!-- 底部 --end-->




</div>

</div>



<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/polyfill/rem.min.js"></script>
<script src="assets/js/polyfill/respond.min.js"></script>
<script src="assets/js/amazeui.legacy.js"></script>
<![endif]--> 

<!--[if (gte IE 9)|!(IE)]><!--> 

<!--<![endif]-->



</body>
</html>
