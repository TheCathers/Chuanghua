<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="statics/js/jquery-1.8.3.min.js"></script>
<jsp:include page="/head.jsp"/>
<div class='msg'>
    <div class='info'>
        <div class="msg-icon"><img src="statics/icon/头像.jpg" alt="" width="50px" height="50px"></div>
        <span class='msg-user'>匿名用户</span>
        <a><span class='msg-time'>${topic.getCreationDate()}</span></a>
    </div>
    <div class='msg-content'>
        <%--        <label name="topicId" hidden>${topic.getId()}</label>--%>
        ${topic.getTitle()}<br>
        ${topic.getContent()}<br><br>
    </div>
    <div class="cmt-txt">
        <form>
            <textarea name="content" id="content" cols="80" rows="2" placeholder="请说说您的想法"></textarea>
            <input type="button" onclick="addComment(${topic.getId()})" name="sub-comment" class="sub-comment"
                   value="发表评论">
        </form>
    </div>

    <c:forEach var="comment" items="${comments}">
        <hr style="margin-left: auto;width: 75%;margin-right: auto">
        <div class='info'>
            <div class="msg-icon"><img src="statics/icon/头像.jpg" alt="" width="50px" height="50px"></div>
            <span class='msg-user'>匿名用户</span>
            <span class='msg-time'>${comment.getCreationDate()}</span>
        </div>
        <div class='msg-content'>
                ${comment.getContent()}
        </div><br>
    </c:forEach>

</div>
</body>
<script>
    function addComment(id) {
        $.ajax({
            type: "post",
            url: "addComment",
            data: {
                id: id,
                content: $("#content").val()
            },
            data_type:"json",
            success: function () {

            }
        })
    }
</script>

</html>
