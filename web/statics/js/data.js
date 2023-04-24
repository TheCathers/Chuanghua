// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('main'));
$(function () {
    var user = $("#user")
    user.onclick = function () {
        $.ajax({
            type: "GET",
            url: "getData",
            data: {method: "data"},
            data_type: "json",
            success: function (data) {
                var days = [];
                var count = [];
                for (var key in data) {
                    days.push(key)
                    count.push(data[key])
                }
                console.log(days)

                var option = {
                    title: {
                        text: '最近一周用户数变化'
                    },
                    tooltip: {},
                    legend: {
                        data: ['数量/个']
                    },
                    xAxis: {
                        data: days
                    },
                    yAxis: {},
                    series: [{
                        name: '用户数',
                        type: 'bar',
                        data: count
                    }]
                };
                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);
            }
        })
    }
})
