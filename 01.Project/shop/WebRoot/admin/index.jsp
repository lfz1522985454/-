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

	
<!-- 头部 -->
<%@include file="header.jsp" %>
<!-- 左边导航栏 -->
	<%@include file="left.jsp" %>
<div class="am-cf admin-main"> 

<!-- 导航栏 --begin -->
<div class="daohang">
		<ul>
		</ul>
</div>
<!-- 导航栏 --end -->


<div class="admin">

   
   <div class="admin-index">
      <dl data-am-scrollspy="{animation: 'slide-right', delay: 100}">
        <dt class="qs"><i class="am-icon-users"></i></dt>
        <dd>200</dd>
        <dd class="f12">团队数量</dd>
      </dl>
      <dl data-am-scrollspy="{animation: 'slide-right', delay: 300}">
        <dt class="cs"><i class="am-icon-area-chart"></i></dt>
        <dd>88232</dd>
        <dd class="f12">今日收入</dd>
      </dl>
      <dl data-am-scrollspy="{animation: 'slide-right', delay: 600}">
        <dt class="hs"><i class="am-icon-shopping-cart"></i></dt>
        <dd>1000</dd>
        <dd class="f12">商品数量</dd>
      </dl>
      <dl data-am-scrollspy="{animation: 'slide-right', delay: 900}">
        <dt class="ls"><i class="am-icon-cny"></i></dt>
        <dd>452000</dd>
        <dd class="f12">全部收入</dd>
      </dl>
    </div>
    <div class="admin-biaoge">
      <div class="xinxitj">信息概况</div>
      <table class="am-table">
        <thead>
          <tr>
            <th>团队统计</th>
            <th>全部会员</th>
            <th>全部未激活</th>
            <th>今日新增</th>
            <th>今日未激活</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>普卡</td>
            <td>普卡</td>
            <td>4534</td>
            <td>+20</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>银卡</td>
            <td>银卡</td>
            <td>4534</td>
            <td>+2</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>金卡</td>
            <td>金卡</td>
            <td>4534</td>
            <td>+10</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>钻卡</td>
            <td>钻卡</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
           <tr>
            <td>金卡</td>
            <td>金卡</td>
            <td>4534</td>
            <td>+10</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>钻卡</td>
            <td>钻卡</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
           <tr>
            <td>金卡</td>
            <td>金卡</td>
            <td>4534</td>
            <td>+10</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>钻卡</td>
            <td>钻卡</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
           <tr>
            <td>金卡</td>
            <td>金卡</td>
            <td>4534</td>
            <td>+10</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>钻卡</td>
            <td>钻卡</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
           <tr>
            <td>金卡</td>
            <td>金卡</td>
            <td>4534</td>
            <td>+10</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>钻卡</td>
            <td>钻卡</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>合计</td>
            <td>合计</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
        </tbody>
      </table>
      
    </div>
    <br/>
    <br/>
    <div class="shuju">
      <div class="shujuone">
        <dl>
          <dt>全盘收入：  1356666</dt>
          <dt>全盘支出：   5646465.98</dt>
          <dt>全盘利润：  546464</dt>
        </dl>
        <ul>
          <h2>26.83%</h2>
          <li>全盘拨出</li>
        </ul>
      </div>
      
      <div class="slideTxtBox">
        <div class="hd">
          <ul>
            <li>其他信息</li>
            <li>工作进度表</li>
          </ul>
        </div>
        <div class="bd">
          <ul>
            <table width="100%" class="am-table">
              <tbody>
                <tr>
                  <td width="7%"  align="center">1 </td>
                  <td width="83%" >工作进度名称</td>
                  <td width="10%"  align="center"><a href="#">10%</a></td>
                </tr>
                <tr>
                  <td align="center">1 </td>
                  <td>工作进度名称</td>
                  <td  align="center"><a href="#">10%</a></td>
                </tr>
                <tr>
                  <td  align="center">1 </td>
                  <td>工作进度名称</td>
                  <td  align="center"><a href="#">10%</a></td>
                </tr>
                <tr>
                  <td  align="center">1 </td>
                  <td>工作进度名称</td>
                  <td  align="center"><a href="#">10%</a></td>
                </tr>
                
                <tr>
                  <td  align="center">1 </td>
                  <td>工作进度名称</td>
                  <td  align="center"><a href="#">10%</a></td>
                </tr>
                 <tr>
                  <td  align="center">1 </td>
                  <td>工作进度名称</td>
                  <td  align="center"><a href="#">10%</a></td>
                </tr>
                
                <tr>
                  <td  align="center">1 </td>
                  <td>工作进度名称</td>
                  <td  align="center"><a href="#">10%</a></td>
                </tr>
               
                
                
                
                
                
                
                
              </tbody>
            </table>
          </ul>
          <ul>
            <table class="am-table">
              <tbody>
                <tr>
                  <td>普卡</td>
                  <td>普卡</td>
                  <td><a href="#">4534</a></td>
                  <td>+20</td>
                  <td> 4534 </td>
                </tr>
                <tr>
                  <td>银卡</td>
                  <td>银卡</td>
                  <td>4534</td>
                  <td>+2</td>
                  <td> 4534 </td>
                </tr>
                <tr>
                  <td>金卡</td>
                  <td>金卡</td>
                  <td>4534</td>
                  <td>+10</td>
                  <td> 4534 </td>
                </tr>
                <tr>
                  <td>钻卡</td>
                  <td>钻卡</td>
                  <td>4534</td>
                  <td>+50</td>
                  <td> 4534 </td>
                </tr>
                <tr>
                  <td>合计</td>
                  <td>合计</td>
                  <td>4534</td>
                  <td>+50</td>
                  <td> 4534 </td>
                </tr>
              </tbody>
            </table>
          </ul>
        </div>
      </div>
      <script type="text/javascript">jQuery(".slideTxtBox").slide();</script> 
   
   
   
   
   
   
   
   
</div>

    <%@include file="bottom.jsp" %>






</div>

</div>




</body>
</html>
