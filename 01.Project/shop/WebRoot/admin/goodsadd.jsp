<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script type="text/javascript" charset="utf-8"
src="../ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
src="../ueditor/ueditor.all.min.js"></script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8"
src="../ueditor/lang/zh-cn/zh-cn.js"></script>


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
	      			<ul class="am-icon-flag on"> 添加新商品</ul>
	     				<dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="goodsadd.jsp">添加新商品</a></dl>
				</div>
<!-- 标题栏 --end-->
	<!-- 添加 begin -->
    <div class="fbneirong" style="">
      <form class="am-form" action="../GoodsServlet?type=add" method="post" enctype="multipart/form-data">
        <div class="am-form-group am-cf">
          	  <div class="zuo">名称：</div>
	          <div class="you">
	            <input name="goodsName" type="text" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入名称">
	          </div>
        </div>
        <div class="am-form-group am-cf">
         	  <div class="zuo">类别：</div>
	          <div class="you">
		           <select name="catName" id="catName">
		            		<option value="1" >请选择....</option>
		           		<c:forEach items="${flxx}" var="c">
		          			<option   value="${c.catID}">${c.catName}</option>
		        		</c:forEach>
		        	</select>
	          </div>
        </div>
         <div class="am-form-group am-cf">
          <div class="zuo">缩略图：</div>
          <div class="you"><input name="thumbnail" type="file" id="doc-ipt-file-1"> <p class="am-form-help">请选择要上传的缩略图...</p></div>
           
        </div>
        
       
         <div class="am-form-group am-cf">
         	   <div class="zuo">品牌：</div>
	          <div class="you">
		           <select name="brandName" id="brandName">
		            		<option value="1" >请选择....</option>
		            	<c:forEach items="${ppxx}" var="p">
		          			<option value="${p.brandID}">${p.brandName}</option>
		       		 	</c:forEach>
		        	</select>
	          </div>
        </div>
         <div class="am-form-group am-cf">
          	  <div class="zuo">添加数量：</div>
	          <div class="you">
	            <input name="goodsStock" type="text" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入数量">
	          </div>
        </div>
         <div class="am-form-group am-cf">
          	  <div class="zuo">商品售价：</div>
	          <div class="you">
	            <input name="shopPrice" type="text" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入售价">
	          </div>
        </div>
        <div class="am-form-group am-cf">
	          <div class="zuo">详细描述：</div>
	          <div class="you">
	           <textarea style="width: 750px; height: 200px;" name="description"
			id="description"></textarea>
	           
	          </div>
        </div>
        <div  style="border: 1px solid #B3B3B3;width: 930px;margin-left: 20px;">
          <div class="am-form-group am-cf">
         <div class="zuo" style=" margin: 0px;" >商品详情：</div>
          <div class="zuo"  style=" margin-left: 0px;padding-left: 0px;"><p style="text-align: left;">&nbsp;&nbsp;大图（1）：</p></div>
          <div class="you" style="  width: 200px; margin-top: 3px;"><input name="daTu1" type="file" id="doc-ipt-file-1"> </div>
           
       </div>
         <div class="am-form-group am-cf" style="">
         <div class="zuo" style=" margin: 0px;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
          <div class="zuo"  style=" margin-left: 0px;padding-left: 0px;"><p style="text-align: left;">&nbsp;&nbsp;大图（2）：</p></div>
          <div class="you" style="  width: 200px; margin-top: 3px;"><input name="daTu2" type="file" id="doc-ipt-file-1"> </div>
            
       </div>
       <div class="am-form-group am-cf" style="">
         <div class="zuo" style=" margin: 0px;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
          <div class="zuo"  style=" margin-left: 0px;padding-left: 0px;"><p style="text-align: left;">&nbsp;&nbsp;大图（3）：</p></div>
          <div class="you" style="  width: 200px; margin-top: 3px;"><input name="daTu3" type="file" id="doc-ipt-file-1"> </div>
            
       </div>
       </div>
        
            
  
        
        
         
        
         <div class="am-form-group am-cf">
	          <div class="zuo">是否上架：</div>
	          <div class="you" style="  width: 200px;">
	             <select id="isSale" name="isSale" data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
		          <option value="1" >请选择....</option>
		          <option value="1" >是</option>
		           <option value="0">否</option>
		        </select>
	          </div>
	          
        </div>
        <div class="am-form-group am-cf">
         <div class="zuo">广告栏显示：</div>
	          <div class="you" style="  width: 200px;">
	             <select id="isDaGuangGao" name="isDaGuangGao" data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
		          <option value="0" >请选择....</option>
		          <option value="1" >是</option>
		           <option value="0">否</option>
		        </select>
	          </div>
         </div>
          <div class="am-form-group am-cf">
          <div class="zuo">广告图：</div>
          <div class="you"><input name="guangGaoTu" type="file" id="doc-ipt-file-1"> <p class="am-form-help">请选择要上传的缩略图...</p></div>
           
        </div>
         <div class="am-form-group am-cf">
         <div class="zuo">热品：</div>
	          <div class="you" style="  width: 200px;">
	             <select id="isHot" name="isHot" data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
		          <option value="0" >请选择....</option>
		          <option value="1" >是</option>
		           <option value="0">否</option>
		        </select>
	          </div>
         </div>
          <div class="am-form-group am-cf">
         <div class="zuo">精品：</div>
	          <div class="you" style="  width: 200px;">
	             <select id="isBest" name="isBest" data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
		          <option value="0" >请选择....</option>
		          <option value="1" >是</option>
		           <option value="0">否</option>
		        </select>
	          </div>
         </div>
          <div class="am-form-group am-cf">
         <div class="zuo">促销：</div>
	          <div class="you" style="  width: 200px;">
	             <select id="isPromotion" name="isPromotion" data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
		          <option value="0" >请选择....</option>
		          <option value="1" >是</option>
		           <option value="0">否</option>
		        </select>
	          </div>
         </div>
        
          <div class="am-form-group am-cf">
	          <div class="zuo">备注：</div>
	          <div class="you">
	            <textarea name="remark" class="" rows="2" id="doc-ta-1"></textarea>
	          </div>
        </div>
        
       
        
        <!-- 增加时  添加时间--getDate(),是否删除--0, -->
       
 
        <div class="am-form-group am-cf">
          <div class="you" style="margin-left: 11%;">
              <button type="submit" class="am-btn am-btn-success am-radius">发布并关闭窗口</button>&nbsp;  &raquo; &nbsp; <button type="submit" class="am-btn am-btn-secondary am-radius">发布并继续发布</button>

          </div>
        </div>
      </form>
     <script type="text/javascript">
					UE.getEditor('description');
				</script>
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
