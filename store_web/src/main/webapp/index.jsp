<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <jsp:include page="_meta.jsp"/>
    <title>网站首页</title>
</head>

<body>
<head>
    <jsp:include page="_header.jsp"/>
</head>
<!--广告幻灯片样式-->
<div id="slideBox" class="slideBox">
    <div class="hd">
        <ul class="smallUl"></ul>
    </div>
    <div class="bd">
        <ul>
            <li><a href="#" target="_blank">
                <div style="background:url(http://localhost:8080/store_web/AD/ad-7.jpg) no-repeat; background-position:center; width:100%; height:450px;"></div>
            </a></li>
            <li><a href="#" target="_blank">
                <div style="background:url(http://localhost:8080/store_web/AD/ad-2.jpg) no-repeat; background-position:center ; width:100%; height:450px;"></div>
            </a></li>
            <li><a href="#" target="_blank">
                <div style="background:url(http://localhost:8080/store_web/AD/ad-3.jpg) no-repeat; background-position:center; width:100%; height:475px;"></div>
            </a></li>
            <li><a href="#" target="_blank">
                <div style="background:url(http://localhost:8080/store_web/AD/ad-7.jpg) no-repeat; background-position:center; width:100%; height:450px;"></div>
            </a></li>
            <li><a href="#" target="_blank">
                <div style="background:url(http://localhost:8080/store_web/AD/ad-2.jpg) no-repeat; background-position:center; width:100%; height:450px;"></div>
            </a></li>
        </ul>
    </div>
    <!-- 下面是前/后按钮-->
    <a class="prev" href="javascript:void(0)"></a>
    <a class="next" href="javascript:void(0)"></a>

</div>
<script type="text/javascript">
    jQuery(".slideBox").slide({titCell: ".hd ul", mainCell: ".bd ul", autoPlay: true, autoPage: true});
</script>
</div>

<!--内容样式-->
<div id="mian">
    <div class="clearfix marginbottom">
        <!--产品分类样式-->
        <div class="Menu_style" id="allSortOuterbox">
            <div class="title_name"><em></em>所有商品分类</div>
            <div class="content hd_allsort_out_box_new">
                <ul class="Menu_list">
                    <c:forEach items="${goodstype}" var="list">
                        <c:if test="${list.parent == null}">
                            <li class="name">
                                <div class="Menu_name"><a href="${pageContext.request.contextPath}/">${list.name}</a> <span>&lt;</span>
                                </div>
                                <div class="link_name">
                                    <p>
                                        <c:forEach items="${goodstype}" var="childList">
                                            <c:if test="${childList.parent == list.name}">
                                                <a href="#">${childList.name}</a>
                                            </c:if>
                                        </c:forEach>
                                    </p>
                                </div>
                                <div class="menv_Detail"></div>
                            </li>
                        </c:if>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <script>$("#allSortOuterbox").slide({titCell: ".Menu_list li", mainCell: ".menv_Detail",});</script>
        <!--产品栏切换-->
        <div class="product_list left">
            <div class="slideGroup">
                <div class="parHd">
                    <ul>
                        <li class="on">产品精选</li>
                    </ul>
                </div>
                <div class="parBd">
                    <div class="slideBoxs">
                        <a class="sPrev" href="javascript:void(0)"></a>
                        <ul>
                            <c:forEach items="${hgoods}" var="list">
                                <li>
                                    <div class="pic"><a href="#" target="_blank"><img
                                            src="${pageContext.request.contextPath}/img/${list.thumb_img}"/></a></div>
                                    <div class="title">
                                        <a href="#" target="_blank" class="name">${list.name}</a>
                                        <h3><b>￥</b>${list.discount}</h3>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                        <a class="sNext" href="javascript:void(0)"></a>
                    </div><!-- slideBox End -->

                </div><!-- parBd End -->
            </div>
            <script type="text/javascript">
                /* 内层图片无缝滚动 */
                jQuery(".slideGroup .slideBoxs").slide({
                    mainCell: "ul",
                    vis: 4,
                    prevCell: ".sPrev",
                    nextCell: ".sNext",
                    effect: "leftMarquee",
                    interTime: 50,
                    autoPlay: true,
                    trigger: "click"
                });
                /* 外层tab切换 */
                jQuery(".slideGroup").slide({titCell: ".parHd li", mainCell: ".parBd"});
            </script>
            <!--广告样式-->
            <div class="Ads_style"><a href="#"><img src="${pageContext.request.contextPath}/images/banner.jpg" width="955" height="346"/></a></div>
        </div>
    </div>
    <!--板块栏目样式-->
    <div class="clearfix Plate_style">
        <c:forEach items="${goodstype}" var="list" begin="1" end="4">
            <div class="Plate_column Plate_column_left">
                <div class="Plate_name">
                    <h2>推荐商品</h2>
                    <div class="Sort_link">
                        <a href="#" class="name">${list.name}</a>
                    </div>
                    <a href="#" class="Plate_link"> <img src="${pageContext.request.contextPath}/images/bk_img_14.png"/></a>

                </div>
                <div class="Plate_product">
                    <ul id="lists">
                        <c:set var="index" value="0"/>
                        <c:forEach items="${rgoods}" var="childList" end="${exit}">
                            <c:if test="${childList.typeid == list.id}">
                                <li class="product_display">
                                    <a href="#" class="img_link"><img
                                            src="${pageContext.request.contextPath}/img/${childList.thumb_img}"
                                            width="140" height="140"/></a>
                                    <a href="#" class="name">${childList.name}</a>
                                    <h3><b>￥</b>${childList.discount}</h3>
                                    <div class="Detailed">
                                        <div class="content">
                                            <p class="center"><a href="${pageContext.request.contextPath}/goodsDetail/doAddCart?goodsid=${childList.id}" class="Buy_btn">立即购买</a></p>
                                        </div>
                                    </div>
                                </li>
                                <c:set var="index" value="${index + 1}"/>
                            </c:if>
                            <c:if test="${index == 4}">
                                <c:set var="exit" value="0"/>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<!--网站地图END-->

<jsp:include page="_footer.jsp"/>

</body>
</html>
