<%@page contentType="text/html;charset=utf-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Testing Demo Project</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/homePage.css">
</head>
<body>
    <div class="head w">
        <!-- LOGO部分 -->
        <div class="logo">LOGO位置</div>
        <!-- 导航栏部分 -->
        <div class="nav">
            <ul>
                <li><a href="#">首页</a></li>
            </ul>
        </div>
        <!-- 搜索模块 -->
        <div class="serach">
            <input type="text" value="输入关键字">
            <button>查询</button>
        </div>
    </div>
    <div class="banner">
        <div class="w">
            <div class="subnav">
                <ul>
                    <li><a href="#">修改密码</a></li>
                    <li><a href="#">个人信息</a></li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>