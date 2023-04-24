<%@page contentType="text/html;charset=utf-8" language="java" %>
<jsp:include page="head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/changePwd.css">
<script type="text/javascript" src="statics/js/jquery-1.8.3.min.js"></script>

<div class="main">
<div class="title">修改密码</div>
    <form id="changePwd" action="${pageContext.request.contextPath}/changePwd" method="post">
        <span id="hint"></span><br>
        <span style="margin-left: 300px">输入新密码：</span>
        <input type="password" id="password" name="password" onblur="checkPassword()" class="newpassword">
        <img width="15px" id="passwordStatus"><br>
        <span style="margin-left: 300px">确认新密码：</span>
        <input type="password" id="confirm" name="confirm" onblur="checkConfirm()" class="confirmnewpassword">
        <img width="15px" id="confirmStatus">
        <input type="button" value="修改密码" onclick="checkForm()" class="submit">
    </form>

</div>
</body>
<script>
    let ok = false;

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

    function checkForm() {
        if (ok === true) {
            var form = document.getElementById("changePwd")
            form.submit()
            // $("#registerFrom").submit()
        } else {
            return false
        }
    }
</script>
</html>