<%@ page import="com.jimmy.utils.DateUtils" %><%--
  Created by IntelliJ IDEA.
  User: i、
  Date: 2020/5/8
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!--用户中心样式-->
<div class="left_style">
    <div class="menu_style">
        <div class="user_title"><a href="personal.jsp">用户中心</a></div>
        <div class="user_Head">
            <div class="user_portrait">
                <a href="${pageContext.request.contextPath}/personal/personalMsg" title="修改头像"
                   class="btn_link"></a> <img src="${pageContext.request.contextPath}/img/${user.head_img}">
                <div class="background_img"></div>
            </div>
            <div class="user_name">
                <p><span class="name">${user.username}</span><a
                        href="${pageContext.request.contextPath}/personal/personalMsg" title="修改信息">[修改信息]</a>
                </p>
                <p>访问时间：<%=DateUtils.getDateNowStr("yyyy-MM-dd")%></p>
            </div>
        </div>
        <div class="sideMen">
            <!--菜单列表图层-->
            <dl class="accountSideOption1">
                <dt class="transaction_manage"><em class="icon_1"></em>订单管理</dt>
                <dd>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/order/">我的订单</a></li>
                        <li><a href="${pageContext.request.contextPath}/personal/alterInfo">收货地址</a></li>
                        <li><a href="用户中心-产品预订.html">产品预订</a></li>
                    </ul>
                </dd>
            </dl>
            <dl class="accountSideOption1">
                <dt class="transaction_manage"><em class="icon_2"></em>会员管理</dt>
                <dd>
                    <ul>
                        <li><a href="#">用户信息</a></li>
                        <li><a href="#">我的收藏</a></li>
                        <li><a href="#">我的留言</a></li>
                        <li><a href="#">我的标签</a></li>
                        <li><a href="#">我的推荐</a></li>
                        <li><a href="#">我的评论</a></li>
                    </ul>
                </dd>
            </dl>
            <dl class="accountSideOption1">
                <dt class="transaction_manage"><em class="icon_3"></em>账户管理</dt>
                <dd>
                    <ul>
                        <li><a href="用户中心-账户管理.html">账户余额</a></li>
                        <li><a href="${pageContext.request.contextPath}/order/">消费记录</a></li>
                        <li><a href="#">跟踪包裹</a></li>
                        <li><a href="#">资金管理</a></li>
                    </ul>
                </dd>
            </dl>
            <dl class="accountSideOption1">
                <dt class="transaction_manage"><em class="icon_4"></em>分销管理</dt>
                <dd>
                    <ul>
                        <li><a href="#">店铺管理</a></li>
                        <li><a href="#">我的盟友</a></li>
                        <li><a href="#">我的佣金</a></li>
                        <li><a href="#">申请提现</a></li>
                    </ul>
                </dd>
            </dl>
        </div>
        <script>jQuery(".sideMen").slide({
            titCell: "dt",
            targetCell: "dd",
            trigger: "click",
            defaultIndex: 0,
            effect: "slideDown",
            delayTime: 300,
            returnDefault: true
        });</script>
    </div>
    <!--浏览记录样式-->
    <div class="us_Records">
        <%--<div id="Record_ps" class="Record_p">
            <div class="title_name"><span class="name left">浏览历史</span><span class="pageState right"></div>
            <div class="hd"><a class="next">&lt;</a><a class="prev">&gt;</a></div>
            <div class="bd">
                <ul>
                    <li>
                        <div class="p_width">
                            <div class="pic"><a href=""><img src="Products/P_1.jpg"></a></div>
                            <div class="title"><a href="#">金龙鱼 东北大米 蟹稻共生 盘锦大米5KG</a></div>
                            <div class="Purchase_info"><span class="p_Price">￥32.50</span> <a href="#"
                                                                                              class="Purchase">立即购买</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>--%>
        <script type="text/javascript">jQuery("#Record_ps").slide({
            mainCell: ".bd ul",
            autoPage: true,
            effect: "leftLoop",
            vis: 1,
            autoPlay: false
        });</script>
    </div>

</div>
