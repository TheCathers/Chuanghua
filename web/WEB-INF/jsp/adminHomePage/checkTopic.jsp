<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=utf-8" language="java" %>
<jsp:include page="head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/check.css">
<script type="text/javascript" src="statics/js/jquery-1.8.3.min.js"></script>

<!--主页面-->
<div class="main">

    <c:forEach var="topic" items="${topics}" varStatus="status">
        <div class='msg'>topic
            <!--话题用户信息-->
            <div class='info'>
                <input hidden id="topicId${status.index}" type="text" value="${topic.getId()}">
                <span class='msg-user'>${topic.getCreatBy()}</span>
                <span class='msg-time'>${topic.getCreationDate()}</span>
            </div>
            <!--留言-->
            <div class='msg-content'>
                    ${topic.getTitle()}<br>
                    ${topic.getContent()}<br>
            </div>
            <!--审核-->
            <div class="bar-clearfix">
                <div class="check">
                    <input id="topicPass${status.index}" onclick="topicPass(${status.index})" type="button" value="通过"
                           class="pass">
                    <img width="25px" id="topicStatus${status.index}">
                    <input id="topicReject${status.index}" onclick="topicReject(${status.index})" type="button" value="驳回"
                           class="reject" name="reject">
                </div>
            </div>
            <hr>
        </div>
        <br>
    </c:forEach>
</div>
</body>
<script>

    function topicPass(status) {
        console.log(status)
        let tid = "#topicId" + status
        $.ajax({
            type: "post",
            url: "topicPass",
            data: {id: $(tid).val()},
            success: function (data) {
                if (data.success === "success") {
                    document.getElementById("topicPass" + status).style.visibility = "hidden"
                    document.getElementById(("topicReject" + status)).style.visibility = "hidden"
                    document.getElementById(("topicStatus" + status)).src = "/statics/icon/y.png"
                }
            }
        })
    }

    function topicReject(status) {
        let tid = "#topicId" + status
        $.ajax({
            type: "post",
            url: "topicReject",
            data: {id: $(tid).val()},
            success: function (data) {
                if (data.success === "success") {
                    document.getElementById("topicPass"+status).style.visibility = "hidden"
                    document.getElementById("topicReject"+status).style.visibility = "hidden"
                    document.getElementById("topicStatus"+status).src = "/statics/icon/n.png"
                }
            }
        })
    }
</script>
</html>