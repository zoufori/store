<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/user_style.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/skins/all.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/safe/aywmq_qt.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/safe/da_opt.js"></script>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/safe/css.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/safe/common.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/safe/ms-style.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/safe/personal_member.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/safe/Snaddress.min.css"/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/common_js.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/footer.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/layer/layer.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/iCheck.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/custom.js" type="text/javascript"></script>

    <title>购物车</title>
</head>

<body>
<head>
    <div id="header_top">
        <div id="top">
            <div class="Inside_pages">
                <div class="Collection"><a href="#" class="green">请登录</a> <a href="#" class="green">免费注册</a></div>
                <div class="hd_top_manu clearfix">
                    <ul class="clearfix">
                        <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="#">首页</a></li>
                        <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="#">我的小充</a></li>
                        <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="personal.jsp"
                                                                                 title="用户中心">用户中心</a></li>
                        <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="#">商品分类</a></li>
                        <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="#">我的购物车<b>(23)</b></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="header" class="header page_style">
            <div class="logo"><a href="index.jsp"><img src="images/logo.png"/></a></div>
            <!--结束图层-->
            <div class="Search">
                <div class="search_list">
                    <ul>
                        <li class="current"><a href="#">产品</a></li>
                        <li><a href="#">信息</a></li>
                    </ul>
                </div>
                <div class="clear search_cur">
                    <input name="searchName" id="searchName" class="search_box" onkeydown="keyDownSearch()" type="text">
                    <input name="" type="submit" value="搜 索" class="Search_btn"/>
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
        <script>$("#Navigation").slide({titCell: ".Navigation_name li", trigger: "click"});</script>
    </div>
</head>
<!--用户中心样式-->
<div class="cont">

    <div style="width: 1210px;">
        <div style="margin-top: 20px; margin-left: 150px;  width: 1200px;">
            <font style="font-size: 16px;color: #F4401C;font-weight: bold; margin-left:20px;border-bottom: 1px #F88600 solid;   padding-bottom: 14px;">全部商品
                6</font>
            <font style="font-size: 16px;color: #060606; font-weight:bold;margin-left:20px;">|</font>
            <font style="font-size: 16px;color: #060606; font-weight:bold;margin-left:20px;">降价商品 0</font>
            <font style="font-size: 16px;color: #060606; font-weight:bold;margin-left:20px;">|</font>
            <font style="font-size: 16px;color: #060606; font-weight:bold;margin-left:20px;">库存紧张 0</font>
            <font style="font-size: 12px;color: #949494; font-weight:bold;margin-left:670px;">已选商品(不含运费)</font>
            <input type="button" value="结算"
                   style="float: right; color:#686868;background-color:#DEDEDE;height:20px;width:46px;border-style:solid;"></input>
            <hr style=" border-style:solid;width: 1200px;border-color:#DEDEDE;margin-top: 12px;"/>
            <input name="商品" type="checkbox" value="" style="margin-top:19px;"/>
            <font style="font-size: 12px;color: #212121;margin-left: 20px;font-weight: bold;margin-top: -15px;display: flex;">全选</font>
            <font style="font-size: 12px;color: #212121;margin-left: 100px;font-weight: bold;">商品信息</font>
            <font style="font-size: 12px;color: #212121;margin-left: 400px;font-weight: bold;">单价(元)</font>
            <font style="font-size: 12px;color: #212121;margin-left: 100px;font-weight: bold;">数量</font>
            <font style="font-size: 12px;color: #212121;margin-left: 100px;font-weight: bold;">金额(元)</font>
            <font style="font-size: 12px;color: #212121;margin-left: 100px;font-weight: bold;">操作</font>
            <br/>
            <c:forEach items="${goodsList}" var="list">
                <input type="hidden" class="orderid" value="${list.id}"/>
                <div style="border:1px solid #ccc;height: 150px;margin-top: 20px;">
                    <div>
                        <img src="${pageContext.request.contextPath}/img/${list.thumb_img}"
                             style="margin-left:40px; width: 82px; height: 82px; float: left;"/>
                    </div>
                    <div style="display: flex" class="msgbox">
                        <p style="font-size: 12px;color: #1f1f1f;width: 340px; word-break: normal;white-space: pre-wrap;word-wrap: break-word ">${list.name}</p>
                        <c:if test="${list.discount != list.price}">
                            <p style="font-size: 12px;color: #949494;margin-left: 150px;TEXT-DECORATION: line-through; ">${list.price}</p>
                            <p style="font-size: 12px;color: #1f1f1f;margin-left: 150px;font-weight: bold;  ">${list.discount}</p>
                        </c:if>
                        <c:if test="${list.discount == list.price}">
                            <p style="font-size: 12px;color: #1f1f1f;margin-left: 150px;font-weight: bold;  " class="discount">${list.discount}</p>
                        </c:if>
                        <span style="margin-left:35px;float: left; ">
          <input type="button" class="detract" value="-"
                 style=" color:#333333;height:30px;width:20px;border-style:solid;margin-left:30px;"/>
          <input type="text" class="countNum" value="${orderList.count}"
                 style=" color:#333333;height:30px;width:30px;text-align:center;"/>
          <input type="button" value="+" class="add" style=" color:#333333;height:30px;width:20px;border-style:solid;"/>
        </span>
                        <span style="margin-left:10px;float: left;">
                    <font style="font-size: 14px;color: #FD3C0D;margin-left: 85px;font-weight: bold;  "
                          class="total">${list.discount * orderList.count}</font>l
        </span>
                        <span style="margin-left:85px; float: left;">
                    <a href="#" onclick=""><font style="font-size: 14px;color: #1E1E1E; ">删除</font></a>
        </span>
                    </div>

                </div>
                <br/>
            </c:forEach>
            <div style="margin-top: 10px;background:#E5E5E5;height:50px;width:1200px;">
                <table class="uiTable">
                    <tr>
                        <th style="line-height:50px;">
                            <input name="店铺" type="checkbox" value=""
                                   style="height: 14px;width: 14px;float: left;margin-top: 19px;"/>
                            <font style="font-size: 12px;color: #333333;margin-left: 20px;font-weight: bold;display: flex;">全选</font>
                        <th style="line-height:50px;"><font
                                style="font-size: 12px;margin-left:50px;color: #333333; ">删除</font></th>
                        <th style="line-height:50px;"><font style="font-size: 12px;margin-left:50px;color: #333333;  ">消除失效宝贝</font>
                        </th>
                        <th style="line-height:50px;"><font style="font-size: 12px;margin-left:50px; color: #333333;">移入收藏夹</font>
                        </th>
                        <th style="line-height:50px; "><font style="font-size: 12px;margin-left:50px;color: #333333; ">分享</font>
                        </th>
                        <th class="lastTd" colspan="2" style="line-height:50px; "><font
                                style="font-size: 12px;margin-left:300px; ">已选商品</font><font
                                style="font-size: 12px;color:#FD3C0D;">0</font><font
                                style="font-size: 12px;color:#333333;">件</font></th>
                        <th style="line-height:50px; "><span style="font-size: 12px;margin-left:80px;color: #949494; ">合计(不含运费):</span>
                        </th>
                        <th style="line-height:50px; ">
                            <span style="font-size: 18px;color:#FD3C0D;" class="totalNum">￥${total}</span></th>
                        <th style="line-height:50px; "><font
                                style="font-size: 20px;margin-left:43px;color: #949494; "><a href="#" id="check">结算</a></font></th>
                    </tr>
                </table>
            </div>

        </div>
    </div>
</div>
<!--网站地图-->
<div class="fri-link-bg clearfix">
    <div class="fri-link">
        <div class="">
            <dl>
                <dt>新手上路</dt>
                <dd><a href="#">售后流程</a></dd>
                <dd><a href="#">购物流程</a></dd>
                <dd><a href="#">订购方式</a></dd>
                <dd><a href="#">隐私声明 </a></dd>
                <dd><a href="#">推荐分享说明 </a></dd>
            </dl>
            <dl>
                <dt>配送与支付</dt>
                <dd><a href="#">保险需求测试</a></dd>
                <dd><a href="#">专题及活动</a></dd>
                <dd><a href="#">挑选保险产品</a></dd>
                <dd><a href="#">常见问题 </a></dd>
            </dl>
            <dl>
                <dt>售后保障</dt>
                <dd><a href="#">保险需求测试</a></dd>
                <dd><a href="#">专题及活动</a></dd>
                <dd><a href="#">挑选保险产品</a></dd>
                <dd><a href="#">常见问题 </a></dd>
            </dl>
            <dl>
                <dt>支付方式</dt>
                <dd><a href="#">保险需求测试</a></dd>
                <dd><a href="#">专题及活动</a></dd>
                <dd><a href="#">挑选保险产品</a></dd>
                <dd><a href="#">常见问题 </a></dd>
            </dl>
            <dl>
                <dt>帮助中心</dt>
                <dd><a href="#">保险需求测试</a></dd>
                <dd><a href="#">专题及活动</a></dd>
                <dd><a href="#">挑选保险产品</a></dd>
                <dd><a href="#">常见问题 </a></dd>
            </dl>
            <dl>
                <dt>帮助中心</dt>
                <dd><a href="#">保险需求测试</a></dd>
                <dd><a href="#">专题及活动</a></dd>
                <dd><a href="#">挑选保险产品</a></dd>
                <dd><a href="#">常见问题 </a></dd>
            </dl>
            <dl>
        </div>
    </div>
</div>
<!--网站地图END-->
<!--网站页脚-->
<div class="copyright">
    <div class="copyright-bg">
        <div class="hotline">为生活充电在线 <span>招商热线：****-********</span> 客服热线：400-******</div>
        <div class="hotline co-ph">
            <p>版权所有Copyright ©***************</p>
            <p>*ICP备***************号 不良信息举报</p>
            <p>总机电话：****-*********/194/195/196 客服电话：4000****** 传 真：********
        </div>
    </div>
</div>
<script type="text/javascript">

    $('#check').click(function () {
        var ids;
        ids = $('.orderid').val();
        let total = $('.totalNum').val();

        $.ajax({
            url: "/order/doPay",
            type:"post",
            data:{
                ids : ids,
                total: total
            },
            success: function(data){
                window.location.href = "";
            }
        })
    })

    function total() {
        var total = 0;
        for (var i = 0; i < $('.msgbox').length; i++) {
            total += $('.msgbox').eq(i).children('.total').val();
        }

        $('.totalNum').val(total);
    }

    $('.add').click(function () {
        let countNum = $('#countNum').val();
        let orderid = $('#orderid').val();
        $.ajax({
            url: '/order/addCount',
            type: 'post',
            data: {
                countNum: countNum,
                orderid: orderid
            },
            success: function (data) {
                $(this).sibling('.countNum').val(data);
                var total = $(this).sibling('.discount').val() * $(this).sibling('.countNum').val();
                $(this).sibling('.total').val(total);
                total();
            }
        })
    })
    $('.detract').click(function () {
        let countNum = $('#countNum').val();
        let orderid = $('#orderid').val();
        $.ajax({
            url: '/order/detractCount',
            type: 'post',
            data: {
                countNum: countNum,
                orderid: orderid
            },
            success: function (data) {
                $(this).sibling('.countNum').val(data);
                var total = $(this).sibling('.discount').val() * $(this).sibling('.countNum').val();
                $(this).sibling('.total').val(total);
                total();
            }
        })
    })
</script>
</body>
</html>
