<%--
  Created by IntelliJ IDEA.
  User: i、
  Date: 2020/5/8
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div id="header_top">
    <div id="top">
        <div class="Inside_pages">
            <div class="Collection"><a href="#" class="green">请登录</a> <a href="#" class="green">免费注册</a></div>
            <div class="hd_top_manu clearfix">
                <ul class="clearfix">
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="#">首页</a></li>
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"> <a href="#">我的小充</a> </li>
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="personal.jsp" title="用户中心">用户中心</a></li>
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="#">商品分类</a></li>
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="#">我的购物车<b>(23)</b></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div id="header"  class="header page_style">
        <div class="logo"><a href="index.jsp"><img src="images/logo.png" /></a></div>
        <!--结束图层-->
        <div class="Search">
            <div class="search_list">
                <ul>
                    <li class="current"><a href="#">产品</a></li>
                    <li><a href="#">信息</a></li>
                </ul>
            </div>
            <div class="clear search_cur">
                <form action="${pageContext.request.contextPath}/goods/search" method="get">
                    <input name="text" id="searchName" class="search_box"
                           type="text">
                    <input name="" type="submit" value="搜 索" class="Search_btn"/>
                </form>
            </div>
            <div class="clear hotword">热门搜索词：香醋&nbsp;&nbsp;&nbsp;茶叶&nbsp;&nbsp;&nbsp;草莓&nbsp;&nbsp;&nbsp;葡萄&nbsp;&nbsp;&nbsp;菜油</div>
        </div>
    </div>
    <!--菜单栏-->
    <div class="Navigation" id="Navigation">
        <ul class="Navigation_name">
            <li><a href="Home.html">首页</a></li>
            <li><a href="#">你身边的超市</a></li>
            <li><a href="#">预售专区</a><em class="hot_icon"></em></li>
            <li><a href="products_list.html">商城</a></li>
            <li><a href="#">半小时生活圈</a></li>
            <li><a href="#">好评商户</a></li>
            <li><a href="#">热销活动</a></li>
            <li><a href="Brands.html">联系我们</a></li>
        </ul>
    </div>
    <script>$("#Navigation").slide({titCell:".Navigation_name li",trigger:"click"});</script>
</div>
