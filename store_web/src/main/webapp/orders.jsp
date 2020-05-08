<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <jsp:include page="_meta.jsp" />
    <title>订单管理</title>
</head>

<body>
<head>
    <jsp:include page="_header.jsp" />
</head>
<div class="user_style clearfix">
    <div class="user_center clearfix">
        <jsp:include page="_userInfo.jsp" />
        <!--右侧样式-->
        <div class="right_style">
            <div class="title_style"><em></em>订单管理</div>
            <div class="Order_form_style">
                <div class="Order_form_list">
                    <table>
                        <thead>
                        <tr>
                            <td class="list_name_title0">商品</td>
                            <td class="list_name_title1">单价(元)</td>
                            <td class="list_name_title2">数量</td>
                            <td class="list_name_title4">实付款(元)</td>
                            <td class="list_name_title5">订单状态</td>
                            <td class="list_name_title6">操作</td>
                        </tr>
                        </thead>
                        <c:forEach items="${orderTimeList}" var="timeList">
                            <tbody>
                            <tr class="Order_info">
                                <td colspan="6" class="Order_form_time"><input name="" type="checkbox" value=""
                                                                               class="checkbox"/>下单时间：${timeList}</td>
                            </tr>
                            <tr class="Order_Details" >
                            <td colspan="3">
                            <c:forEach items="${orderList}" var="list">
                                <c:if test="${list.orderTimeStr == timeList}">
                                    <input type="hidden" class="orderid" value="${list.id}"/>
                                    <table class="Order_product_style">
                                        <tbody>
                                        <tr>
                                            <td>
                                                <div class="product_name clearfix">
                                                    <a href="#" class="product_img"><img
                                                            src="${pageContext.request.contextPath}/img/${list.goods_thumb_img}"
                                                            width="80px" height="80px"></a>
                                                    <a href="3" class="p_name">${list.goods_name}</a>
                                                </div>
                                            </td>
                                            <td>${list.goods_discount}</td>
                                            <td>${list.count}</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    </td>
                                    <td class="split_line">${list.goods_discount * list.count}</td>
                                    <c:if test="${list.is_paid == 1 && list.receiveTimeStr == null}">
                                        <td class="split_line"><p style="color:#F33">买家已付款</p></td>
                                    </c:if>
                                    <c:if test="${list.is_paid == 1 && list.receiveTimeStr != null}">
                                        <td class="split_line"><p style="color:#F33">交易已成功</p></td>
                                    </c:if>
                                    <c:if test="${list.is_paid == 0}">
                                        <td class="split_line"><p style="color:#F33">等待买家付款</p></td>
                                    </c:if>
                                    <td class="operating">
                                        <c:if test="${list.is_paid == 0}">
                                            <a href="#" class="Delivery_btn" class="receive">确认收货</a>
                                        </c:if>
                                        <a href="#" class="cancel">删除</a>
                                    </td>
                                    </tr>
                                    </tbody>
                                </c:if>
                            </c:forEach>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function () {
                $('.Order_form_style input').iCheck({
                    checkboxClass: 'icheckbox_flat-green',
                    radioClass: 'iradio_flat-green'
                });
            });

            $('.receive').click(function () {
                let orderid = $(this).parent().sibling('.orderid').val();
                $.ajax({
                    url: "/order/receive",
                    type: "post",
                    data: {
                        orderid : orderid
                    },
                    success: function(){
                        window.location.href = "http://localhost:8080/store_web/order/";
                    }
                })
            });

            $('.cancel').click(function () {
                let orderid = $(this).parent().sibling('.orderid').val();
                $.ajax({
                    url: "/order/cancel",
                    type: "post",
                    data: {
                        orderid : orderid
                    },
                    success: function(){
                        window.location.href = "http://localhost:8080/store_web/order/";
                    }
                })
            })
        </script>
    </div>
</div>
</div>
<!--网站地图-->
<jsp:include page="_footer.jsp" />
</body>
</html>
