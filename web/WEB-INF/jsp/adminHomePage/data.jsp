<%@page contentType="text/html;charset=utf-8" language="java" %>
<jsp:include page="head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}statics/css/data.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/check.css">
<script type="text/javascript" src="${pageContext.request.contextPath}statics/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}statics/js/echarts.js"></script>
<link rel="shortcut icon" href="${pageContext.request.contextPath}favicon.ico"/>
<div class="main">
    <div class="userdata-control">
        <div class="userdata">
            <span id=" " style="margin-left: 30px">用户数：</span><br>
            <span style="margin-left: 30px;color: #00a1d6;font-size: 25px">${userCount}</span><br>
            <span style="margin-left: 30px">昨日:${userCountY}</span><br>
        </div>
        <div class="userdata">
            <span style="margin-left: 30px">发帖数：</span><br>
            <span style="margin-left: 30px;color: #00a1d6;font-size: 25px">${topicCount}</span><br>
            <span style="margin-left: 30px">昨日:${topicCountY}</span><br>
        </div>
        <div class="userdata">
            <span style="margin-left: 30px">评论数：</span><br>
            <span style="margin-left: 30px;color: #00a1d6;font-size: 25px">${commentCount}</span><br>
            <span style="margin-left: 30px">昨日:${commentCountY}</span><br>
        </div>
        <br>
        <div class="userdata"></div>
        <div class="userdata"></div>
        <div class="userdata"></div>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <div>
        <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
        <a id="user" href="${pageContext.request.contextPath}getData">用户数变化情况</a>
        <div id="main" style="width: 600px;height:400px;">
            <%--            <script type="text/javascript" src="${pageContext.request.contextPath}statics/js/data.js"></script>--%>
            <script type="text/javascript">
                // 基于准备好的dom，初始化echarts实例
                var days = []
                var value = []

                $.ajax({
                    type: "GET",
                    url: "getData",
                    data: {method: "data"},
                    data_type: "json",
                    success: function (data) {
                        for (var key in data) {
                            days.push(key)
                            value.push(data[key])
                        }

                    }
                })
                console.log(days)
                console.log(value)
                var myChart = echarts.init(document.getElementById('main'));
                // 指定图表的配置项和数据
                var option = {
                    title: {
                        text: ' '
                    },
                    tooltip: {},
                    legend: {
                        data: ['用户数']
                    },
                    xAxis: {
                        data: days
                    },
                    yAxis: {},
                    series: [{
                        name: '用户数',
                        type: 'line',
                        data: value
                    }]
                };
                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);


            </script>
        </div>
    </div>
</div>
</body>
</html>