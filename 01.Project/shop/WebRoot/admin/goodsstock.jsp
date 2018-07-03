<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>后台管理系统</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon" />
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
<!-- 查看 begin -->
<div class="am-popup am-popup-inner" id="my-popup">

	      <div class="am-popup-hd">
	        <h4 class="am-popup-title">添加商品一级分类</h4>
	        <span data-am-modal-close
	            class="am-close">&times;</span> </div>
	      <div class="am-popup-bd">
        <form class="am-form tjlanmu">
          <div class="am-form-group">
            <div class="zuo">栏目名称：</div>
            <div class="you">
              <input type="email" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入标题">
            </div>
          </div>
          <div class="am-form-group">
            <div class="zuo">栏目关键词：</div>
            <div class="you">
              <input type="password" class="am-input-sm" id="doc-ipt-pwd-1" placeholder="请输入关键词">
            </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="zuo">栏目描述：</div>
            <div class="you">
              <textarea class="" rows="2" id="doc-ta-1"></textarea>
            </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="zuo">栏目图片：</div>
            <div class="you" style="height: 45px;">
              <input type="file" id="doc-ipt-file-1">
              <p class="am-form-help">请选择要上传的文件...</p>
          </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="zuo">简介：</div>
            <div class="you">
              <textarea class="" rows="2" id="doc-ta-1"></textarea>
            </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="zuo">状态：</div>
            <div class="you" style="margin-top: 3px;">
            <label class="am-checkbox-inline">
            <input type="checkbox" value="option1">
                显示 </label>
              <label class="am-checkbox-inline">
                <input type="checkbox" value="option2">
                隐藏 </label>
            </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="you">
              <p>
                <button type="submit" class="am-btn am-btn-success am-radius">提交</button>
              </p>
            </div>
          </div>
        </form>
</div>
</div>
<!-- 查看 end -->
<!-- 修改 begin -->
<div class="am-popup am-popup-inner" id="my-popup">

	      <div class="am-popup-hd">
	        <h4 class="am-popup-title">添加商品一级分类</h4>
	        <span data-am-modal-close
	            class="am-close">&times;</span> </div>
	      <div class="am-popup-bd">
        <form class="am-form tjlanmu">
          <div class="am-form-group">
            <div class="zuo">栏目名称：</div>
            <div class="you">
              <input type="email" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入标题">
            </div>
          </div>
          <div class="am-form-group">
            <div class="zuo">栏目关键词：</div>
            <div class="you">
              <input type="password" class="am-input-sm" id="doc-ipt-pwd-1" placeholder="请输入关键词">
            </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="zuo">栏目描述：</div>
            <div class="you">
              <textarea class="" rows="2" id="doc-ta-1"></textarea>
            </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="zuo">栏目图片：</div>
            <div class="you" style="height: 45px;">
              <input type="file" id="doc-ipt-file-1">
              <p class="am-form-help">请选择要上传的文件...</p>
          </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="zuo">简介：</div>
            <div class="you">
              <textarea class="" rows="2" id="doc-ta-1"></textarea>
            </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="zuo">状态：</div>
            <div class="you" style="margin-top: 3px;">
            <label class="am-checkbox-inline">
            <input type="checkbox" value="option1">
                显示 </label>
              <label class="am-checkbox-inline">
                <input type="checkbox" value="option2">
                隐藏 </label>
            </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="you">
              <p>
                <button type="submit" class="am-btn am-btn-success am-radius">提交</button>
              </p>
            </div>
          </div>
        </form>
</div>
</div>
<!-- 修改 --end -->
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
		<!-- 主体--begin -->
		<div class="admin-biaogelist">
<!-- 标题栏 --begin-->
	   			<div class="listbiaoti am-cf">
	      			<ul class="am-icon-flag on"> 用户评论</ul>
	     				<dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="goodslist.jsp">用户评论</a></dl>
	      				<dl><a class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus" href="goodsadd.jsp"> 添加产品</a></dl>
				</div>
<!-- 标题栏 --end-->
<!-- 搜索栏 --begin-->
		<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
			<form action="../GoodsServlet" method="post">
		  <ul>
	
		    <li style="margin-right: 0;">
		    	<span class="tubiao am-icon-calendar"></span>
		      <input type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" name="begtime" placeholder="开始日期" data-am-datepicker="{theme: 'success',}"  readonly/>
		    </li>
		       <li style="margin-left: -4px;">
		    	<span class="tubiao am-icon-calendar"></span>
		      <input type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" name="endtime" placeholder="结束日期" data-am-datepicker="{theme: 'success',}"  readonly/>
		    </li>
		    <li><input type="text" name="goodsName" class="am-form-field am-input-sm am-input-xm" placeholder="商品名称" /></li>
		    <li><button type="submit" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;">搜索</button></li>
		  </ul>
		  </form>
		</div>
<!-- 搜索栏 --end -->
	<!-- 表格--begin -->
	    <form class="am-form am-g">
	          <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
		            <!-- 表头 -->
				            <thead>
				              <tr class="am-success" align="center">
				                <th class="table-check"><input type="checkbox" /></th>
				                <th width="45px" class="table-id">ID</th>
				                <th class="table-id">名称</th>
				                <th class="table-title">类别</th>
				                <th class="table-type">品牌</th>
				                <th width="90px" class="table-type">库存数量</th>
				                <th width="45px" class="table-type">售价</th>
				                <th class="table-type">详细描述</th>
				                <th class="table-type">上架/下架 </th>
				                <th class="table-type">添加日期 </th>
				                <th width="45px" class="table-type">删除 </th>
				                <th width="45px" class="table-type">精品 </th>
				                <th width="45px" class="table-type">新品 </th>
				                <th width="45px" class="table-type">热销 </th>
				                <th width="90px" class="table-type">特价促销 </th>
				                <th  class="table-type">备注 </th>
				                <th width="163px" class="table-type">操作 </th>
				              </tr>
				            </thead>
		            <!-- 表头 -->
	          <!-- 表格数据 -->
					      <tbody>
					         <c:choose> 
					         	<c:when test="${xpxx!=null}">
					          		<c:forEach items="${xpxx}" var="x">
					             		 <tr align="center">
					               			<td><input type="checkbox" /></td>
					               			<td>${x.goodsID}</td>
							                <td>${x.goodsName}</td>
							                <td>${x.catID}</td>
							                <td>${x.brandID}</td>
							                <td>${x.goodsStock}</td>
							                <td>${x.shopPrice}</td>
							                <td>${x.description}</td>
							                <td>${x.isSale}</td>
							                <td>${x.createTime}</td>
							                <td>${x.isDelete}</td>
							                <td>${x.isBest}</td>
							                <td>${x.isNew}</td>
							                <td>${x.isHot}</td>
							                <td>${x.isPromotion}</td>
							                <td>${x.remark}</td>
							                <td>
							              		<div class="am-btn-toolbar">
									                  <div class="am-btn-group am-btn-group-xs">
									                  	<a class="am-btn am-btn-default am-btn-xs am-text-success am-round" data-am-modal="{target: '#my-popup'}" title="查看"><span class="am-icon-search"></span></a>
									                    <a class="am-btn am-btn-default am-btn-xs am-text-success am-round" data-am-modal="{target: '#my-popups'}" title="修改"><span class="am-icon-pencil-square-o" ></span></a>
									                     <a class="am-icon-copy am-btn am-btn-default am-btn-xs am-text-success am-round" title="复制"></a> 
									                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-round"  title="删除"><span class="am-icon-trash-o"></span></button>
									                  </div>
							                	</div>
              								</td>
					             		 </tr>
					           		 </c:forEach>
					        	 </c:when>
						         <c:otherwise>
									         	<tr align="center">
									         		<td colspan="17" style="color: blue">抱歉~没有匹配信息</td>
									         	</tr>
						         </c:otherwise>
					         </c:choose> 
					      </tbody>
	           <!-- 表格数据--end--> 
	          </table>
		          <!-- 底部操作 --begin-->
		        
   					<div class="am-btn-group am-btn-group-xs">     
		              <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 下架</button>
		              <a class="am-btn am-btn-default" href="goodsadd.jsp"><span class="am-icon-plus"></span> 新增</a>
		              <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</button>
		              <button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button>
					</div>
		        	
		          <!-- 底部操作--end -->
			           <!-- 换页 --begin-->
				           <ul class="am-pagination am-fr">
				                <li><a href="GoodsServlet?index=1">首页</a></li>
				                <li><a href="SelectServlet?index=">上一页</a></li>
				                <li><a href="SelectServlet?index=">下一页</a></li>
				                <li><a href="SelectServlet?index=">尾页</a></li> 
				           </ul>
			       	   <!-- 换页 --end-->
	          <hr />
	                <p>
        备注：操作图标含义
         <a class="am-text-success am-icon-search" title="查看"> 查看</a> 
         <a class="am-icon-pencil-square-o am-text-secondary" title="修改"> 修改栏目</a> 
         <a class="am-icon-copy am-text-warning" title="复制"> 复制栏目</a> 
         <a class="am-icon-trash-o am-text-danger" title="删除"> 删除栏目</a>
        
        </p>
	        </form>
 <!-- 表格 --end-->
 
 <!-- 底部 --begin-->
			 	<%@include file="bottom.jsp" %>
<!-- 底部 --end-->
		</div>
		<!-- 主体--end -->


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