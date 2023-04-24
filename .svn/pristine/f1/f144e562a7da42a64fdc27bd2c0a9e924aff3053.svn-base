<%@page contentType="text/html;charset=utf-8" language="java" %>

<jsp:include page="head.jsp"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="X-UA-Compatible" content="IE=7,IE=9">
    <meta http-equiv="X-UA-Compatible" content="IE=7,9">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <title>Title</title>
    <script type="text/javascript" src="statics/js/jquery-1.8.3.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/index.css">
    <script type="text/javascript" src="statics/js/index.js"></script>


<div class="box">
    <form action="${pageContext.request.contextPath}/login" method="post" autocomplete="off">
        <input type="text" name="username" id="username" class="username_field" placeholder="请输入用户名"><br>
        <input type="password" name="password" class="password_fied" placeholder="请输入密码"><br>
        <span style="color:red;">${error}</span><br>
        <div class="loginbar">
            <input type="submit" id="login" value="登录" onMouseOver=this.style.backgroundColor="deepskyblue" onMouseOut=this.style.backgroundColor="transparent">
            <a href="register.jsp">
                <input type="button" id="register" value="注册" onMouseOver=this.style.backgroundColor="deepskyblue" onMouseOut=this.style.backgroundColor="transparent">
            </a>
        </div>
    </form>
</div>
</body>
</html>