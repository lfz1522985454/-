<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

  
   <!-- 左部 -->
<div class="nav-navicon admin-main admin-sidebar">
    
   
    <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"> 欢迎系统管理员：${admin.adminName}</div>
    <div class="sideMenu">
  
    <h3 class="am-icon-cart-plus"><em></em> <a href="index.jsp">首页</a></h3>
      <ul>
        
      </ul>
      <h3 class="am-icon-flag"><em></em> <a href="#">商品管理</a></h3>
      <ul>
        <li><a href="../GoodsServlet">商品列表</a></li>
        <li ><a href="../GoodsServlet?type=bd">添加新商品</a></li>
        <li><a href="../CategoryServlet">商品分类</a></li>
       
        <li><a href="../GoodsRetrieveServlet">商品回收站</a></li>
        
      </ul>
     	<h3 class="am-icon-users"><em></em> <a href="#">品牌管理</a></h3>
      	<ul>
       	 	<li><a href="../BrandServlet">品牌列表</a> </li>
        	<li><a href="brandadd.jsp">添加品牌</a></li>
      	</ul>
      <h3 class="am-icon-cart-plus"><em></em> <a href="#"> 订单管理</a></h3>
      <ul>
        <li><a href="../OrderSevlet">订单列表</a></li>
        <li><a href="orderupdjsp">修改订单</a></li>
       
        <li><a href="../orderweifahuoServlet">未发货订单</a></li>
      
         
          
      </ul>
      <h3 class="am-icon-users"><em></em> <a href="#">会员管理</a></h3>
      <ul>
      <!-- UsersServlet.java -->
        <li><a href="../UsersServlet">会员列表</a> </li>
        <li>未激活会员</li>
        <li>增加会员</li>
        <li>推荐列表</li>
      </ul>
      <h3 class="am-icon-volume-up"><em></em> <a href="#">信息通知</a></h3>
      <ul>
        <li>站内消息 /留言 </li>
        <li>短信</li>
        <li>邮件</li>
        <li>微信</li>
        <li>客服</li>
      </ul>
      
       <h3 class="am-icon-gears"><em></em> <a href="#">配送/支付方式</a></h3>
      <ul>
      <!-- ShippingServlet.java   PayMentServlet-->
        <li><a href="../ShippingServlet">配送方式</a> </li>
        <li><a href="../PayMentServlet">支付方式</a></li>
       
      </ul>
      <h3 class="am-icon-gears"><em></em> <a href="#">系统设置</a></h3>
      <ul>
        <li>数据备份</li>
        <li>邮件/短信管理</li>
        <li>上传/下载</li>
        <li>权限</li>
        <li>网站设置</li>
        <li>第三方支付</li>
        <li>提现 /转账 出入账汇率</li>
        <li>平台设置</li>
        <li>声音文件</li>
      </ul>
    </div>
    <!-- sideMenu End --> 
    
    <script type="text/javascript">
			jQuery(".sideMenu").slide({
				titCell:"h3", 		//鼠标触发对象
				targetCell:"ul", 	//与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
				effect:"slideDown", //targetCell下拉效果
				delayTime:300 , 	//效果时间
				triggerTime:150, 	//鼠标延迟触发时间（默认150）
				defaultPlay:true,	//默认是否执行效果（默认true）
				returnDefault:true 	//鼠标从.sideMen移走后返回默认状态（默认false）
				});
		</script> 

    
    
</div>

