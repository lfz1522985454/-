<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>服装商城</title>
<meta charset="utf-8" />
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/woocommerce/woocommerce.css" />
	<link rel="stylesheet" href="css/app-orange.css" id="theme_color" />
<link rel="stylesheet" href="css/bootstrap.min1.css" />
<link rel="stylesheet" href="css/woocommerce/woocommerce.css" />
<link rel="stylesheet" href="css/app-orange.css" id="theme_color" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery/jquery.min.js"></script>
<script type="text/javascript" src="js/wc-quantity-increment.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link rel='stylesheet' type='text/css'>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- Custom CSS -->
<link href="style.css" rel="stylesheet">
<script>
function newT(){
	$("html,body").animate({scrollTop: $("#new").offset().top+1000}, 1000);
}

function tejiaT(){
	$("html,body").animate({scrollTop: $("#tejia").offset().top}, 1000);
}

</script>
</head>

	<body>



		<!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
            
            
		<!-- header-start -->
		<header>
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