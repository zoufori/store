<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/user_style.css" rel="stylesheet" type="text/css" />
<link href="skins/all.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/safe/aywmq_qt.js"></script>
<script type="text/javascript" src="js/safe/da_opt.js"></script>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" href="css/safe/css.css" />
<link rel="stylesheet" href="css/safe/common.min.css" />
<link rel="stylesheet" href="css/safe/ms-style.min.css" />
<link rel="stylesheet" href="css/safe/personal_member.min.css" />
<link rel="stylesheet" href="css/safe/Snaddress.min.css" />
<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/common_js.js" type="text/javascript"></script>
<script src="js/footer.js" type="text/javascript"></script>
<script src="layer/layer.js" type="text/javascript"></script>
<script src="js/iCheck.js" type="text/javascript"></script>
<script src="js/custom.js" type="text/javascript"></script>

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
           <input name="searchName" id="searchName" class="search_box" onkeydown="keyDownSearch()" type="text">
           <input name="" type="submit" value="搜 索"  class="Search_btn"/>
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
</head>
<!--用户中心样式-->
<div class="cont">

  <div style="width: 1210px;">
    <div style="margin-top: 20px; margin-left: 150px;  width: 1200px;">
      <font style="font-size: 16px;color: #F4401C;font-weight: bold; margin-left:20px;border-bottom: 1px #F88600 solid;   padding-bottom: 14px;">全部商品 6</font>
      <font style="font-size: 16px;color: #060606; font-weight:bold;margin-left:20px;">|</font>
      <font style="font-size: 16px;color: #060606; font-weight:bold;margin-left:20px;">降价商品 0</font>
      <font style="font-size: 16px;color: #060606; font-weight:bold;margin-left:20px;">|</font>
      <font style="font-size: 16px;color: #060606; font-weight:bold;margin-left:20px;">库存紧张  0</font>
      <font style="font-size: 12px;color: #949494; font-weight:bold;margin-left:670px;">已选商品(不含运费)</font>
      <input type="button" value="结算" style="float: right; color:#686868;background-color:#DEDEDE;height:20px;width:46px;border-style:solid;"></input>
                  <hr style=" border-style:solid;width: 1200px;border-color:#DEDEDE;margin-top: 12px;"/> 
                  <input name="商品" type="checkbox" value="" style="margin-top:19px;" />
                  <font style="font-size: 12px;color: #212121;margin-left: 20px;font-weight: bold;margin-top: -15px;display: flex;">全选</font> 
                  <font style="font-size: 12px;color: #212121;margin-left: 100px;font-weight: bold;">商品信息</font> 
                  <font style="font-size: 12px;color: #212121;margin-left: 400px;font-weight: bold;">单价(元)</font> 
                  <font style="font-size: 12px;color: #212121;margin-left: 100px;font-weight: bold;">数量</font>
                  <font style="font-size: 12px;color: #212121;margin-left: 100px;font-weight: bold;">金额(元)</font>
                  <font style="font-size: 12px;color: #212121;margin-left: 100px;font-weight: bold;">操作</font>			
                  <br />
                  <input name="店铺" type="checkbox" value="" style="margin-top: 20px;" />
                  <font style="font-size: 12px;color: #212121;margin-left: 20px;font-weight: bold;display: flex;margin-top: -15px;">店铺:巴鼎红火锅店专用</font> 

       <div style="border:1px solid #ccc;height: 150px;margin-top: 20px;">
          <input name="店铺" type="checkbox" value="" style="margin-top: 20px;margin-left: 20px;" />
      <div >
          <img src="./products/p_5.jpg" style="margin-left:40px; width: 82px; height: 82px; float: left;" />
        </div>	
        <div>
          <span style="margin-left:15px;float: left;"><font style="font-size: 12px;color: #1f1f1f; ">买二送一,巴鼎红重庆麻辣香锅火锅底料干锅</font>
            <font style="font-size: 12px;color: #949494;margin-left: 230px;TEXT-DECORATION: line-through; ">22.8</font>
            <br/> <font style="font-size: 12px;color: #1f1f1f; ">底料百搭调味料250克</font>
            <font style="font-size: 12px;color: #1f1f1f;margin-left: 340px;font-weight: bold;  ">15.90</font>
            <br/>
          <button style="color:F88600;background-color: #FCE6D1;border: 1px #F88600 solid;width:80px ;margin-left: 430px;">卖家促销</button>
          </span>
        <span style="margin-left:35px;float: left; ">
          <form>
          <input type="button" value="-" style=" color:#333333;height:30px;width:20px;border-style:solid;margin-left:30px;"></input>
          <input type="text" value="1" style=" color:#333333;height:30px;width:30px;text-align:center;"></input>
          <input type="button" value="+" style=" color:#333333;height:30px;width:20px;border-style:solid;"></input>
        </form>
        </span>
        <span style="margin-left:10px;float: left;">
                    <font style="font-size: 14px;color: #FD3C0D;margin-left: 85px;font-weight: bold;  ">15.90</font>
        </span >
        <span style="margin-left:85px; float: left;"><font style="font-size: 14px;color: #1E1E1E; ">移入收藏夹</font>
                    <br/> <font style="font-size: 14px;color: #1E1E1E; ">删除</font>
        </span>
        </div>
       
      </div>
      <br />
                  <input name="店铺" type="checkbox" value="" style="margin-top: 20px;" /><font style="font-size: 12px;color: #212121;margin-left: 10px;font-weight: bold;">店铺:巴鼎红火锅店专用</font> 

       <div style="border:1px solid #ccc;height: 150px; margin-top: 20px;">
          <input name="店铺" type="checkbox" value="" style="margin-top: 20px;margin-left: 20px;" />
      <div >
          <img src="./products/p_4.jpg" style="margin-left:40px; width: 82px; height: 82px; float: left;" />
        </div>	
        <div>
          <span style="margin-left:15px;float: left;"><font style="font-size: 12px;color: #1f1f1f; ">买二送一,巴鼎红重庆麻辣香锅火锅底料干锅</font>
            <font style="font-size: 12px;color: #949494;margin-left: 230px;TEXT-DECORATION: line-through; ">22.8</font>
            <br/> <font style="font-size: 12px;color: #1f1f1f; ">底料百搭调味料250克</font>
            <font style="font-size: 12px;color: #1f1f1f;margin-left: 340px;font-weight: bold;  ">15.90</font>
            <br />
          </span>
        <span style="margin-left:65px;float: left; ">
          <form>
          <input type="button" value="-" style=" color:#333333;height:30px;width:20px;border-style:solid;margin-left:30px;"></input>
          <input type="text" value="1" style=" color:#333333;height:30px;width:30px;text-align:center;"></input>
          <input type="button" value="+" style=" color:#333333;height:30px;width:20px;border-style:solid;"></input>
        </form>
        </span>
        <span style="margin-left:10px;float: left;">
                    <font style="font-size: 14px;color: #FD3C0D;margin-left: 80px;font-weight: bold;  ">15.90</font>
        </span >
        <span style="margin-left:85px; float: left;"><font style="font-size: 14px;color: #1E1E1E; ">移入收藏夹</font>
                    <br/> <font style="font-size: 14px;color: #1E1E1E; ">删除</font>
        </span>
        </div>
       
      </div>
      
       <div style="border:1px solid #ccc;height: 40px;line-height:40px;border-top:0px;">					    
       <font style="font-size: 12px;margin-left:780px;color: #949494; ">再买3974.00元,"满4000.00元减2200.00元",该店铺商品合计:￥26.00</font>
       <font style="margin-left: 3px;">|</font><font style="margin-left: 3px;color:#F88600 ;">去凑单</font>
      </div>
      
      <br />
                  <input name="店铺" type="checkbox" value="" style="margin-top: 20px;" /><font style="font-size: 12px;color: #212121;margin-left: 10px;font-weight: bold;">店铺:巴鼎红火锅店专用</font> 

       <div style="border:1px solid #ccc;height: 150px;margin-top: 20px;">
          <input name="店铺" type="checkbox" value="" style="margin-top: 20px;margin-left: 20px;" />
      <div >
          <img src="./products/p_5.jpg" style="margin-left:40px; width: 82px; height: 82px; float: left;" />
        </div>	
        <div>
          <span style="margin-left:15px;float: left;"><font style="font-size: 12px;color: #1f1f1f; ">买二送一,巴鼎红重庆麻辣香锅火锅底料干锅</font>
            <font style="font-size: 12px;color: #949494;margin-left: 230px;TEXT-DECORATION: line-through; ">22.8</font>
            <br/> <font style="font-size: 12px;color: #1f1f1f; ">底料百搭调味料250克</font>
            <font style="font-size: 12px;color: #1f1f1f;margin-left: 340px;font-weight: bold;  ">15.90</font>
            <br />
            </span>
        <span style="margin-left:65px;float: left; ">
          <form>
          <input type="button" value="-" style=" color:#333333;height:30px;width:20px;border-style:solid;margin-left:30px;"></input>
          <input type="text" value="1" style=" color:#333333;height:30px;width:30px;text-align:center;"></input>
          <input type="button" value="+" style=" color:#333333;height:30px;width:20px;border-style:solid;"></input>
          </form> 
        </span>
        <span style="margin-left:10px;float: left;">
                    <font style="font-size: 14px;color: #FD3C0D;margin-left: 85px;font-weight: bold;  ">15.90</font>
        </span >
        <span style="margin-left:85px; float: left;"><font style="font-size: 14px;color: #1E1E1E; ">移入收藏夹</font>
                    <br/> <font style="font-size: 14px;color: #1E1E1E; ">删除</font>
        </span>
        </div>
       
      </div>
       
    <div style="margin-top: 10px;background:#E5E5E5;height:50px;width:1200px;">
        <table class="uiTable" >
                <tr >
                      <th  style="line-height:50px;" >
                        <input name="店铺" type="checkbox" value="" style="height: 14px;width: 14px;float: left;margin-top: 19px;"   />
                      <font style="font-size: 12px;color: #333333;margin-left: 20px;font-weight: bold;display: flex;">全选</font> 
                  <th  style="line-height:50px;"><font style="font-size: 12px;margin-left:50px;color: #333333; ">删除</font></th>
                  <th  style="line-height:50px;"><font style="font-size: 12px;margin-left:50px;color: #333333;  ">消除失效宝贝</font></th>
                  <th  style="line-height:50px;" ><font style="font-size: 12px;margin-left:50px; color: #333333;">移入收藏夹</font></th>
                  <th  style="line-height:50px; " ><font style="font-size: 12px;margin-left:50px;color: #333333; ">分享</font></th>
                  <th class="lastTd" colspan="2" style="line-height:50px; "><font style="font-size: 12px;margin-left:300px; ">已选商品</font><font style="font-size: 12px;color:#FD3C0D;">0</font><font style="font-size: 12px;color:#333333;">件</font></th>
                  <th  style="line-height:50px; " ><span style="font-size: 12px;margin-left:80px;color: #949494; ">合计(不含运费):</span>
                    </th>
                    <th  style="line-height:50px; " >
                    <span style="font-size: 18px;color:#FD3C0D;">￥198</span></th>
                                          <th  style="line-height:50px; " ><font style="font-size: 20px;margin-left:43px;color: #949494; "><a>结算</a></font></th>
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
     <dd><a href="#">订购方式</a> </dd>
     <dd><a href="#">隐私声明 </a></dd>
     <dd><a href="#">推荐分享说明 </a></dd>
	</dl>
	<dl>
	 <dt>配送与支付</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
     <dd><a href="#">常见问题 </a></dd>
	</dl>
	<dl>
	 <dt>售后保障</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
     <dd><a href="#">常见问题 </a></dd>
	</dl>
	<dl>
	 <dt>支付方式</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
     <dd><a href="#">常见问题 </a></dd>
	</dl>	
    <dl>
	 <dt>帮助中心</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
     <dd><a href="#">常见问题 </a></dd>
	</dl>
     <dl>
	 <dt>帮助中心</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
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
</body>
</html>
