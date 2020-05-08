<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <jsp:include page="_meta.jsp" />
    <title>产品-产品详情</title>
    <script type="text/javascript">
        //弹出隐藏层
        function ShowDiv(show_div, bg_div) {
            document.getElementById(show_div).style.display = 'block';
            document.getElementById(bg_div).style.display = 'block';
            var bgdiv = document.getElementById(bg_div);
            bgdiv.style.width = document.body.scrollWidth;
// bgdiv.style.height = $(document).height();
            $("#" + bg_div).height($(document).height());
        };

        //关闭弹出层
        function CloseDiv(show_div, bg_div) {
            document.getElementById(show_div).style.display = 'none';
            document.getElementById(bg_div).style.display = 'none';
        };

    </script>
</head>

<body>

<jsp:include page="_header.jsp" />

<div class="clear">&nbsp;</div>

<!--网站头部-->
<div class="sup-wid">
    <div class="supplie-top">
        <div class=" clear bread"><a href="#">首页</a> <span class="pipe">&gt;</span> <a href="#">某供应商</a> <span
                class="pipe">&gt;</span> <a href="#">某产品</a></div>
    </div>
    <div class="pro_detail">
        <div class="pro_detail_img float-lt">
            <div class="gallery">
                <div class="tb-booth tb-pic tb-s310"><a
                        href="${pageContext.request.contextPath}/img/${goods.big_img}"><img
                        src="${pageContext.request.contextPath}/img/${goods.big_img}" alt="展品细节展示放大镜特效"
                        rel="${pageContext.request.contextPath}/img/${goods.big_img}" class="jqzoom"/></a></div>
                <ul class="tb-thumb" id="thumblist">
                </ul>
            </div>
            <script type="text/javascript">
                $(function () {
                    $("#h1").toggle(function () {
                        $("#h1").css("background-image", "url('images/iconfont-xingxingman_add.png')");
                    }, function () {
                        $("#h1").css("background-image", "url('images/iconfont-xingxingman_add.png') ");
                    })
                })

            </script>
            <input type="button" value="加入收藏" id="h1" class="addcart" onclick="ShowDiv('MyDiv2','fade2')"/>
        </div>
        <div class="float-lt pro_detail_con">
            <div class="pro_detail_tit">${goods.name}</div>
            <div class="pro_detail_ad">${goods.desc}</div>
            <div class="clear"></div>
            <c:if test="${goods.price != goods.discount}">
                <div class="pro_detail_price  margin-t20"><span class="margin-r20">市场价</span><span
                        style=" font-size:16px"><s>￥${goods.price}</s></span></div>
            </c:if>
            <div class="clear"></div>
            <div class="pro_detail_act margin-t20 fl"><span class="margin-r20">售价</span><span
                    style="font-size:26px; font-weight:bold; color:#dd514c;">￥${goods.discount}</span></div>
            <div class="clear"></div>
            <div class="pro_detail_number margin-t30">
                <div class="margin-r20 float-lt">数量</div>
                <div class=""><i class="jian"></i>
                    <input type="text" value="1" class="float-lt choose_input"/>
                    <i class="jia"></i> <span>&nbsp;盒</span> <span>（库存${goods.inventory}盒）</span></div>
                <div class="clear"></div>
            </div>
            <div class="pro_detail_number margin-t20">
                <div class="margin-r20 float-lt">月成交量：<span class="colorred"><strong>${sell}</strong></span></div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <div class="pro_detail_btn margin-t30">
                <ul>
                    <li class="pro_detail_shop"><a href="pay1.html">立即购买</a></li>
                    <li class="pro_detail_add"><a href="#" onclick="ShowDiv('MyDiv','fade')">加入我的货仓</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <script>
        $(function () {
            $(".pro_tab li").each(function (i) {
                $(this).click(function () {
                    $(this).addClass("cur").siblings().removeClass("cur");
                    $(".conlist .conbox").eq(i).show().siblings().hide();
                })
            })
        })
    </script>
    <div class="pro_con margin-t55" style="overflow:hidden;">
        <div class="pro_tab">
            <ul>
                <li class="cur">产品介绍</li>
                <li>规格及包装</li>
                <li>评价</a></li>
            </ul>
        </div>
        <div class="conlist">
            <div class="conbox" style="display:block;">1</div>
            <div class="conbox">2</div>

            <!--评论区-->
            <div class="conbox">
                <div class="pro_judge">
                    <ul>
                        <li class="cur">
                            <input name="RadioGroup1" type="radio" value="" checked="checked" id="RadioGroup1_0"/>
                            全部（100）
                        </li>
                        <li>
                            <input name="RadioGroup1" type="radio" value="" id="RadioGroup1_1"/>
                            好评（80）
                        </li>
                        <li>
                            <input name="RadioGroup1" type="radio" value="" id="RadioGroup1_2"/>
                            中评（10）
                        </li>
                        <li>
                            <input name="RadioGroup1" type="radio" value="" id="RadioGroup1_3"/>
                            差评（10）
                        </li>
                    </ul>
                    <table width="100%" border="0">
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img
                                    src="images/01_mid.jpg" width="60" height="60" class="border_gry"/></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br/>
                                <br/>
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img
                                    src="images/01_mid.jpg" width="60" height="60" class="border_gry"/></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br/>
                                <br/>
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img
                                    src="images/01_mid.jpg" width="60" height="60" class="border_gry"/></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br/>
                                <br/>
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img
                                    src="images/01_mid.jpg" width="60" height="60" class="border_gry"/></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br/>
                                <br/>
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img
                                    src="images/01_mid.jpg" width="60" height="60" class="border_gry"/></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br/>
                                <br/>
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img
                                    src="images/01_mid.jpg" width="60" height="60" class="border_gry"/></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br/>
                                <br/>
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img
                                    src="images/01_mid.jpg" width="60" height="60" class="border_gry"/></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br/>
                                <br/>
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img
                                    src="images/01_mid.jpg" width="60" height="60" class="border_gry"/></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br/>
                                <br/>
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                        <tr>
                            <td width="80" align="left"><a href="" rel="images/01_mid.jpg" class="preview"><img
                                    src="images/01_mid.jpg" width="60" height="60" class="border_gry"/></a></td>
                            <td>茶泡出来颜色很好！味道很清香！非常喜欢！包装也很精致，下次还来买！好评！<br/>
                                <br/>
                                <span class="pro_judge_time">2014.1.3</span></td>
                            <td>张三</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="hotpro">
        <div class="hotpro_title">热销产品</div>
        <div class="hotpro_box">
            <div class="pro-view-hot">
                <ul>
                    <li class="pro-img"><a href="#"><img src="images/pro-1.jpg"/></a></li>
                    <li class="price"><strong>￥ 36.00</strong><span>已销售227</span></li>
                    <li><a href="#" class="title">恒顺蜂蜜醋 10ml*24支 纯粮酿造 镇江香醋 江苏特产 礼盒礼品 </a></li>
                </ul>
                <ul>
                    <li class="pro-img"><a href="#"><img src="images/pro-1.jpg"/></a></li>
                    <li class="price"><strong>￥ 36.00</strong><span>已销售227</span></li>
                    <li><a href="#" class="title">恒顺蜂蜜醋 10ml*24支 纯粮酿造 镇江香醋 江苏特产 礼盒礼品 </a></li>
                </ul>
                <ul>
                    <li class="pro-img"><a href="#"><img src="images/pro-1.jpg"/></a></li>
                    <li class="price"><strong>￥ 36.00</strong><span>已销售227</span></li>
                    <li><a href="#" class="title">恒顺蜂蜜醋 10ml*24支 纯粮酿造 镇江香醋 江苏特产 礼盒礼品 </a></li>
                </ul>
                <ul>
                    <li class="pro-img"><a href="#"><img src="images/pro-1.jpg"/></a></li>
                    <li class="price"><strong>￥ 36.00</strong><span>已销售227</span></li>
                    <li><a href="#" class="title">恒顺蜂蜜醋 10ml*24支 纯粮酿造 镇江香醋 江苏特产 礼盒礼品 </a></li>
                </ul>
                <ul>
                    <li class="pro-img"><a href="#"><img src="images/pro-1.jpg"/></a></li>
                    <li class="price"><strong>￥ 36.00</strong><span>已销售227</span></li>
                    <li><a href="#" class="title">恒顺蜂蜜醋 10ml*24支 纯粮酿造 镇江香醋 江苏特产 礼盒礼品 </a></li>
                </ul>
                <ul style="margin-right:0;">
                    <li class="pro-img"><a href="#"><img src="images/pro-1.jpg"/></a></li>
                    <li class="price"><strong>￥ 36.00</strong><span>已销售227</span></li>
                    <li><a href="#" class="title">恒顺蜂蜜醋 10ml*24支 纯粮酿造 镇江香醋 江苏特产 礼盒礼品 </a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="clear">&nbsp;</div>


<!--网站地图-->
<jsp:include page="_footer.jsp" />


<!--弹出层时背景层DIV-->

<!--商品添加成功DIV-->
<div id="fade" class="black_overlay"></div>
<div id="MyDiv" class="white_content">
    <div style="width:385px; height:30px; background:#1ba67f; padding-left:15px; color:#fff; line-height:30px; font-size:14px;"> <span
            onclick="CloseDiv('MyDiv','fade')">
        <input type="button" class="addbtn">
        </span>商品加入货仓
    </div>
    <div class="dialogbox">
        <p>商品添加成功！</p>
    </div>
</div>
</div>

<!--商品收藏成功DIV-->
<div id="fade2" class="black_overlay"></div>
<div id="MyDiv2" class="white_content">
    <div style="width:385px; height:30px; background:#1ba67f; padding-left:15px; color:#fff; line-height:30px; font-size:14px;"> <span
            onclick="CloseDiv('MyDiv2','fade2')">
        <input type="button" class="addbtn">
        </span>商品收藏
    </div>
    <div class="dialogbox">
        <p>商品收藏成功！</p>
    </div>
</div>
</div>
<script type="text/javascript">
    $(document).ready(function () {

        $(".jqzoom").imagezoom();

        $("#thumblist li a").mousemove(function () {
            $(this).parents("li").addClass("tb-selected").siblings().removeClass("tb-selected");
            $(".jqzoom").attr('src', $(this).find("img").attr("mid"));
            $(".jqzoom").attr('rel', $(this).find("img").attr("big"));
        });

    });
</script>
</body>
</html>
