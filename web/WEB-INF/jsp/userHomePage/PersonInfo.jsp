<%@page contentType="text/html;charset=utf-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}statics/css/PersonInfo.css">
<div  class="main" >
    <hgroup style="color: #6495ED">
        <h1>个人信息</h1>
        <br>
    <form action="">
        <fieldset>
            <legend>个人</legend>
            用户名：${user.getUsername()}<br>
            邮箱：${user.getEmail()}<br>
            注册时间：${user.getCreationDate()}<br>

        </fieldset>

        <fieldset>
            <legend>最近发表的话题</legend>
            <c:forEach var="topic" items="${topics}" >
                <span>${topic.getCreationDate()}</span><br>
                <span>${topic.getTitle()}</span><br>
                <span>${topic.getContent()}</span><br>
            </c:forEach>
        </fieldset>

        <fieldset>
            <legend>最近发表的评论</legend>
            <c:forEach var="comment" items="${comments}" >
                <span>${comment.getCreationDate()}</span><br>
                <span>${comment.getContent()}</span><br>
                <span>
                    <a href="${pageContext.request.contextPath}topicDetails?id=${comment.getCommentObject()}">
                        查看详情</a>
                </span>
            </c:forEach>
        </fieldset>
    </form>
    </hgroup>
</div>
</body>
</html>