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

<style type="text/css">
table{
   
    table-layout:fixed;/* 只有定义了表格的布局算法为fixed，下面td的定义才能起作用。 */
}
th{
	    
	    word-break:keep-all;/* 不换行 */
	    white-space:nowrap;/* 不换行 */
	    overflow:hidden;/* 内容超出宽度时隐藏超出部分的内容 */
	    text-overflow:ellipsis;/* 当对象内文本溢出时显示省略标记(...) ；需与overflow:hidden;一起使用。*/
}
td{
	    
	    word-break:keep-all;/* 不换行 */
	    white-space:nowrap;/* 不换行 */
	    overflow:hidden;/* 内容超出宽度时隐藏超出部分的内容 */
	    text-overflow:ellipsis;/* 当对象内文本溢出时显示省略标记(...) ；需与overflow:hidden;一起使用。*/
}

</style>

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
<div class="am-popup am-popup-inner" id="my-popups">

	    
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
	      			<ul class="am-icon-flag on" > 商品列表</ul>
	     				<dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="goodslist.jsp">商品列表</a></dl>
	      				<dl><a class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus" href="goodsadd.jsp"> 添加产品</a></dl>
				</div>
<!-- 标题栏 --end-->

<!-- 搜索栏 --begin-->

		
<!-- 搜索栏 --end -->
	<!-- 表格--begin -->
	    <form class="am-form am-g">
	          <table class="am-table am-table-bordered am-table-radius am-table-striped am-table-hover" align="center">
		            <!-- 表头 -->
				            <thead>
				              <tr  class="am-success" align="center" style="text-align: center;" height="20px;">
				                <th style="text-align: center;" class="table-check"><input type="checkbox" title="全选"/></th>
				                <th style="text-align: center;" class="table-id" title="ID">ID</th>
				                 <th style="text-align: center;" class="table-id" title="邮箱">邮箱</th>
				                  <th style="text-align: center;" class="table-id" title="昵称">昵称</th>
				                   <th style="text-align: center;" class="table-id" title="帐号">帐号</th>
				                    <th style="text-align: center;" class="table-id" title="性别">性别</th>
				                     <th style="text-align: center;" class="table-id" title="生日">生日</th>
				                      <th style="text-align: center;" class="table-id" title="电话">电话</th>
				                       <th style="text-align: center;" class="table-id" title="手机号">手机号</th>
				                         <th style="text-align: center;" class="table-id" title="地址">地址</th>
				                
				                <th class="table-type" style="text-align: center; width:  100px;" title="操作">操作 </th>
				              </tr>
				            </thead>
				            <!-- 
				            
				            .wrap{  
								width: 150px; //设置需要固定的宽度  
								white-space: nowrap; //不换行  
								text-overflow: ellipsis; //超出部分用....代替  
overflow: hidden; //超出隐藏  
} 
				             -->
		            <!-- 表头 -->
		           	 <!-- 删除的数据不应该显示出来，应出现在回收站，恢复了就可以显示在商品列表中了 -->
	          <!-- 表格数据 -->
	          
			<tbody>
				
					
					<c:forEach items="${xpxx}" var="x">
						             		 <tr align="center" height="50" style="text-align: center; line-height: 50px;">
						               			<td><input type="checkbox" /></td>
						               			<td title="${x.userId}" >${x.userId}</td>
						               				<td title="${x.email}" >${x.email}</td>
						               					<td title="${x.nickName}" >${x.nickName}</td>
						               						<td title="${x.userName}" >${x.userName}</td>
						               							
						               							<td title="<c:if test="${x.sex==0}">男</c:if>
						               							<c:if test="${x.sex==1}">女</c:if>" ><c:if test="${x.sex==0}">男</c:if>
						               							<c:if test="${x.sex==1}">女</c:if></td>
						               								<td title="${x.birthday}" >${x.birthday}</td>
						               									<td title="${x.tel}" >${x.tel}</td>
						               										<td title="${x.lastIp}" >${x.lastIp}</td>
						               											
						               			 <td title="${x.addr}" >${x.addr}</td>
								                <td style="width 100px;text-align: center;">
								              		<div class="am-btn-toolbar" style="margin-left: 60px;">
										                  <div class="am-btn-group am-btn-group-xs" style="margin-top: 6px;">
										                  	<a class="am-btn am-btn-default am-btn-xs am-text-success am-round" data-am-modal="{target: '#my-popup'}" title="查看"><span class="am-icon-search"></span></a>
										                    <a class="am-btn am-btn-default am-btn-xs am-text-success am-round" data-am-modal="{target: '#my-popups'}" href="" title="修改"><span class="am-icon-pencil-square-o" ></span></a>
										                  </div>
								                	</div>
	              								</td>
						             		 </tr>
						 </c:forEach>
						
					
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
				            <li>总行数：${zhs}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				            	<li>${page.pageIndex}</li>
				            	<li>/</li>
				            	<li style="margin-right: 40px;">${page.index}</li>
				            	
				                <li><a href="../GoodsServlet?index=1" style="<c:if test="${page.pageIndex==1}">display: none;</c:if>">首页</a></li>
				                <li><a href="../GoodsServlet?index=${page.pageIndex-1}" style="<c:if test="${page.pageIndex==1}">display: none;</c:if>">上一页</a></li>
				                <li><a href="../GoodsServlet?index=${page.pageIndex+1}" style="<c:if test="${page.pageIndex==page.index}">display: none;</c:if>">下一页</a></li>
				                <li><a href="../GoodsServlet?index=${page.index}" style="<c:if test="${page.pageIndex==page.index}">display: none;</c:if>">尾页</a></li>
				           </ul>
			       	   <!-- 换页 --end-->
	          <hr />
	                <p>
        备注：操作图标含义
         <a class="am-text-success am-icon-search" title="查看"> 查看</a> 
         <a class="am-icon-pencil-square-o am-text-secondary" title="修改"> 修改栏目</a> 
         <a class="am-icon-copy am-text-warning" title="复制"> 复制栏目</a> 
         <a class="am-icon-trash-o am-text-danger" title="删除"> 放入回收站</a>
        
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