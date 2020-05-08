<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="_meta.jsp"/>
<title>用户中心-收货地址</title>
</head>
<body>
<head>
<jsp:include page="_header.jsp"/>
</head>
<!--用户中心样式-->
<div class="user_style clearfix">
 <div class="user_center clearfix">
   <jsp:include page="_userInfo.jsp" />
 <!--右侧样式属性-->
 <div class="right_style">
 <!--地址管理-->
  <div class="user_address_style">
    <div class="title_style"><em></em>地址管理</div> 
   <div class="add_address">
    <span class="name">添加送货地址</span>
    <form>
    <table cellpadding="0" cellspacing="0" width="100%">
     <tr><td class="label_name">收&nbsp;货&nbsp;&nbsp;人：</td><td><input name="" type="text"  class="add_text" style=" width:100px"/><i>*</i></td></tr>
     <tr><td class="label_name">所在地区：</td><td><select size="1">
              <option value="1">请选择国家</option>
            </select>
             <select size="1">
              <option value="1">省</option>
            </select>
            <select size="1">
              <option value="2">市</option>
            </select>
            <select size="1">
              <option value="3">县/区</option>
            </select><i>*</i></td></tr>
     <tr><td class="label_name">街道地址：</td><td><textarea name="" cols="" rows="" style=" width:500px; height:100px; margin:5px 0px"></textarea><i>*</i></td></tr>
     <tr><td class="label_name">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</td><td><input name="" type="text" class="add_text" style=" width:200px"/>&nbsp;&nbsp;(选填)</td></tr>
     <tr class="moren_dz" style="color: #999"><td class="label_name"></td>
    <td><label><input name="" type="checkbox" value="" /><a>设置为默认地址</a></label></td>
    </tr>
     <tr><td colspan="2" class="center"><input name="" type="submit" value="保存"  class="add_dzbtn"/><input name="" type="reset" value="清空"  class="reset_btn"/></td></tr>
    </table>
    </form>
   </div>
   <!--用户地址-->
   <div class="address_content">
    <table cellpadding="0" cellspacing="0" class="user_address" width="100%">
    <thead>
     <tr class="label"><td width="80px;">收货人</td><td width="180px;">所在地</td><td width="220px;">详细地址</td><td width="120px;">电话手机</td><td width="180px;">发票抬头</td><td width="80px;">操作</td></tr>
     </thead>
     <tbody>
      <tr><td>小明</td><td>广东省东莞市XXX镇</td><td>XXXX号高楼大厦B栋2020室</td><td>12343323221</td><td>个人</td><td><a href="#">修改</a> | <a href="#">删除</a></td></tr>
     </tbody>
    </table>
   </div>  
  </div>
 </div>
 </div>
 </div>
  <jsp:include page="_footer.jsp"/>
</body>
</html>
