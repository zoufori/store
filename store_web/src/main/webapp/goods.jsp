<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/common_js.js" type="text/javascript"></script>
<script src="js/footer.js" type="text/javascript"></script>
<script src="js/accordion.js" type="text/javascript"></script>
<script src="js/lrtk.js" type="text/javascript"></script>
<title>产品列表页</title>
</head>
<script type="text/javascript" charset="UTF-8">

 //点击效果start
 function infonav_more_down(index)
 {
  var inHeight = ($("div[class='p_f_name infonav_hidden']").eq(index).find('p').length)*30;//先设置了P的高度，然后计算所有P的高度
  if(inHeight > 60){
   $("div[class='p_f_name infonav_hidden']").eq(index).animate({height:inHeight});
   $(".infonav_more").eq(index).replaceWith('<p class="infonav_more"><a class="more"  onclick="infonav_more_up('+index+');return false;" href="javascript:">收起<em class="pulldown"></em></a></p>');
  }else{
   return false;
  }
 }
 function infonav_more_up(index)
 {
  var infonav_height = 85;
  $("div[class='p_f_name infonav_hidden']").eq(index).animate({height:infonav_height});
  $(".infonav_more").eq(index).replaceWith('<p class="infonav_more"> <a class="more" onclick="infonav_more_down('+index+');return false;" href="javascript:">更多<em class="pullup"></em></a></p>');
 }
   
 function onclick(event) {
  info_more_down();
 return false;
 }
 //点击效果end  
//-->
//实现手风琴下拉效果
$(function(){
   $(".nav").accordion({
        //accordion: true,
        speed: 500,
	    closedSign: '+',
		openedSign: '-'
	});
}); 

$(function() { 
	$("#scrollsidebar").fix({
		float : 'left',
		//minStatue : true,
		skin : 'green',	
		durationTime : 600
	});
});
</script>
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
        <div class="clear hotword">热门搜索词：华为&nbsp;&nbsp;&nbsp;苹果&nbsp;&nbsp;&nbsp;oopo&nbsp;&nbsp;&nbsp;vivo</div>
</div>
</div>
<!--菜单栏-->
<div class="Navigation" id="Navigation">
	<ul class="Navigation_name">
	   <li><a href="Home.html" title="">首页</a></li>
	   <li><a href="#" title="">产品</a></li>
	   <li><a href="#" title="">购物车</a></li>
	   <li><a href="#" title="">你身边的超市</a></li>
	   <li><a href="#" title="">预售专区</a><em class="hot_icon"></em></li>
	   <li><a href="#" title="">商城</a></li>			
	   <li><a href="#">好评商户</a></li>
	   <li><a href="#">热销活动</a></li>
	   <li><a href="#">联系我们</a></li>
	</ul>			 
   </div>
	<script>$("#Navigation").slide({titCell:".Navigation_name li",trigger:"click"});</script>
</div>
</head>
<!--产品列表样式-->
<div class="Inside_pages">
<!--位置-->
<div id="Filter_style">
  <div class="Location_link">
  <em></em><a href="#">进口食品、进口牛</a>  &lt;   <a href="#">进口饼干/糕点</a>  
 </div>
<!--条件筛选样式-->
 <div class="Filter" id="Filter">
  <div class="Filter_list clearfix">
   <div class="Filter_title"><span>品牌：</span></div>
   <div class="Filter_Entire"><a href="#" class="Complete">全部</a></div>
   <div class="p_f_name infonav_hidden" style="height: 85px;">
    <p><a href="#" title="莱家/Loacker">莱家/Loacker </a>  
	<a href="#" title="">丽芝士/Richeese</a>  
	<a href="#" title="白色恋人/SHIROI KOIBITO ">白色恋人/SHIROI KOIBITO </a> 
	<a href="#">爱时乐/Astick </a> 
	<a href="#">利葡/LiPO </a> 
	<a href="#">友谊牌/Tipo </a> 
	<a href="#"> 三立/SANRITSU  </a>  
	<a href="#"> 皇冠/Danisa </a>  </p>
	 <p><a href="#">丹麦蓝罐/Kjeldsens</a>
	<a href="#">茱莉/Julie's </a>  
	<a href="#">向日葵/Sunflower </a>  
	<a href="#">福多/fudo </a> 
	<a href="#">非凡农庄/PEPPER...  </a>
	<a href="#">凯尔森/Kelsen </a> 
	<a href="#"> 蜜兰诺/Milano </a> 
	<a href="#">壹格/EgE  </a>  </p>
	 <p><a href="#">沃尔克斯/Walkers </a> 
	<a href="#">澳门永辉/MACAU...</a>  
    <a href="#" title="莱家/Loacker">莱家/Loacker </a>  
	<a href="#" title="">丽芝士/Richeese</a>  
	<a href="#" title="白色恋人/SHIROI KOIBITO ">白色恋人/SHIROI KOIBITO </a> 
	<a href="#">爱时乐/Astick </a> 
	<a href="#">利葡/LiPO </a> 
	<a href="#">友谊牌/Tipo </a>  </p>
	 <p><a href="#"> 三立/SANRITSU  </a>  
	<a href="#"> 皇冠/Danisa </a>  
	<a href="#">丹麦蓝罐/Kjeldsens</a>
	<a href="#">茱莉/Julie's </a>  
	<a href="#">向日葵/Sunflower </a>  
	<a href="#">福多/fudo </a> 
	<a href="#">非凡农庄/PEPPER...  </a>
	<a href="#">凯尔森/Kelsen </a>  </p>
	 <p><a href="#"> 蜜兰诺/Milano </a> 
	<a href="#">壹格/EgE  </a>  
	<a href="#">沃尔克斯/Walkers </a> 
	<a href="#">澳门永辉/MACAU...</a>  
       <a href="#" title="莱家/Loacker">莱家/Loacker </a>  
	<a href="#" title="">丽芝士/Richeese</a>  
	<a href="#" title="白色恋人/SHIROI KOIBITO ">白色恋人/SHIROI KOIBITO </a> 
	<a href="#">爱时乐/Astick </a>  </p>
	
   </div>
   <p class="infonav_more"> <a class="more" onclick="infonav_more_down(0);return false;" href="javascript:">更多<em class="pullup"></em></a></p>
  </div>
  <div class="Filter_list clearfix">
  <div class="Filter_title"><span>产地：</span></div>
  <div class="Filter_Entire"><a href="#" class="Complete">全部</a></div>
  <div class="p_f_name">
   <a href="#">中国大陆</a>     
   <a href="#">中国台湾</a>     
   <a href="#">中国香港</a>     
   <a href="#">中国澳门</a>     
   <a href="#">日本</a>     
   <a href="#">韩国</a>     
   <a href="#">越南</a>    
   <a href="#">泰国</a>
  </div>
  </div>
  <div class="Filter_list clearfix">
  <div class="Filter_title"><span>包装方式：</span></div>
  <div class="Filter_Entire"><a href="#" class="Complete">全部</a></div>
  <div class="p_f_name">
  <a href="#">袋装</a><a href="#">盒装</a><a href="#">罐装</a><a href="#">礼盒装</a><a href="#">散装(称重)</a>
  </div>
  </div>
  <div class="Filter_list clearfix">
  <div class="Filter_title"><span>位置分类：</span></div>
  <div class="Filter_Entire"><a href="#" class="Complete">不限</a></div>
  <div class="p_f_name">
    <div class="clearfix"><a href="#">鼓楼区</a><a href="#">高淳区</a><a href="#">建邺区</a><a href="#">江宁区</a><a href="#">溧水区</a>
    <a href="#">鼓楼区</a><a href="#">高淳区</a><a href="#">建邺区</a><a href="#">江宁区</a><a href="#">溧水区</a>
    <a href="#">鼓楼区</a><a href="#">高淳区</a><a href="#">建邺区</a><a href="#">江宁区</a><a href="#">溧水区</a>
    <a href="#">鼓楼区</a><a href="#">高淳区</a><a href="#">建邺区</a><a href="#">江宁区</a><a href="#">溧水区</a></div>
    <div class="area_style clearfix">
      <div class="Filter_Entire"><a href="#" class="Complete">不限</a></div>
      <div class="area_position">
      <a href="#" class="Filter_btn">新世纪花园</a><a href="#" class="Filter_btn">七里花园</a><a href="#" class="Filter_btn">七里花园</a><a href="#" class="Filter_btn">七里花园</a><a href="#" class="Filter_btn">七里花园</a>
      </div>
      <!--区域选择-->
      <div class="Select_position">
      <span id="index_search_bar_cancel" class="search-icon-cancel"><i class="sprite-icon"></i></span>
         <a href="#">鼓楼区</a><a href="#">高淳区</a><a href="#">建邺区</a><a href="#">江宁区</a><a href="#">溧水区</a>
    <a href="#">鼓楼区</a><a href="#">高淳区</a><a href="#">建邺区</a><a href="#">江宁区</a><a href="#">溧水区</a>
    <a href="#">鼓楼区</a><a href="#">高淳区</a><a href="#">建邺区</a><a href="#">江宁区</a><a href="#">溧水区</a>
      </div>
    </div>
  </div>
  </div>
  </div>
 </div>
 <!--产品列表样式-->
 <div  class="scrollsidebar side_green clearfix" id="scrollsidebar"> 
    <div class="show_btn" id="rightArrow"><span></span></div>

 <div class="page_right_style">
 <div class="Sorted">
  <div class="Sorted_style">
   <a href="#" class="on">综合<i class="iconfont icon-fold"></i></a>
   <a href="#">信用<i class="iconfont icon-fold"></i></a>
   <a href="#">价格<i class="iconfont icon-fold"></i></a>
   <a href="#">销量<i class="iconfont icon-fold"></i></a>
   </div>
   <!--产品搜索-->
   <div class="products_search">
    <input name="" type="text" class="search_text" value="请输入你要搜索的产品" onfocus="this.value=''" onblur="if(!value){value=defaultValue;}"><input name="" type="submit" value="" class="search_btn">
   </div>
   <!--页数-->
   <div class="s_Paging">
   <span> 1/12</span>
   <a href="#" class="on">&lt;</a>
   <a href="#">&gt;</a>
   </div>
   </div>
   <div class="p_list  clearfix">
   <ul>
    <li class="gl-item">
    <em class="icon_special tejia"></em>
	<div class="Borders">
	 <div class="img"><a href="goodsDetail.jsp" target="_blank"><img src="products/P_1.jpg" style="width:220px;height:220px"></a></div>
	 <div class="Price"><b>¥89</b><span>[¥49.01/500g]</span></div>
	 <div class="name"><a href="goodsDetail.jsp" target="_blank">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a></div>
	 <div class="Shop_name"><a href="#">三只松鼠旗舰店</a></div>
	 <div class="p-operate">
	  <a href="#" class="p-o-btn Collect"><em></em>收藏</a>
	  <a href="#" class="p-o-btn shop_cart"><em></em>联系我们</a>
	 </div>
	 </div>
	</li>
	<li class="gl-item">
    <em class="icon_special tejia"></em>
	<div class="Borders">
	 <div class="img"><a href="goodsDetail.jsp" target="_blank"><img src="products/P_2.jpg" style="width:220px;height:220px"></a></div>
	 <div class="Price"><b>¥89</b><span>[¥49.01/500g]</span></div>
	 <div class="name"><a href="goodsDetail.jsp" target="_blank">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a></div>
	 <div class="Shop_name"><a href="#">三只松鼠旗舰店</a></div>
	 <div class="p-operate">
	  <a href="#" class="p-o-btn Collect"><em></em>收藏</a>
	  <a href="#" class="p-o-btn shop_cart"><em></em>联系我们</a>
	 </div>
	 </div>
	</li>
	<li class="gl-item">
    <em class="icon_special tejia"></em>
	<div class="Borders">
	 <div class="img"><a href="goodsDetail.jsp" target="_blank"><img src="products/P_3.jpg" style="width:220px;height:220px"></a></div>
	 <div class="Price"><b>¥89</b><span>[¥49.01/500g]</span></div>
	 <div class="name"><a href="goodsDetail.jsp" target="_blank">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a></div>
	<div class="Shop_name"><a href="#">三只松鼠旗舰店</a></div>
	 <div class="p-operate">
	  <a href="#" class="p-o-btn Collect"><em></em>收藏</a>
	  <a href="#" class="p-o-btn shop_cart"><em></em>联系我们</a>
	 </div>
	 </div>
	</li>
	<li class="gl-item">
	<div class="Borders">
	 <div class="img"><a href="goodsDetail.jsp" target="_blank"><img src="products/P_4.jpg" style="width:220px;height:220px"></a></div>
	 <div class="Price"><b>¥89</b><span>[¥49.01/500g]</span></div>
	 <div class="name"><a href="goodsDetail.jsp" target="_blank">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a></div>
	 <div class="Shop_name"><a href="#">三只松鼠旗舰店</a></div>
	 <div class="p-operate">
	  <a href="#" class="p-o-btn Collect"><em></em>收藏</a>
	  <a href="#" class="p-o-btn shop_cart"><em></em>联系我们</a>
	 </div>
	 </div>
	</li>
	<li class="gl-item">
    <em class="icon_special xinping"></em>
	<div class="Borders">
	 <div class="img"><a href="goodsDetail.jsp" target="_blank"><img src="products/P_1.jpg" style="width:220px;height:220px"></a></div>
	 <div class="Price"><b>¥89</b><span>[¥49.01/500g]</span></div>
	 <div class="name"><a href="goodsDetail.jsp" target="_blank">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a></div>
	<div class="Shop_name"><a href="#">三只松鼠旗舰店</a></div>
	 <div class="p-operate">
	  <a href="#" class="p-o-btn Collect"><em></em>收藏</a>
	  <a href="#" class="p-o-btn shop_cart"><em></em>联系我们</a>
	 </div>
	 </div>
	</li>
	<li class="gl-item">
	<div class="Borders">
	 <div class="img"><a href="#"><img src="products/P_2.jpg" style="width:220px;height:220px"></a></div>
	 <div class="Price"><b>¥89</b><span>[¥49.01/500g]</span></div>
	 <div class="name"><a href="#">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a></div>
	<div class="Shop_name"><a href="#">三只松鼠旗舰店</a></div>
	 <div class="p-operate">
	  <a href="#" class="p-o-btn Collect"><em></em>收藏</a>
	  <a href="#" class="p-o-btn shop_cart"><em></em>联系我们</a>
	 </div>
	 </div>
	</li>
	<li class="gl-item">
	<div class="Borders">
	 <div class="img"><a href="#"><img src="products/P_3.jpg" style="width:220px;height:220px"></a></div>
	 <div class="Price"><b>¥89</b><span>[¥49.01/500g]</span></div>
	 <div class="name"><a href="#">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a></div>
	 <div class="Shop_name"><a href="#">三只松鼠旗舰店</a></div>
	 <div class="p-operate">
	  <a href="#" class="p-o-btn Collect"><em></em>收藏</a>
	  <a href="#" class="p-o-btn shop_cart"><em></em>联系我们</a>
	 </div>
	 </div>
	</li>
	<li class="gl-item">
	<div class="Borders">
	 <div class="img"><a href="#"><img src="products/P_4.jpg" style="width:220px;height:220px"></a></div>
	 <div class="Price"><b>¥89</b><span>[¥49.01/500g]</span></div>
	 <div class="name"><a href="#">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a></div>
	 <div class="Shop_name"><a href="#">三只松鼠旗舰店</a></div>
	 <div class="p-operate">
	  <a href="#" class="p-o-btn Collect"><em></em>收藏</a>
	  <a href="#" class="p-o-btn shop_cart"><em></em>联系我们</a>
	 </div>
	 </div>
	</li>
	<li class="gl-item">
	<div class="Borders">
	 <div class="img"><a href="#"><img src="products/P_1.jpg" style="width:220px;height:220px"></a></div>
	 <div class="Price"><b>¥89</b><span>[¥49.01/500g]</span></div>
	 <div class="name"><a href="#">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a></div>
	<div class="Shop_name"><a href="#">三只松鼠旗舰店</a></div>
	 <div class="p-operate">
	  <a href="#" class="p-o-btn Collect"><em></em>收藏</a>
	  <a href="#" class="p-o-btn shop_cart"><em></em>联系我们</a>
	 </div>
	 </div>
	</li>
	<li class="gl-item">
	<div class="Borders">
	 <div class="img"><a href="#"><img src="products/P_2.jpg" style="width:220px;height:220px"></a></div>
	 <div class="Price"><b>¥89</b><span>[¥49.01/500g]</span></div>
	 <div class="name"><a href="#">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a></div>
	<div class="Shop_name"><a href="#">三只松鼠旗舰店</a></div>
	 <div class="p-operate">
	  <a href="#" class="p-o-btn Collect"><em></em>收藏</a>
	  <a href="#" class="p-o-btn shop_cart"><em></em>联系我们</a>
	 </div>
	 </div>
	</li>
	<li class="gl-item">
	<div class="Borders">
	 <div class="img"><a href="#"><img src="products/P_3.jpg" style="width:220px;height:220px"></a></div>
	 <div class="Price"><b>¥89</b><span>[¥49.01/500g]</span></div>
	 <div class="name"><a href="#">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a></div>
	 <div class="Shop_name"><a href="#">三只松鼠旗舰店</a></div>
	 <div class="p-operate">
	  <a href="#" class="p-o-btn Collect"><em></em>收藏</a>
	  <a href="#" class="p-o-btn shop_cart"><em></em>联系我们</a>
	 </div>
	 </div>
	</li>
	<li class="gl-item">
	<div class="Borders">
	 <div class="img"><a href="#"><img src="products/P_4.jpg" style="width:220px;height:220px"></a></div>
	 <div class="Price"><b>¥89</b><span>[¥49.01/500g]</span></div>
	 <div class="name"><a href="#">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a></div>
	 <div class="Shop_name"><a href="#">三只松鼠旗舰店</a></div>
	 <div class="p-operate">
	  <a href="#" class="p-o-btn Collect"><em></em>收藏</a>
	  <a href="#" class="p-o-btn shop_cart"><em></em>联系我们</a>
	 </div>
	 </div>
	</li>
	<li class="gl-item">
	<div class="Borders">
	 <div class="img"><a href="#"><img src="products/P_1.jpg" style="width:220px;height:220px"></a></div>
	 <div class="Price"><b>¥89</b><span>[¥49.01/500g]</span></div>
	 <div class="name"><a href="#">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a></div>
	 <div class="Shop_name"><a href="#">三只松鼠旗舰店</a></div>
	 <div class="p-operate">
	  <a href="#" class="p-o-btn Collect"><em></em>收藏</a>
	  <a href="#" class="p-o-btn shop_cart"><em></em>联系我们</a>
	 </div>
	 </div>
	</li>
	<li class="gl-item">
	<div class="Borders">
	 <div class="img"><a href="#"><img src="products/P_2.jpg" style="width:220px;height:220px"></a></div>
	 <div class="Price"><b>¥89</b><span>[¥49.01/500g]</span></div>
	 <div class="name"><a href="#">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a></div>
	<div class="Shop_name"><a href="#">三只松鼠旗舰店</a></div>
	 <div class="p-operate">
	  <a href="#" class="p-o-btn Collect"><em></em>收藏</a>
	  <a href="#" class="p-o-btn shop_cart"><em></em>联系我们</a>
	 </div>
	 </div>
	</li>
	<li class="gl-item">
	<div class="Borders">
	 <div class="img"><a href="#"><img src="products/P_3.jpg" style="width:220px;height:220px"></a></div>
	 <div class="Price"><b>¥89</b><span>[¥49.01/500g]</span></div>
	 <div class="name"><a href="#">乐事 无限薯片三连装（原味+番茄+烤肉）104g*3/组</a></div>
	 <div class="Shop_name"><a href="#">三只松鼠旗舰店</a></div>
	 <div class="p-operate">
	  <a href="#" class="p-o-btn Collect"><em></em>收藏</a>
	  <a href="#" class="p-o-btn shop_cart"><em></em>联系我们</a>
	 </div>
	 </div>
	</li>
   </ul>
   <div class="Paging">
    <div class="Pagination">
    <a href="#">首页</a>
     <a href="#" class="pn-prev disabled">&lt;上一页</a>
	 <a href="#" class="on">1</a>
	 <a href="#">2</a>
	 <a href="#">3</a>
	 <a href="#">4</a>
	 <a href="#">下一页&gt;</a>
	 <a href="#">尾页</a>	
     </div>
    </div>
   </div>
</div>
</div>
</div>
<!--网站地图-->
<div class="fri-link-bg clearfix">
    <div class="fri-link">
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
	 <dt>帮助中心</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
     <dd><a href="#">常见问题 </a></dd>
	</dl>	   
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
