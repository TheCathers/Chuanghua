<%@page contentType="text/html;charset=utf-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/post.css">

<%--发帖页--%>
<jsp:include page="/head.jsp"/>

<div  class="box">

    <form action="${pageContext.request.contextPath}/addTopic" method="post">

<%--        <table class="table-control" >--%>
<%--            <tr>--%>
<%--                <td>标题：</td>--%>
<%--                <td><input type="text" name="title" id="title" value="请输入标题" required></td>--%>

<%--                <td>所属分区：</td>--%>
<%--                <td><select name="type" id="type" required>--%>
<%--                    <option>科学</option>--%>
<%--                    <option>音乐</option>--%>
<%--                    <option>舞蹈</option>--%>
<%--                    <option>动漫</option>--%>
<%--                    <option>运动</option>--%>
<%--                </select></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>内容：</td>--%>
<%--                <td><div class="ct-textarea"><textarea name="content" id="txt-control" required></textarea></div></td>--%>
<%--            </tr>--%>
<%--        </table>--%>
    <table class="table-control">
        <div class="title">
            <img src="/statics/icon/发表.png" alt="" width="25px" height="25px" style="float: left;margin-left: 10px">
            <h1 style="font-size: 18px;float: left;margin-left: 5px">发表新帖</h1>
        </div>
        <tr>
            <td><input type="text" name="tag" id="tag" class="tag" placeholder="请输入标题"></td>
            <td>
                <div>
                    <label for="type">所属分区</label>
                    <select id="type" >
                        <option>科学</option>
                        <option>音乐</option>
                        <option>舞蹈</option>
                        <option>动漫</option>
                        <option>运动</option>
                        <lect>
                </div>
            </td>
        </tr>
        <tr>
            <td><div class="ct-textarea"><textarea name="content" id="txt-control" placeholder="请说说您的想法"></textarea></div></td>
        </tr>
    </table>
        <input type="submit" value="发 表" class="btn" name="submit">
    </form>
</div>
</body>
</html>