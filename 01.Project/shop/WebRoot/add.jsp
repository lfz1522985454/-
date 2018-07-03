<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>	
	<title>Checkout</title>
	<meta charset="utf-8" />
	<link rel="stylesheet" href="css/bootstrap.min1.css" />
	<link rel="stylesheet" href="css/woocommerce/woocommerce.css" />	
	<link rel="stylesheet" href="css/app-orange.css" id="theme_color" />
	<script type="text/javascript" src="js/jquery/jquery.min.js"></script>
<script type="text/javascript">

$(function(){
	
});
</script>

</head>
 <%@include file="top.jsp" %>
  <body>


   							<div class="woocommerce" style="height: 200px;">
   							<p style="font-size: 16px; font-weight: bold; margin-left: 250px;">填写地址</p>
								<form  method="post" class="checkout woocommerce-checkout" action="OrderSevlet?type=add&zje=${zj}">
									
									<label for="billing_email" class="" >详细地址&nbsp;&nbsp;&nbsp;</label>
									<input name="address" placeholder="请填写地址"  autocomplete="address"/>
									<label for="billing_phone" class="">备注&nbsp;&nbsp;&nbsp;</label>
									<input name="orderMsg" placeholder="请填备注"  autocomplete="orderMsg"/>
									
									<label for="billing_phone" class="">共计&nbsp;&nbsp;&nbsp;<span style="color: red;font: 20px;font-weight: bold;">${zj}</span></label>
				
									<input type="submit" class="button alt" name="woocommerce_checkout_place_order" id="place_order" style="width: 200px;height: 40px;margin-left: 100px;" value="去付款" data-value="Place order">
									
								</form>
								
							</div>
   
<%@include file="dibu.jsp" %>