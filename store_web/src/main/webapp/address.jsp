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
        <jsp:include page="_userInfo.jsp"/>
        <!--右侧样式属性-->
        <div class="right_style">
            <!--地址管理-->
            <div class="user_address_style">
                <div class="title_style"><em></em>地址管理</div>
                <div class="add_address">
                    <span class="name">修改地址</span>
                    <form action="${pageContext.request.contextPath}/personal/doAlterAddress">
                        <table cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td class="label_name">街道地址：</td>
                                <td><input type="text" name="address"
                                              style=" width:500px; height:20px; margin:5px 0px" value="${user.address}"/><i>*</i>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="center"><input name="" type="submit" value="保存"
                                                                      class="add_dzbtn"/><input name="" type="reset"
                                                                                                value="清空"
                                                                                                class="reset_btn"/></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="_footer.jsp"/>
</body>
</html>
