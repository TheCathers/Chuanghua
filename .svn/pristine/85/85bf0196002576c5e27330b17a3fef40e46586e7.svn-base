/**
 * 评论展开
 */
function my$(id) {
    return document.getElementById(id);
}
my$("btn-comment").onclick = function () {
    if (this.value == "隐藏") {
        my$("comment").style.display = "block";
        this.value = "显示";
        $.ajax({
            type: "GET",
            url: "getData",
            data: {method: "data",id:$("#topicId")},
            data_type: "json",
            success: function (data) {

            }
        })
    } else if (this.value == "显示") {
        my$("comment").style.display = "none";
        this.value = "隐藏";
    }
};
