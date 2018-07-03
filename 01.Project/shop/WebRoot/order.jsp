<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="top.jsp"%>

<!-- heading-banner-start -->
<div class="heading-banner">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-xs-12">
				<div class="breadcrumb">
					<a title="主页" href="qt_GoodsServlet"> <i class="icon-home"></i>
					</a>
					<span class="navigation-page"> <span class="navigation-pipe">></span>
						我的订单 </span>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="body-wrapper theme-clearfix">


	<div class="container">
		<div class="row">
			<div id="contents" role="main"
				class="main-page col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="page type-page status-publish hentry">
					<div class="entry-content">
						<div class="entry-summary">
							<div class="woocommerce">
								<form action="" method="post">
									<table class="shop_table shop_table_responsive cart">
										<thead>
											<tr>
												<th class="product-remove">
													订单号
												</th>
												
												<th class="product-price">
													订单状态
												</th>
												<th class="product-price">
													发货状态
												</th>
												<th class="product-quantity">
													配送方式
												</th>
												<th class="product-subtotal">
													配送地址
												</th>
											</tr>
										</thead>

										<tbody>
											<c:forEach items="${qtdd}" var="d">
												<tr style="text-align: center;">
													<td>
														${d.orderSN}
													</td>
													
													
													
													<td title="<c:if test="${o.orderStatus==0}">未确认</c:if>
              <c:if test="${d.orderStatus==1}">确认</c:if>
              <c:if test="${d.orderStatus==2}">已取消</c:if>
              <c:if test="${d.orderStatus==3}">无效</c:if>
              <c:if test="${d.orderStatus==4}">退货</c:if>
              <c:if test="${d.orderStatus==5}">已收货</c:if>">
														<c:if test="${d.orderStatus==0}">未确认</c:if>
              <c:if test="${d.orderStatus==1}">确认</c:if>
              <c:if test="${d.orderStatus==2}">已取消</c:if>
              <c:if test="${d.orderStatus==3}">无效</c:if>
              <c:if test="${d.orderStatus==4}">退货</c:if>
              <c:if test="${d.orderStatus==5}">已收货</c:if>
													</td>
													<td title="
													<c:if test="${d.shippingStatus==0}">未发货</c:if>
              <c:if test="${d.shippingStatus==1}">已发货</c:if>
              <c:if test="${d.shippingStatus==2}">已取消</c:if>
              <c:if test="${d.shippingStatus==3}">备货中</c:if>">
													<c:if test="${d.shippingStatus==0}">未发货</c:if>
              <c:if test="${d.shippingStatus==1}">已发货</c:if>
              <c:if test="${d.shippingStatus==2}">已取消</c:if>
              <c:if test="${d.shippingStatus==3}">备货中</c:if>
														
													</td>
													<td>
														${d.shippingName}
													</td>
													<td>
														${d.address}
													</td>
												</tr>
											</c:forEach>


										</tbody>
									</table>
								</form>





							</div>
						</div>
					</div>

					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@include file="dibu.jsp"%>