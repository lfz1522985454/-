<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="top.jsp" %>
	
		<!-- 广告-start -->
        <div class="slider-container">
            <div class="slider">
                <!-- Slider Image -->
                 <!-- 广告图片-->
                <div id="mainslider" class="nivoSlider slider-image">
                <!-- 循环图片 查询数据库是否打广告的列 -->
                                     <c:forEach items="${list}" var="xp" varStatus="sy">
                                     <c:if test="${xp.isDaGuangGao==1}">
                                       <img width="1920" height="610" src="upload/${xp.guangGaoTu}" alt="图片加载失败" title="#htmlcaption${sy.index+1}" />
                                     </c:if>
                                     </c:forEach>
                                  
                    
                </div>
                  <!-- 广告图片-->
                <!-- 广告文字 -->
                <c:forEach items="${list}" var="xp" varStatus="sy">
                 <c:if test="${xp.isDaGuangGao==1}">
	                <div id="htmlcaption${sy.index+1}" class="nivo-html-caption slider-caption-${sy.index+1}">
	                    <div class="slider-progress"></div>
	                    <div class="slide1-text slide-${sy.index+1} hidden-xs">
	                        <div class="middle-text">
	                            <div class="cap-dec wow bounceInLeft" data-wow-duration="0.9s" data-wow-delay="0s">
	                              <h5 style="display: none;">${xp.goodsID}</h5>
	                                <h1>${xp.goodsName}</h1>
	                            </div>
	                            
	                            <div class="cap-title wow bounceInRight" data-wow-duration="1.2s" data-wow-delay="0.2s">
	                                <h3>${xp.shopPrice}￥</h3>
	                            </div>
	                            <div class="cap-readmore wow bounceInUp" data-wow-duration="1.3s" data-wow-delay=".5s">
	                                <a href="qt_GoodsServlet?type=xq&id=${xp.goodsID}" title="去购买">去购买</a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
                 </c:if>
             </c:forEach>
              <!-- 广告文字 -->
            </div>
        </div>
        <!-- 广告-end -->
		<!-- 品牌 -->
		<div class="banner-area hidden-sm hidden-xs">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-xs-12">
						<div class="single-banner wow fadeIn" data-wow-duration=".5s"
							data-wow-delay=".5s">
							<a href="#"> <img src="img/banner/2.png" alt="" /> </a>
						</div>
					</div>
					<div class="col-md-4 col-xs-12">
						<div class="single-banner wow fadeIn" data-wow-duration=".5s"
							data-wow-delay=".5s">
							<a href="#"> <img src="img/banner/3.png" alt="" /> </a>
						</div>
					</div>
					<div class="col-md-4 col-xs-12">
						<div class="single-banner wow fadeIn" data-wow-duration=".5s"
							data-wow-delay=".5s">
							<a href="#"> <img src="img/banner/1.png" alt="" /> </a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 品牌 end -->
		<!-- 商品分类 -->
		<div class="feature-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="section-heading">
							<h3>
								商品列表
							</h3>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="feature-tab wow fadeIn" data-wow-duration=".5s"
							data-wow-delay=".5s">
							<ul class="my-tab">
								<li class="active">
									<a data-toggle="tab" href="#new">推荐</a>
								</li>
								<li>
									<a data-toggle="tab" href="#men">热销</a>
								</li>
								<li>
									<a data-toggle="tab" href="#women">精品</a>
								</li>
								<li>
									<a data-toggle="tab" href="#kids">新品</a>
								</li>
							</ul>
							<!--商品  -->
							<div class="tab-content">
							<!-- 推荐 --begin -->
                                <div id="new"  class="tab-pane fade in active">
                                    <div class="tab-carousel">
                                    <c:forEach items="${list}" var="xp">
				                                     <!-- 商品框（1） -->
				                                        <div class="col-md-12">
				                                          
				                                           <div class="single-product">
				                                                <div class="single-product-img" >
				                                                 <!-- style="width: 250px;height: 250px;" -->
				                                                    <a href="qt_GoodsServlet?type=xq&id=${xp.goodsID}"  ><img src="upload/${xp.thumbnail}"/></a>
				                                                    <span class="sale-box">
				                                                   
				                                                    <span class="sale"> 
				                                                    <c:if test="${xp.isBest==1}">精品</c:if>
				                                                    <c:if test="${xp.isNew==1}">新品</c:if>
				                                                    <c:if test="${xp.isHot==1}">热销</c:if>
				                                                    <c:if test="${xp.isBest==1}">精品</c:if>
				                                                    </span>
				                                                    </span>
				                                                </div>
				                                                <div class="single-product-content">
				                                                    <div class="product-title">
				                                                     <h5 style="display: none;">${xp.goodsID}</h5>
				                                                        <h5><a href="#"></a>${xp.goodsName}</h5>
				                                                    </div>
				                                                    
				                                                    <div class="price-box">
				                                                        <span class="price">${xp.shopPrice}￥</span>
				                                                        <span class="old-price">70.00</span>
				                                                    </div>
				                                                    <div class="product-action">
				                                                        <button class="btn btn-default add-cart" title="加入购物车">加入购物车</button>
				                                                        <!-- CartServlet?type=add&gid=${g.goodsID}&sl= -->
				                                                        <a class="quick-view" href="qt_GoodsServlet?type=xq&id=${xp.goodsID}" title="查看详情" data-toggle="modal" ><i class="fa fa-search"></i></a>
				                                                    </div>
				                                                </div>
				                                                
				                                            </div>
				                                            
				                                        </div> 
				                                         <!-- 商品框（1） -->
				                     </c:forEach>  
                                    </div>
                                </div>
                            <!-- 推荐 --end -->
                            
                            <!-- 热销 --begin -->
                                <div id="men" class="tab-pane fade">
                                    <div class="tab-carousel">
                                     <c:forEach items="${list}" var="xp">
                                     <c:if test="${xp.isHot==1}">
					                                     <!-- 商品框（2） -->
					                                        <div class="col-md-12" >
				                                          
				                                           <div class="single-product">
				                                                <div class="single-product-img">
				                                                    <a href="qt_GoodsServlet?type=xq&id=${xp.goodsID}"><img   src="upload/${xp.thumbnail}"></a>
				                                                    <span class="sale-box">
				                                                   
				                                                    <span class="sale">  热销         </span>
				                                                    </span>
				                                                </div>
				                                                <div class="single-product-content">
				                                                    <div class="product-title">
				                                                        <h5><a href="#"></a>${xp.goodsName}</h5>
				                                                    </div>
				                                                    
				                                                    <div class="price-box">
				                                                        <span class="price">${xp.shopPrice}</span>
				                                                        <span class="old-price">70.00</span>
				                                                    </div>
				                                                    <div class="product-action">
				                                                        <button class="btn btn-default add-cart" title="加入购物车">加入购物车</button>
				                                                        
				                                                       <a class="quick-view" href="qt_GoodsServlet?type=xq&id=${xp.goodsID}" title="查看详情" data-toggle="modal" ><i class="fa fa-search"></i></a>
				                                                    </div>
				                                                </div>
				                                                
				                                            </div>
				                                            
				                                        </div> 
					                                    <!-- 商品框（2） --> 
					                    </c:if>     
					                   </c:forEach>                        
                                    </div>
                                </div>
                             <!-- 热销 --end -->
                             <!-- 精品 --begin -->
                                <div id="women" class="tab-pane fade">
                                    <div class="tab-carousel">
                                 
                             		<c:forEach items="${list}" var="xp">
                                     <c:if test="${xp.isBest==1}">
					                                     <!-- 商品框（2） -->
					                                        <div class="col-md-12" >
				                                          
				                                           <div class="single-product">
				                                                <div class="single-product-img">
				                                                    <a href="qt_GoodsServlet?type=xq&id=${xp.goodsID}"><img  src="upload/${xp.thumbnail}"></a>
				                                                    <span class="sale-box">
				                                                   
				                                                    <span class="sale">  精品         </span>
				                                                    </span>
				                                                </div>
				                                                <div class="single-product-content">
				                                                    <div class="product-title">
				                                                        <h5><a href="#"></a>${xp.goodsName}</h5>
				                                                    </div>
				                                                    
				                                                    <div class="price-box">
				                                                        <span class="price">${xp.shopPrice}</span>
				                                                        <span class="old-price">70.00</span>
				                                                    </div>
				                                                    <div class="product-action">
				                                                        <button class="btn btn-default add-cart" title="加入购物车">加入购物车</button>
				                                                        
				                                                       <a class="quick-view" href="qt_GoodsServlet?type=xq&id=${xp.goodsID}" title="查看详情" data-toggle="modal" ><i class="fa fa-search"></i></a>
				                                                    </div>
				                                                </div>
				                                                
				                                            </div>
				                                            
				                                        </div> 
					                                    <!-- 商品框（2） --> 
					                    </c:if>     
					                   </c:forEach>                        
                                        
                                    </div>
                                </div>
                             <!-- 精品 --end -->
                             <!-- 新品 --begin -->
                                <div id="kids" class="tab-pane fade">
                                    <div class="tab-carousel">
                                        
			                                             <c:forEach items="${list}" var="xp">
                                     					<c:if test="${xp.isNew==1}">
					                                     <!-- 商品框（2） -->
					                                        <div class="col-md-12" >
				                                          
				                                           <div class="single-product">
				                                                <div class="single-product-img">
				                                                    <a href="qt_GoodsServlet?type=xq&id=${xp.goodsID}"><img   src="upload/${xp.thumbnail}"></a>
				                                                    <span class="sale-box">
				                                                   
				                                                    <span class="sale">  新品         </span>
				                                                    </span>
				                                                </div>
				                                                <div class="single-product-content">
				                                                    <div class="product-title">
				                                                        <h5><a href="#"></a>${xp.goodsName}</h5>
				                                                    </div>
				                                                    
				                                                    <div class="price-box">
				                                                        <span class="price">${xp.shopPrice}</span>
				                                                        <span class="old-price">70.00</span>
				                                                    </div>
				                                                    <div class="product-action">
				                                                        <button class="btn btn-default add-cart" title="加入购物车">加入购物车</button>
				                                                        
				                                                       <a class="quick-view" href="qt_GoodsServlet?type=xq&id=${xp.goodsID}" title="查看详情" data-toggle="modal" ><i class="fa fa-search"></i></a>
				                                                    </div>
				                                                </div>
				                                                
				                                            </div>
				                                            
				                                        </div> 
					                                    <!-- 商品框（2） --> 
									                    </c:if>     
									                   </c:forEach>      
                                       
                                    </div>
                                </div>
                              <!-- 新品 --end -->
                            </div>
							<!--商品  -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 商品分类 end -->
		<!-- 商品导航 -->
		<div class="bestseller-area" id="best">
			<div class="container">
				<div class="row">
					<!-- 新品 -->
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="best-seller-col wow fadeIn" data-wow-duration=".5s"
							data-wow-delay=".5s">
							<h3>
								新品
							</h3>
							<div class="best-seller-content">
							  <c:forEach items="${list}" var="xp">
                                     					<c:if test="${xp.isNew==1}">
								<!-- single-new-product-start -->
								<div class="single-new-product">
									<div class="product-img">
										<a href="qt_GoodsServlet?type=xq&id=${xp.goodsID}"><img   src="upload/${xp.thumbnail}"></a>
										</a>
									</div>
									<div class="product-details">
										<div class="single-product-content">
											<div class="product-title">
												<h5>
													<a href="#">${xp.goodsName}</a>
												</h5>
											</div>
											
											<div class="price-box">
												<span class="price">${xp.shopPrice}</span>
												<span class="old-price">￥70.00</span>
											</div>
											<div class="product-action">
												<button class="btn btn-default add-cart" title="加入购物车">
													加入购物车
												</button>
											</div>
										</div>
									</div>
								</div>
							</c:if>
							</c:forEach>
								
							</div>
						</div>
					</div>
					<!-- 精品 -->
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="best-seller-col top-mar-xs wow fadeIn"
							data-wow-duration=".5s" data-wow-delay=".5s">
							<h3>
								精品
							</h3>
							<div class="best-seller-content">
								<c:forEach items="${list}" var="xp">
                                     <c:if test="${xp.isBest==1}">
								<!-- single-new-product-start -->
								<div class="single-new-product">
									<div class="product-img">
										 <a href="qt_GoodsServlet?type=xq&id=${xp.goodsID}"><img   src="upload/${xp.thumbnail}"></a>
										</a>
									</div>
									<div class="product-details">
										<div class="single-product-content">
											<div class="product-title">
												<h5>
													<a href="#">${xp.goodsName}</a>
												</h5>
											</div>
											
											<div class="price-box">
												 <span class="price">${xp.shopPrice}</span>
				                                                        <span class="old-price">70.00</span>
											</div>
											<div class="product-action">
												<button class="btn btn-default add-cart" title="加入购物车">
													加入购物车
												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- single-new-product-start -->
								</c:if>
								</c:forEach>
							</div>
						</div>
					</div>
					<!-- 热销 -->
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="best-seller-col top-mar-xs wow fadeIn"
							data-wow-duration=".5s" data-wow-delay=".5s">
							<h3>
								热销
							</h3>
							<div class="best-seller-content">
								   <c:forEach items="${list}" var="xp">
                                     <c:if test="${xp.isHot==1}">
								<!-- single-new-product-start -->
								<div class="single-new-product">
									<div class="product-img">
										 <a href="qt_GoodsServlet?type=xq&id=${xp.goodsID}"><img   src="upload/${xp.thumbnail}"></a>
										</a>
									</div>
									<div class="product-details">
										<div class="single-product-content">
											<div class="product-title">
												<h5>
													<a href="#">${xp.goodsName}</a>
												</h5>
											</div>
											
											<div class="price-box">
											   <span class="price">${xp.shopPrice}</span>
				                                                        <span class="old-price">70.00</span>
											</div>
											<div class="product-action">
												<button class="btn btn-default add-cart" title="加入购物车">
													加入购物车
												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- single-new-product-start -->
								</c:if>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 商品导航 end -->
		<!-- 展示新品列表 -->
		<div class="new-product-area" id="new">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="section-heading">
							<h3>
								新品
							</h3>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="new-product wow fadeIn" data-wow-duration=".5s"
						data-wow-delay=".5s">
						<div class="new-carousel">
						<!-- 新品列表 -->
						 <c:forEach items="${list}" var="xp">
						 <c:if test="${xp.isNew==1}">
							<div class="col-md-12">
								<!-- single-product-start -->
								<div class="single-product">
									<div class="single-product-img">
										<a href="qt_GoodsServlet?type=xq&id=${xp.goodsID}"><img   src="upload/${xp.thumbnail}"></a>
										</a>
										<span class="new-box"> <span class="new">New</span> </span>
									</div>
									<div class="single-product-content">
										<div class="product-title">
											<h5>
												<a href="#">${xp.goodsName}</a>
											</h5>
										</div>
										
										<div class="price-box">
											<span class="price">${xp.shopPrice}</span>
											<span class="old-price">￥70.00</span>
										</div>
										<div class="product-action">
										
											<button class="btn btn-default add-cart" title="加入购物车">
												加入购物车<span style="display: none;">${xp.goodsID}</span>
											</button>
											 <a class="quick-view" href="qt_GoodsServlet?type=xq&id=${xp.goodsID}" title="查看详情" data-toggle="modal" ><i class="fa fa-search"></i></a>
											
										</div>
									</div>
								</div>
								<!-- single-product-end -->
							</div>
							</c:if>
							</c:forEach>
							
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 展示新品列表 end -->
		<!-- 品牌 -->
		<div class="banner-2-area">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="single-banner wow fadeIn" data-wow-duration=".5s"
							data-wow-delay=".5s">
							<a href="#"><img src="img/banner/11.jpg" alt="" />
							</a>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="single-banner wow fadeIn" data-wow-duration=".5s"
							data-wow-delay=".5s">
							<a href="#"><img src="img/banner/12.jpg" alt="" />
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 品牌 end -->
		<!-- 特价促销 -->
		<div class="exclusive-area" id="tejia">
			<div class="container">
				<div class="row">
					   <div class="col-md-3 col-xs-12 hidden-sm wow fadeIn" data-wow-duration=".5s" data-wow-delay=".5s">
                <div class="best-seller">
                    <div class="row">
                        <div class="best-carousel">
                            <div class="col-md-12">
                                <!-- single-product-start -->
                                <div class="single-product">
                                    <div class="single-product-img">
                                        <a href="#"><img src="img/singlepro/11.jpg" alt=""/></a>
                                        <span class="discount-box">-12%</span>
                                    </div>
                                    <div class="upcoming">
                                        <span class="is-countdown"> </span>
                                        <div data-countdown="2017/11/24"></div>
                                    </div>
                                    <div class="single-product-content">
                                        <div class="product-title">
                                            <h5><a href="#">连衣裙</a></h5>
                                        </div>
                                       
                                        <div class="price-box">
                                            <span class="price">￥50.00</span>
                                            <span class="old-price">￥70.00</span>
                                        </div>
                                        <div class="product-action">
                                            <button class="btn btn-default add-cart" title="add to cart">加入购物车
                                            </button>
                                           
                                            <a class="quick-view" href="#" title="查看" data-toggle="modal"
                                               data-target="#myModal"><i class="fa fa-search"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- single-product-end -->
                            </div>
                         
                        </div>
                    </div>
                </div>
            </div>
					<div class="col-md-9 col-xs-12 col-sm-12 wow fadeIn"
						data-wow-duration=".5s" data-wow-delay=".5s">
						<div class="row">
							<div class="col-md-12">
								<div class="section-heading">
									<h3>
										特价促销
									</h3>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="exclusive-product">
								<div class="exclusive-carousel">
									<!--开始-->
									<c:forEach items="${list}" var="xp">
                                    <c:if test="${xp.isPromotion==1}">
									<div class="col-md-12">
										<!-- single-product-start -->
										<div class="single-product">
											<div class="single-product-img">
												<a href="qt_GoodsServlet?type=xq&id=${xp.goodsID}"><img   src="upload/${xp.thumbnail}"></a>
												</a>
												<span class="sale-box"> <span class="sale">-19%</span>
												</span>
											</div>
											<div class="single-product-content">
												<div class="product-title">
													<h5>
														<a href="#">${xp.goodsName}</a>
													</h5>
												</div>
												
												<div class="price-box">
													<span class="price">${xp.shopPrice}</span>
											<span class="old-price">￥70.00</span>
												</div>
												<div class="product-action">
													<button class="btn btn-default add-cart"
														title="加入购物车">
														加入购物车
													</button>
													
													  <a class="quick-view" href="qt_GoodsServlet?type=xq&id=${xp.goodsID}" title="查看详情" data-toggle="modal" ><i class="fa fa-search"></i></a>
												</div>
											</div>
										</div>
										<!-- single-product-end -->
									</div>
									</c:if></c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 特价促销 end -->
		
		<!-- 用户反馈 -->
		<div class="news-letter-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-xs-12">
						<div class="subscribe-area wow fadeIn" data-wow-duration=".5s"
							data-wow-delay=".5s">
							<div class="subscribe-title" id="suggest">
								<h3>
									<span>提交</span>您宝贵的建议
								</h3>
								<p>
									我们将认真阅读您提供的宝贵的建议，感谢您对本商城的大力支持...
								</p>
								<form action="#suggest">
									<div class="subscribe-form">
										<input type="text" placeholder="Your suggest..."
											class="form-control search-form" />
										<button>
											提交
										</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 用户反馈  end -->
		<!-- 三包 -->
		<div class="service-area">
			<div class="container">
				<div class="row">
					<div class="service wow fadeIn" data-wow-duration=".5s"
						data-wow-delay=".5s">
						<div class="col-md-3 col-xs-12 col-sm-3">
							<div class="single-service">
								<i class="fa fa-plane"></i>
								<h3>
									全国包邮
								</h3>
								<p>
									7日到货
								</p>
							</div>
						</div>
						<div class="col-md-3 col-xs-12 col-sm-3">
							<div class="single-service">
								<i class="fa fa-taxi"></i>
								<h3>
									送货上门
								</h3>
								<p>
									全国各地城市农村街道
								</p>
							</div>
						</div>
						<div class="col-md-3 col-xs-12 col-sm-3">
							<div class="single-service no-bor">
								<i class="fa fa-cc-visa"></i>
								<h3>
									支付方式
								</h3>
								<p>
									多种方式支付
								</p>
							</div>
						</div>
						<div class="col-md-3 col-xs-12 col-sm-3">
							<div class="single-service no-bor">
								<i class="fa fa-phone"></i>
								<h3>
									在线客服
								</h3>
								<p>
									24小时在线服务
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 三包 end -->
		<!-- 博客 -->
		<div class="blog-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="section-heading">
							<h3>
								最新博客
							</h3>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="blogs wow fadeIn" data-wow-duration=".5s"
						data-wow-delay=".5s">
						<div class="blog-carousel">
							
						<div class="col-md-12">
								<div class="single-blog">
									<div class="blog-img">
										<img src="img/blog/1.jpg" alt="" />
										
									</div>
									<div class="blog-content">
										<h3>
											<a href="#">教你怎么搭配</a>
										</h3>
										
										<p>
											​​年末充满各种节庆气氛，比如下个月就要来临的圣诞、元旦、春节，总少不了美艳喜庆的正红色。而像今天这种单身节，我才不会告诉你，心理学家早就发现红色系的衣着能直接提升女性的魅力值、让你更容易脱单。 那么红色该怎么穿才好看呢？
										</p>
									</div>
								</div>
							</div><div class="col-md-12">
								<div class="single-blog">
									<div class="blog-img">
										<img src="img/blog/2.jpg" alt="" />
										
									</div>
									<div class="blog-content">
										<h3>
											<a href="#">教你怎么搭配</a>
										</h3>
										
										<p>
											​​年末充满各种节庆气氛，比如下个月就要来临的圣诞、元旦、春节，总少不了美艳喜庆的正红色。而像今天这种单身节，我才不会告诉你，心理学家早就发现红色系的衣着能直接提升女性的魅力值、让你更容易脱单。 那么红色该怎么穿才好看呢？
										</p>
									</div>
								</div>
							</div><div class="col-md-12">
								<div class="single-blog">
									<div class="blog-img">
										<img src="img/blog/3.jpg" alt="" />
										
									</div>
									<div class="blog-content">
										<h3>
											<a href="#">教你怎么搭配</a>
										</h3>
										
										<p>
											​​年末充满各种节庆气氛，比如下个月就要来临的圣诞、元旦、春节，总少不了美艳喜庆的正红色。而像今天这种单身节，我才不会告诉你，心理学家早就发现红色系的衣着能直接提升女性的魅力值、让你更容易脱单。 那么红色该怎么穿才好看呢？
										</p>
									</div>
								</div>
							</div><div class="col-md-12">
								<div class="single-blog">
									<div class="blog-img">
										<img src="img/blog/4.jpg" alt="" />
										
									</div>
									<div class="blog-content">
										<h3>
											<a href="#">教你怎么搭配</a>
										</h3>
										
										<p>
											​​年末充满各种节庆气氛，比如下个月就要来临的圣诞、元旦、春节，总少不了美艳喜庆的正红色。而像今天这种单身节，我才不会告诉你，心理学家早就发现红色系的衣着能直接提升女性的魅力值、让你更容易脱单。 那么红色该怎么穿才好看呢？
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 博客 end -->
		<!-- 更多品牌 -->
		<div class="brand-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="section-heading">
							<h3>
								更多品牌
							</h3>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="brands wow fadeIn" data-wow-duration=".5s"
						data-wow-delay=".5s">
						<div class="brand-carousel">
							<div class="col-md-12">
								<div class="single-brand">
									<img src="img/brand/1.png" alt="" />
									
								</div>
							</div>
							<div class="col-md-12">
								<div class="single-brand">
									<img src="img/brand/1.png" alt="" />
									
								</div>
							</div>
							<div class="col-md-12">
								<div class="single-brand">
									<img src="img/brand/1.png" alt="" />
									
								</div>
							</div>
							<div class="col-md-12">
								<div class="single-brand">
									<img src="img/brand/1.png" alt="" />
									
								</div>
							</div>
							<div class="col-md-12">
								<div class="single-brand">
									<img src="img/brand/1.png" alt="" />
									
								</div>
							</div>
							<div class="col-md-12">
								<div class="single-brand">
									<img src="img/brand/1.png" alt="" />
									
								</div>
							</div>
							<div class="col-md-12">
								<div class="single-brand">
									<img src="img/brand/1.png" alt="" />
									
								</div>
							</div>
							<div class="col-md-12">
								<div class="single-brand">
									<img src="img/brand/1.png" alt="" />
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 更多品牌 end -->
		 <%@include file="dibu.jsp" %>
        