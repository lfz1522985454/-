<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>	
	<title>Cart</title>
	<meta charset="utf-8" />
	<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="css/bootstrap.min1.css" />
	<link rel="stylesheet" href="css/woocommerce/woocommerce.css" />	
	<link rel="stylesheet" href="css/app-orange.css" id="theme_color" />
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />	
	<script type="text/javascript" src="js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="js/wc-quantity-increment.min.js"></script>
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

		<link
		
			rel='stylesheet' type='text/css'>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<!-- Custom CSS -->
		<link href="style.css" rel="stylesheet">
		<style type="text/css">
		
		.ys{
		
		 border:2px solid #52D0C4;
		}
		.qita{
			border: 2px solid #ffffff
		}
		.qita:hover{
		border: 2px solid #c1e1b9
		}
		</style>
		<script type="text/javascript">

$(function(){

$('.qita').mouseover(function(){
	$(this).addClass("ys");

});
$('.qita').mouseout(function(){
$(this).removeClass("ys");

});

	
});
function sl(){
	var shu=$('#sl').val();
	location.href='CartServlet?type=add&gid=${g.goodsID}&sl='+shu;	

		
}
</script>
</head>
<body>	<header>
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-12 hidden-xs">
						<div class="header-top-left">
							<div class="welcome-msg">
								
								<span class="phone">联系我们: <span
									class="number">01234-567890</span>
								</span>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-xs-12 col-sm-12">
						<div class="header-top-right">
							<ul class="header-links hidden-xs">
								<li>
									<a class="my-account" href="#">登录</a><a class="my-account" href="#">注册</a>
								</li>
								<li>
									<a class="my-wishlist" href="OrderSevlet?type=qtdd">我的订单</a>
								</li>
								<li>
									<a class="checkout" href="#">会员中心</a>
								</li>
								<li>
									<a class="login" href="#">联系我们</a>
								</li>
							</ul>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="header-middle">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-12 col-xs-8">
						<div class="logo">
							<a href="index.html"><img src="img/logo.png" alt="" />
							</a>
						</div>
					</div>
					<div class="col-md-5 col-sm-6 hidden-xs">
						<div class="search-box">
							<form action="qt_GoodsServlet?type=sel" method="post">
								<input class="form-control search-form" type="text" name="goodsName" value="${gname}"
									placeholder="商品名称" />
								<button class="search-button" value="Search" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>
					</div>
					<div class="col-md-3 col-xs-4 col-sm-6" style="background-color: white;">
						<div class="shopping-cart" style="background-color: white;">
							<a class="cart" href="CartServlet" title="view shopping cart" style="background-color: white;"><span
								class="hidden-xs">购物车<br>
									<small>点击进入</small>
							</span>
							</a>	
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="main-menu-area hidden-xs hidden-sm">
			<div class="container">
				<div class="row">
					<div class="colo-md-12">
						<div class="main-menu">
							<nav>
							<ul>
								<li>
									<a href="qt_GoodsServlet">主页</a>
								</li>
								<li>
									<a href="#" onclick="newT()">新品</a>
								</li>
								<li>
									<a href="#">热销</a>
								</li>
								<li>
									<a href="#"  onclick="tejiaT()">促销</a>
								</li>
								
							</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		 <div class="mobile-menu-area visible-xs visible-sm">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mobile_menu">
                        <nav id="mobile_menu_active">
                            <ul>
                                <li>
									<a href="#" onclick="newT()">新品</a>
								</li>
								<li>
									<a href="#">热销</a>
								</li>
								<li>
									<a href="#"  onclick="tejiaT()">促销</a>
								</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
		</header>
		 <!-- heading-banner-start -->
        <div class="heading-banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <div class="breadcrumb">
                            <a title="主页" href="qt_GoodsServlet">
                                <i class="icon-home"></i>
                            </a>
                            <span class="navigation-page">
                                <span class="navigation-pipe">></span>
                               商品详情
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- heading-banner-end -->

<div class="single">

<div class="container">
<div class="col-md-9">
	<div class="col-md-5 grid">		
		<div class="flexslider"  style="margin-top: 15px;border: 0;width: 300px;height: 250px;">
		<!-- 商品相册表 -->
			  <ul class="slides" >
			    <li data-thumb="upload/${g.daTu1} " style="-webkit-border-radius: 5px">
			        <div class="thumb-image" "> <img style="-webkit-border-radius: 5px" src="upload/${g.daTu1}" data-imagezoom="true" class="img-responsive"> </div>
			    </li>
			    <li data-thumb="upload/${g.daTu2}" style="-webkit-border-radius: 5px">
			         <div class="thumb-image" > <img style="-webkit-border-radius: 5px" src="upload/${g.daTu2}" data-imagezoom="true" class="img-responsive"> </div>
			    </li>
			    <li data-thumb="upload/${g.daTu3}" style="-webkit-border-radius: 5px">
			       <div class="thumb-image" > <img style="-webkit-border-radius: 5px" src="upload/${g.daTu3}" data-imagezoom="true" class="img-responsive"> </div>
			    </li> 	
			  </ul>
		<!-- 商品相册表 -->
		</div>
	</div>	
<div class="col-md-7 single-top-in" style=" width:350px;margin-top:30px; margin-left: 50px;">
						<div class="single-para simpleCart_shelfItem">
							
							<div class="star-on">
								
								<div class="review">
									<a href="#" style="font-size: 20px;color: #222222;font-weight:bold;" >&nbsp;${g.goodsName}</a>
									
								</div>
							<div class="clearfix"> </div>
							</div>
							
								<label  class="add-to item_price">&nbsp;&nbsp;￥${g.shopPrice}</label>
								
							
							<div class="available">
								
								<ul>
									<p style="color: #252525">&nbsp;&nbsp;&nbsp;需由品牌商备货，预计3-4天后由叮叮发货配送</p>
									<p style="color: #252525">&nbsp;&nbsp;&nbsp;库存：${g.goodsStock}件</p>
									
								<li>&nbsp;&nbsp;<span style="font-size: 12px; color: #252525">&nbsp;尺码：&nbsp;&nbsp;</span><select style="height: 25px;  ">
									<option >S</option>
									<option >M</option>
									<option >L</option>
									<option >XL</option>
									<option >XXL</option>
								</select></li>
								
								<li><span style="font-size: 12px; color: #252525">颜色：&nbsp;&nbsp;</span>
										<select >
										<option >黑色</option>
										<option >红色</option>
										<option >白色</option>
									</select></li>
									<p></p>
									<p style="color: #252525">&nbsp;&nbsp;&nbsp;数量：&nbsp;<input id="sl" style="height: 30px; width: 60px;" class="sl" type="number" step="1" min="1" max="" name="" value="1" title="Qty" class="input-text qty text" size="4" pattern="[0-9]*" inputmode="numeric">
										</p>	
									<p style="color: #252525">&nbsp;&nbsp;&nbsp;配送方式：圆通快递</p>	
									
									
							</ul>
						</div>
					
							<div>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="gwc" onclick="sl()" class="cart item_add" style="font-size: 14px;background-color:  #cb2027;cursor: pointer;-webkit-border-radius: 5px;">加入购物车</a>
	                                &nbsp;&nbsp;<a href="#" class="cart item_add" style="font-size: 14px;cursor: pointer;-webkit-border-radius: 5px">去结算</a>
	                               
	                        </div>
						</div>
					</div>
			<div class="clearfix" ></div>
		<div class="row" style="margin-top: 100px;">
					<div class="col-md-12">
						<div class="section-heading">
							<h3>
								商品描述/规格/尺寸
							</h3>
						</div>
					</div>
				</div>
			<div class="a" style="width: 100%;margin-top: 60px;">${g.description}</div>
</div>
<!----->
<div class="col-md-3 product-bottom">
	
			
<!--//menu-->
<!--seller-->
				<div class="product-bottom"  >
						
						<div class="product-go">
						<h4 style="color: #cb2027">其他人都在买</h5>
							<c:forEach items="${rxxp}" var="rx">
						<div class="qita"  style="-webkit-border-radius: 5px">
						<div class=" fashion-grid" >
							<a href="qt_GoodsServlet?type=xq&id=${rx.goodsID}" ><img  style="-webkit-border-radius: 5px" class="img-responsive " src="upload/${rx.thumbnail}"  alt=""></a>	
						</div>
						<div class=" fashion-grid1" style="margin-top: 10px;">
							<h6 class="best2"><a style="color: #252525" href="qt_GoodsServlet?type=xq&id=${rx.goodsID}" >${rx.goodsName}</a></h6>
							<span class=" price-in1"> ￥${rx.shopPrice}</span>
						</div>	
						<div class="clearfix"> </div>
					</div>
					</div>
					</c:forEach>
				</div>

		</div>
		<div class="clearfix"> </div>
	</div>
	</div>
<!-- slide -->
<script src="js/jquery.min.js"></script>
<script src="js/imagezoom.js"></script>
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="js/simpleCart.min.js"> </script>
<!--initiate accordion-->
						<script type="text/javascript">
							$(function() {
							    var menu_ul = $('.menu-drop > li > ul'),
							           menu_a  = $('.menu-drop > li > a');
							    menu_ul.hide();
							    menu_a.click(function(e) {
							        e.preventDefault();
							        if(!$(this).hasClass('active')) {
							            menu_a.removeClass('active');
							            menu_ul.filter(':visible').slideUp('normal');
							            $(this).addClass('active').next().stop(true,true).slideDown('normal');
							        } else {
							            $(this).removeClass('active');
							            $(this).next().stop(true,true).slideUp('normal');
							        }
							    });
							
							});
						</script>
						<!-- FlexSlider -->
  <script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>
<!---pop-up-box---->
					<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
					<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
					<!---//pop-up-box---->
					 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>	

 <%@include file="dibu.jsp" %>