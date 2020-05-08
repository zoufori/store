<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <jsp:include page="_meta.jsp"/>

    <title>购物车</title>
</head>

<body>
<head>
    <jsp:include page="_header.jsp" />
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
<jsp:include page="_footer.jsp" />
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
