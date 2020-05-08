<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <jsp:include page="_meta.jsp" />
    <title>用户信息</title>
</head>

<body>
<head>
    <jsp:include page="_header.jsp"/>
</head>
<!--用户中心样式-->
<div class="user_style clearfix">
    <div class="user_center clearfix">
        <!--左侧样式-->
        <jsp:include page="_userInfo.jsp" />
        <!--右侧样式-->
        <div class="right_style">
            <!--消费记录样式-->
            <div class="user_address_style">
                <div class="title_style"><em></em>用户信息</div>
                <!--用户信息样式-->
                <!--个人信息-->
                <div class="Personal_info" id="Personal">
                    <ul class="xinxi">
                        <form action="${pageContext.request.contextPath}/personal/doAlterInfo" method="post">
                            <li><label>用户名：</label> <span><input name="username" type="text" value="${user.username}"
                                                                 class="text" disabled="disabled"/></span></li>
                            <li><label>用户性别：</label> <span class="sex">${user.genderStr}</span>
                                <div class="add_sex">
                                    <c:if test="${user.gender == 0}">
                                        <input type="radio" name="gender" value="0" checked="checked">
                                        保密&nbsp;&nbsp;
                                        <input type="radio" id="" name="gender" value="1">
                                        男&nbsp;&nbsp;
                                        <input type="radio" id="" name="gender" value="2">
                                        女&nbsp;&nbsp;
                                    </c:if>
                                    <c:if test="${user.gender == 1}">
                                        <input type="radio" name="gender" value="0">
                                        保密&nbsp;&nbsp;
                                        <input type="radio" id="" name="gender" value="1" checked="checked">
                                        男&nbsp;&nbsp;
                                        <input type="radio" id="" name="gender" value="2">
                                        女&nbsp;&nbsp;
                                    </c:if>
                                    <c:if test="${user.gender == 2}">
                                        <input type="radio" name="gender" value="0">
                                        保密&nbsp;&nbsp;
                                        <input type="radio" id="" name="gender" value="1">
                                        男&nbsp;&nbsp;
                                        <input type="radio" id="" name="gender" value="2" checked="checked">
                                        女&nbsp;&nbsp;
                                    </c:if>
                                </div>
                            </li>
                            <li><label>电子邮箱：</label> <span><input name="email" id="" type="text" value="${user.email}"
                                                                  class="text" disabled="disabled"/></span></li>
                            <li><label>移动电话：</label> <span><input name="telephone" id="" type="text" value="${user.telephone}"
                                                                  class="text" disabled="disabled"/></span></li>
                            <div class="bottom pull-flet">
                                <input name="" type="submit" value="确认修改" class="confirm"/>
                            </div>
                        </form>
                        <div class="bottom">
                            <input name="" type="submit" value="修改信息" class="modify"/>
                        </div>
                    </ul>
                    <ul class="Head_portrait">
                        <li class="User_avatar"><img src="${pageContext.request.contextPath}/img/${user.head_img}"
                                                     width="208px" height="208px"/></li>
                        <form enctype="multipart/form-data"
                              action="${pageContext.request.contextPath}/personal/doHeadImageChange" method="post">
                            <li><input name="file" type="file" id="" class="file"/></li>
                            <div class="bottom">
                                <input name="" type="submit" value="换头像" class="modify"/>
                            </div>
                        </form>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="_footer.jsp" />
</body>
</html>
