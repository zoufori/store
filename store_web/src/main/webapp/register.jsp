<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
    
    <form action="${pageContext.request.contextPath}/register/doRegister" method="post" class="login-form">
        <h1>立即注册</h1>

        <div class="txtb">
            <input type="text" name="email">
            <span data-placeholder="邮箱"></span>
        </div>
        <div class="txtb">
            <input type="text" name="telephone">
            <span data-placeholder="手机"></span>
        </div>
        <div class="txtb">
            <input type="password" name="password" id="password">
            <span data-placeholder="密码"></span>
        </div>
        <div class="txtb">
            <input type="password" id="cpassword">
            <span data-placeholder="确认密码"></span>
        </div>

        <input type="submit" class="logbtn" value="注册">

        <div class="bottom-text">
            已有账户?立即<a href="${pageContext.request.contextPath}/login.jsp">登录</a>
        </div>
    </form>

    <script type="text/javascript">
        $('.login-form').submit(function () {
            if($('#password').val() != $('#cpassword').val()){
                alert("两次密码输入不正确");
                return false;
            }
        });

        $(".txtb input").on('focus', function(){
            $(this).addClass("focus");
        });

        $(".txtb input").on('blur', function(){
            if($(this).val() == "")
            $(this).removeClass("focus");
        });
    </script>
</body>
</html>