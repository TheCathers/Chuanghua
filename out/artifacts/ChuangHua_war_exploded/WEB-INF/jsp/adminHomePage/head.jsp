<%@page contentType="text/html;charset=utf-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>创话俱乐部-个人主页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/check.css">
</head>
<body>
<div class="head w">
    <!-- LOGO部分 -->
    <div class="logo"><img src="statics/icon/logo.png" width="50px"></div>
    <!-- 导航栏部分 -->
    <div class="nav">
        <ul>
            <li><a href="${pageContext.request.contextPath}/allTopic">首页</a></li>
        </ul>
    </div>
    <!-- 搜索模块 -->
    <div class="serach">
        <input type="text" id="src-text" placeholder="输入关键字">
        <input type="submit" value="查询" class="btn-serach">
    </div>
</div>
<div class="banner">
    <div class="subnav-control">
        <div class="subnav">
            <div class="nav-title"><p style="margin-top: 10px">个人中心</p></div>
            <hr>
            <ul>
                <li class="nav-link-item"><a href="${pageContext.request.contextPath}/PersonInfo">个人信息</a></li>
                <li class="nav-link-item"><a href="${pageContext.request.contextPath}/goChangePwd">修改密码</a></li>
                <li class="nav-link-item-check"><a href="#">审核发言</a>
                    <ul class="drop-down-content">
                        <li><a href="${pageContext.request.contextPath}/checkTopic">审核话题</a></li>
                        <li><a href="${pageContext.request.contextPath}/checkComment">审核评论</a></li>
                    </ul>
                </li>
                <li class="nav-link-item"><a href="${pageContext.request.contextPath}/dataPage">数据统计</a></li>
                <li class="nav-link-item"><a href="${pageContext.request.contextPath}/logout">退出登录</a></li>
            </ul>
        </div>
    </div>
</div>

