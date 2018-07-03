
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="top.jsp" %>
	
	<!-- heading-banner-start -->
	<div class="heading-banner">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-xs-12">
					<div class="breadcrumb">
						<a title="主页" href="qt_GoodsServlet"> <i class="icon-home"></i>
						</a> <span class="navigation-page"> <span
							class="navigation-pipe">></span> 购物车 </span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- heading-banner-end -->
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
													<th class="product-remove">操作</th>
													<th class="product-thumbnail">图片</th>
													<th class="product-name">商品名称</th>
													<th class="product-price">价格</th>
													<th class="product-quantity">数量</th>
													<th class="product-subtotal">合计</th>
												</tr>
											</thead>

											<tbody>
												<c:forEach items="${cartlist}" var="c">
													<tr style="text-align: center;" id="sj">
														<td><a href="CartServlet?type=del&cid=${c.cartId}"><img
																width="20px;" height="20px;"
																src="admin/assets/img/cha.png" /> </a></td>
														<td style="text-align: center;"><img
															src="upload/${c.daTu1}" width="50" height="
50" /></td>
														<td><a href="qt_GoodsServlet?type=xq&id=${c.goodsId}">${c.goodsName}</a>
														</td>

														<td id="dj">${c.goodsprice}</td>
														<td class="product-quantity" data-title="Quantity"><input
															style="height: 30px; width: 60px;" class="sl"
															type="number" step="1" min="1" max="" name=""
															value="${c.goodsNumber}" title="Qty"
															class="input-text qty text" size="4" pattern="[0-9]*"
															inputmode="numeric">
														</td>

														<td class="hj" style="width: 250px;">${c.goodsprice*c.goodsNumber}</td>
													</tr>

												</c:forEach>

											</tbody>
										</table>
									</form>



									<div class="cart_totals "
										style="width: 300px;margin-left: 870px;">

										<table class="shop_table shop_table_responsive">
											<tbody>
												<tr class="order-total">
													<th style="text-align: right;">合计：</th>

													<td data-title="Total">

														<p id="jszj"
															style="margin-top: 20px;font-size: 18px; font-weight: bold;"></p>
													</td>
												</tr>

											</tbody>
										</table>

										<div class="wc-proceed-to-checkout">
											<a onclick="zj()"
												class="checkout-button button alt wc-forward"
												style="background-color: #CC2031;width: 298px;height: 50px;text-align: center; font-weight: bold;font-size: 20px;">结算</a>
										</div>
									</div>


								</div>
							</div>
						</div>

						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$('.sl').click(function() {
				var dj = $(this).parent().prev().html();
				var sl = $(this).val();
				var zj = dj * sl;
				$(this).parent().next().html(zj);
				jisuan();
			});
		});
		function zj(){
			var shu=$('#jszj').html();
			var sl=$('.sl').val();
			var dj=$('#dj').html();
			
			location.href='CartServlet?type=js&dj='+dj+'&sl='+sl+'&zj='+shu;	

		
			}
		function jisuan() {
			var zj = 0.0;
			var hj = $('.hj');
			for ( var i = 0; i < hj.length; i++) {
				zj += parseInt($(hj[i]).html());

			}

			$('#jszj').html(zj);
		}
		jisuan();
	</script>
	<%@include file="dibu.jsp"%>