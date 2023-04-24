<%@page contentType="text/html;charset=utf-8" language="java" %>
<jsp:include page="head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/register.css">
<script type="text/javascript" src="statics/js/jquery-1.8.3.min.js"></script>
<%--    <script type="text/javascript" src="statics/js/validateTip.js"></script>--%>


<div class="box">
    <form id="registerForm" action="${pageContext.request.contextPath}/addUser" method="post" autocomplete="off">
        <span id="hint">欢迎注册！</span><br>
        <input type="text" id="username" name="username" onblur="checkUsername()" class="username_field" placeholder="请输入用户名" required>
        <img width="15px" id="usernameStatus">
        <input type="password" id="password" name="password" onblur="checkPassword()" class="password_fied" placeholder="请输入密码" required>
        <img width="15px" id="passwordStatus">
        <input type="password" id="confirm" name="confirm" onblur="checkConfirm()" class="password_fied" placeholder="请确认密码" required>
        <img width="15px" id="confirmStatus">
        <input type="text" id="email" onblur="checkEmail()" name="email" class="password_fied" placeholder="请输入邮箱"
               required>
        <img width="15px" id="emailStatus">
        <div id="login_control">
            <input type="button" name="register" id="register" onclick="checkForm()" value="注册"
                   onMouseOver=this.style.backgroundColor="deepskyblue"
                   onMouseOut=this.style.backgroundColor="transparent">
        </div>
    </form>
    <div class="tips">
        已有账号？<a href="login.jsp" class="content">登录</a>
    </div>
</div>

</body>
<script>
    let ok = false;

    function checkUsername() {
        $.ajax({
            type: "post",
            url: "/register",
            data: {"username": $("#username").val()},
            success: function (data) {
                if (data.result === "true") {
                    $("#hint").css("color", "green")
                    $("#hint").html("用户名合理")
                    document.getElementById("usernameStatus").src = "/statics/icon/y.png"
                    ok = true
                } else {
                    $("#hint").css("color", "red")
                    $("#hint").html("用户名已存在")
                    document.getElementById("usernameStatus").src = "/statics/icon/n.png"
                    ok = false
                }
            }
        })
    }

    function checkPassword() {
        if ($("#password").val().length > 6 && $("#password").val().length < 20) {
            $("#hint").css("color", "green")
            $("#hint").html("密码合理")
            document.getElementById("passwordStatus").src = "/statics/icon/y.png"
            ok = true
        } else {
            $("#hint").css("color", "red")
            $("#hint").html("密码不合理")
            document.getElementById("passwordStatus").src = "/statics/icon/n.png"
            ok = false

        }
    }

    function checkConfirm() {
        if ($("#confirm").val() === $("#password").val()) {
            $("#hint").css("color", "green")
            $("#hint").html("密码一致")
            document.getElementById("confirmStatus").src = "/statics/icon/y.png"
            ok = true
        } else {
            $("#hint").css("color", "red")
            $("#hint").html("两次输入密码不一样")
            document.getElementById("confirmStatus").src = "/statics/icon/n.png"
            ok = false

        }
    }

    function checkEmail() {
        //定义邮箱格式的正则表达式
        let reg = /^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
        let email = $("#email").val()
        if (reg.test(email)) {
            $("#hint").css("color", "green")
            $("#hint").html("邮箱格式正确")
            document.getElementById("emailStatus").src = "/statics/icon/y.png"
            ok = true
        } else {
            $("#hint").css("color", "red")
            $("#hint").html("邮箱格式错误")
            document.getElementById("emailStatus").src = "/statics/icon/n.png"
            ok = false
        }
    }

    function checkForm() {
        if (ok === true
        ) {
            var form = document.getElementById("registerForm")
            form.submit()
        } else {
            return false
        }
    }


</script>

</html>
