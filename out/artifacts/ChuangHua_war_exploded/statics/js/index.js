/**
首页显示的话题
 */

var index = null;
var science = null;
var music = null;
var dance = null;
var cartoon = null;
var sport = null;
var hot = null;

$(function () {
    index = $("#index")
    science = $("#science")
    music = $("#music")
    dance = $("#dance")
    cartoon = $("#cartoon")
    sport = $("#sport")
    hot = $("#hot")

    index.on("click", function () {
        $.ajax({
            type: "GET",
            url: "/allTopic",
            data: {method: "index"},
            data_type: "json",
        })
    })
})