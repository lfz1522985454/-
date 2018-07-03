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
        <h4 class="am-popup-title">查看商品分类</h4>
        <span data-am-modal-close
            class="am-close">&times;</span> </div>
      <div class="am-popup-bd">
        <form class="am-form tjlanmu">
          <div class="am-form-group am-cf">
            <div class="zuo">ID：</div>
            <div class="you">
              <input type="text" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入ID">
            </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="zuo">名称：</div>
            <div class="you">
              <input type="password" class="am-input-sm" id="doc-ipt-pwd-1" placeholder="请输入名称">
            </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="zuo">关键字：</div>
            <div class="you">
              <input type="password" class="am-input-sm" id="doc-ipt-pwd-1" placeholder="请输入关键字">
            </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="zuo">说明：</div>
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
                不显示 </label>
            </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="you">
              <p>
                <button type="submit" class="am-btn am-btn-success am-radius">好了</button>
              </p>
            </div>
          </div>
        </form>
      </div>
    </div>

<!-- 查看 end -->
<!-- 修改 begin -->
<div class="am-popup am-popup-inner" id="my-popups">
      <div class="am-popup-hd">
        <h4 class="am-popup-title">修改商品分类</h4>
        <span data-am-modal-close
            class="am-close">&times;</span> </div>
      <div class="am-popup-bd">
        <form class="am-form tjlanmu">
          <div class="am-form-group am-cf">
            <div class="zuo">ID：</div>
            <div class="you">
              <input type="text" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入ID">
            </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="zuo">名称：</div>
            <div class="you">
              <input type="password" class="am-input-sm" id="doc-ipt-pwd-1" placeholder="请输入名称">
            </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="zuo">关键字：</div>
            <div class="you">
              <input type="password" class="am-input-sm" id="doc-ipt-pwd-1" placeholder="请输入关键字">
            </div>
          </div>
          <div class="am-form-group am-cf">
            <div class="zuo">说明：</div>
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
                不显示 </label>
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
	      			<ul class="am-icon-flag on"> 未发货订单</ul>
	     			<dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="goodslist.jsp">未发货订单</a></dl>
	      			
				</div>
<!-- 标题栏 --end-->
<!-- 搜索栏 --begin-->

		<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
		<form action="../orderweifahuoServlet" method="post">	
		  <ul>
		  	 <li><input type="text" name="orderSN" class="am-form-field am-input-sm am-input-xm" placeholder="SN" value="${orwfcxtj.orderSN}"/></li> 
		    <li><button type="submit" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;">搜索</button></li>
		    
		  </ul>
		 </form>
		</div>
		
<!-- 搜索栏 --end -->

	<!-- 表格--begin -->
	    <form class="am-form am-g">
        <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped am-table-hover">
          <thead>
            <tr class="am-success" style="text-align: center;">
              <th class="table-check"><input type="checkbox" /></th>
              <th class="table-id" title="ID">ID</th>
              <th class="table-type" title="SN"> SN</th>
              <th class="table-type" title="用户昵称">用户昵称</th>
              <th class="table-type" title="订单状态">订单状态</th>
              <th class="table-type" title="发货状态">发货状态</th>
              <th class="table-type" title="支付状态">支付状态</th>
              <th class="table-type" title="备注">备注</th>
              <th class="table-type" title="支付方式">支付方式</th>
              <th class="table-type" title="配送方式">配送方式</th>
     
              <th class="table-type" title="应付款">应付款</th>
              <th class="table-type" title="已付款">已付款</th>
              
              <th class="table-type" title="创建时间">创建时间</th>
             
              
              <th width="163px" class="table-set">操作</th>
            </tr>
          </thead>
          <tbody>
          <c:forEach items="${list}" var="o">
            <tr style="text-align: center;">
             
              <td class="table-check"><input type="checkbox" /></td>
              <td class="am-text-center" title="${o.orderId}">${o.orderId}</td>
              <td class="am-hide-sm-only" title="${o.orderSN}">${o.orderSN}</td>
              <td class="am-hide-sm-only" title="${o.userName}">${o.userName}</td>
              <!--0未确认,1确认,2已取消,3无效,4退货,5已收货  -->
             
              <td class="am-hide-sm-only" title=" 
              <c:if test="${o.orderStatus==0}">未确认</c:if>
              <c:if test="${o.orderStatus==1}">确认</c:if>
              <c:if test="${o.orderStatus==2}">已取消</c:if>
              <c:if test="${o.orderStatus==3}">无效</c:if>
              <c:if test="${o.orderStatus==4}">退货</c:if>
              <c:if test="${o.orderStatus==5}">已收货</c:if>"> 
              <c:if test="${o.orderStatus==0}">未确认</c:if>
              <c:if test="${o.orderStatus==1}">确认</c:if>
              <c:if test="${o.orderStatus==2}">已取消</c:if>
              <c:if test="${o.orderStatus==3}">无效</c:if>
              <c:if test="${o.orderStatus==4}">退货</c:if>
              <c:if test="${o.orderStatus==5}">已收货</c:if></td>
              <!--  0未发货; 1已发货  2已取消  3备货中 -->
             
              <td class="am-hide-sm-only" title=" <c:if test="${o.shippingStatus==0}">未发货</c:if>
              <c:if test="${o.shippingStatus==1}">已发货</c:if>
              <c:if test="${o.shippingStatus==2}">已取消</c:if>
              <c:if test="${o.shippingStatus==3}">备货中</c:if>"> 
              <c:if test="${o.shippingStatus==0}">未发货</c:if>
              <c:if test="${o.shippingStatus==1}">已发货</c:if>
              <c:if test="${o.shippingStatus==2}">已取消</c:if>
              <c:if test="${o.shippingStatus==3}">备货中</c:if></td>
              <!-- 支付状态 0未付款;  1已付款中;  2已付款 -->
             
              <td class="am-text-center" title=" <c:if test="${o.payStatus==0}">未付款</c:if>
               <c:if test="${o.payStatus==1}">已付款中</c:if>
                <c:if test="${o.payStatus==2}">已付款</c:if>"> 
                <c:if test="${o.payStatus==0}">未付款</c:if>
               <c:if test="${o.payStatus==1}">已付款中</c:if>
                <c:if test="${o.payStatus==2}">已付款</c:if></td>
              <td class="am-hide-sm-only" title="${o.orderMsg}">${o.orderMsg}</td>
              <td class="am-hide-sm-only" title="${o.shippingName}">${o.shippingName}</td>
              <td class="am-hide-sm-only" title="${o.payName}">${o.payName}</td>
           
              <td class="am-hide-sm-only" title="${o.orderAmount}">${o.orderAmount}</td>
              <td class="am-hide-sm-only" title="${o.payMent}">${o.payMent}</td>
              
                <td class="am-hide-sm-only" title="${o.createTime}">${o.createTime}</td>
          
              <td>
              		<div class="am-btn-toolbar">
		                  <div class="am-btn-group am-btn-group-xs">
		                  	<a class="am-btn am-btn-default am-btn-xs am-text-success am-round" data-am-modal="{target: '#my-popup'}" title="查看"><span class="am-icon-search"></span></a>
		                    <a class="am-btn am-btn-default am-btn-xs am-text-success am-round" data-am-modal="{target: '#my-popups'}" title="修改"><span class="am-icon-pencil-square-o" ></span></a>
		                  
		                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-round"  title="删除"><span class="am-icon-trash-o"></span></button>
		                  </div>
                	</div>
               </td>
            </tr>
            </c:forEach>
          </tbody>
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
				            	
				                <li><a href="../orderweifahuoServlet?index=1" style="<c:if test="${page.pageIndex==1}">display: none;</c:if>">首页</a></li>
				                <li><a href="../orderweifahuoServlet?index=${page.pageIndex-1}" style="<c:if test="${page.pageIndex==1}">display: none;</c:if>">上一页</a></li>
				                <li><a href="../orderweifahuoServlet?index=${page.pageIndex+1}" style="<c:if test="${page.pageIndex==page.index}">display: none;</c:if>">下一页</a></li>
				                <li><a href="../orderweifahuoServlet?index=${page.index}" style="<c:if test="${page.pageIndex==page.index}">display: none;</c:if>">尾页</a></li>
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