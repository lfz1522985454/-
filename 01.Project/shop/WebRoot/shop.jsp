<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="top.jsp" %>



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
                               搜索
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- heading-banner-end -->

        <!-- shop-area-start -->
        <div class="shop-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="shop-left-col wow fadeIn" data-wow-duration=".5s" data-wow-delay=".5s">
                        <div class="content-box">
                                <h2>分类</h2>
                                <ul class="tags">
                               <c:forEach items="${fllist}" var="fl">
                                    <li>
                                        <a href="#">${fl.catName}</a>
                                    </li>
                                </c:forEach>  
                                </ul>
                            </div>
                             <div class="content-box">
                                <h2>热门品牌</h2>
                                <ul class="tags">
                                   <!-- pplist -->
                                    <c:forEach items="${pplist}" var="pp">
                                    <li>
                                        <a href="#">${pp.brandName}</a>
                                    </li>
                                     </c:forEach>  
                                </ul>
                            </div>
       
                           
                  
                            
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <div class="shop-right-col wow fadeIn" data-wow-duration=".5s" data-wow-delay=".5s">
                            <div class="category-products">
                            <!-- 第一行 -->
                                <div >
                                    <div  style="height: 30px;">
                                        
                                       <div class="content-box" style="margin-left:550px; padding:0px; float:left; width: 300px;height: 60px;">
                               
		                                <ul class="tags">
		                                   
		                                    <li>
		                                        <a href="qt_GoodsServlet?type=sel&isnew=1&goodsName=${gname}"  style="font-size: 12px;">新品</a>
		                                    </li>
		                                    <li>
		                                        <a href="qt_GoodsServlet?type=sel&ishot=1&goodsName=${gname}"  style="font-size: 12px;">热销</a>
		                                    </li>
		                                    <li>
		                                        <a href="qt_GoodsServlet?type=sel&isbase=1&goodsName=${gname}"  style="font-size: 12px;">精品</a>
		                                    </li>
		                                    <li>
		                                        <a href="qt_GoodsServlet?type=sel&iscx=1&goodsName=${gname}"  style="font-size: 12px;">促销</a>
		                                    </li>
		                                   
		                                </ul>
                            			</div>
                                    </div>
                         
                                </div>
                             <!-- 第一行 -->
                                <div class="shop-category-product">
                                    <div class="row">
                                        <div class="category-product">
                                            <!-- Tab panes -->
                                            <div class="tab-content">
                                                <div role="tabpanel" class="tab-pane active fade in" id="gried_view">
                                                <c:forEach items="${ssxx}" var="xp">
                                                <!-- 商品框 -->
                                                    <div class="col-md-4 col-sm-6 col-xs-12 mar-bot">
                                                        <!-- single-product-start -->
                                                        <div class="single-product">
                                                            <div class="single-product-img">
                                                                <a href="#">
                                                                    <img src="upload/${xp.thumbnail}" alt="${xp.goodsName}" />
                                                                </a>
                                                                <span class="sale-box">
                                                                    <span class="sale">

																	<c:if test="${xp.isBest==1}">精品</c:if>
				                                                    <c:if test="${xp.isNew==1}">新品</c:if>
				                                                    <c:if test="${xp.isHot==1}">热销</c:if>
				                                                    <c:if test="${xp.isPromotion==1}">促销</c:if>
																	</span>
                                                                </span>
                                                               
                                                            </div>
                                                            <div class="single-product-content">
                                                                <div class="product-title">
                                                                   <h5 style="display: none;">${xp.goodsID}</h5>
                                                                    <h5>
                                                                        <a href="#">${xp.goodsName}</a>
                                                                    </h5>
                                                                </div>
                                                                <div class="rating">
                                                                    <div class="star"></div>
                                                                    <div class="star"></div>
                                                                    <div class="star"></div>
                                                                    <div class="star"></div>
                                                                    <div class="star"></div>
                                                                </div>
                                                                <div class="price-box">
                                                                    <span class="price">${xp.shopPrice}￥</span>
                                                                    <span class="old-price">1070.00￥</span>
                                                                </div>
                                                                <div class="product-action">
                                                                    <button class="button btn btn-default add-cart" title="加入购物车" >加入购物车</button>
                                                                    
                                                                    <a class="quick-view" href="qt_GoodsServlet?type=xq&id=${xp.goodsID}" title="查看详情"  data-toggle="modal" >
                                                                        <i class="fa fa-search"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- single-product-end -->
                                                    </div>
                                                <!-- 商品框 -->
                                                </c:forEach>
                                                   
                           
                                                              
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- shop-area-end -->
                <!-- brand-area-start -->
        <div class="brand-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <h3>品牌</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="brands wow fadeIn" data-wow-duration=".5s" data-wow-delay=".5s">
                        <div class="brand-carousel">
                         <c:forEach items="${pplist}" var="pp">
                            <div class="col-md-12">
                                <div class="single-brand">
                                    <a href="#">
                                        <img style="width: 200px;height: 100px;" src="upload/${pp.brandLogo}"  alt="" />
                                    </a>
                                </div>
                            </div>
                           </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- brand-area-end -->
        <%@include file="dibu.jsp" %>
        
       