<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

<form action="${pageContext.request.contextPath}/login/do" method="post" class="login-form">
    <h1>欢迎登录</h1>

    <div class="txtb">
        <input type="text" name="username">
        <span data-placeholder="邮箱/手机"></span>
    </div>
    <div class="txtb">
        <input type="password" name="password">
        <span data-placeholder="密码"></span>
    </div>
    <input type="checkbox" name="remember-me" id="remember-me" class="remember-me" style="zoom:1.3;border: #1baf7d solid 1px;margin-bottom:30px">
    <label for="remember-me">记住我</label>
    <input type="submit" class="logbtn" value="登录">

    <div class="bottom-text">
        没有账户?立即<a href="${pageContext.request.contextPath}/register.jsp">注册</a>
    </div>
</form>

<script type="text/javascript">
    $(".txtb input").on('focus', function () {
        $(this).addClass("focus");
    });

    $(".txtb input").on('blur', function () {
        if ($(this).val() == "")
            $(this).removeClass("focus");
    });
</script>
</body>
</html>