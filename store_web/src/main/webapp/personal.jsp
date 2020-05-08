<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <jsp:include page="_meta.jsp"/>
    <title>用户中心</title>
</head>

<body>
<head>
    <jsp:include page="_header.jsp"/>
</head>
<!--用户中心样式-->
<div class="user_style clearfix">
    <div class="user_center clearfix">
        <jsp:include page="_userInfo.jsp"/>
        <div class="right_style">
            <div class="info_content">
                <div class="user_info_p_s  clearfix">
                    <!--订单记录-->
                    <div class="left_user_cont">
                        <div class="us_Orders left clearfix">
                            <div class="Orders_name">
                                <div class="title_name">
                                    <div class="Records">购买记录</div>
                                    <div class="right select">
                                        只记录你最近30天的购买记录
                                    </div>
                                </div>
                            </div>
                            <table>
                                <thead>
                                <tr>
                                    <th>产品名称</th>
                                    <th>数量</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="list" items="${orderList}">
                                    <tr>
                                        <td class="img_link">
                                            <a href="#" class="img"><img
                                                    src="${pageContext.request.contextPath}/img/${list.goods_thumb_img}"
                                                    width="80" height="80"></a>
                                            <a href="#" class="title">${list.goods_name}</a>
                                        </td>
                                        <td>${list.count}</td>
                                        <c:if test="${list.is_paid == 1 && list.receive_time != null}">
                                            <td>完成</td>
                                        </c:if>
                                        <c:if test="${list.is_paid == 1 && list.receive_time == null}">
                                            <td>等待收货</td>
                                        </c:if>
                                        <c:if test="${list.is_paid == 0}">
                                            <td>未付款</td>
                                        </c:if>
                                        <td><a href="${pageContext.request.contextPath}/order/" class="View">查看</a></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <div class="us_jls">共${orderList.size()}条记录</div>
                        </div>
                    </div>
                </div>
                <!--结束-->
            </div>

        </div>
    </div>
</div>
<!--网站地图-->
<jsp:include page="_footer.jsp"/>
</body>
</html>
