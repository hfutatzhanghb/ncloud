/**
 * 团队管理JS文件
 */

$(function() {

});

function confirmCreateTeam() {
	$("#createteamform").submit();
}

function changeTeam(obj) {
	var teamname = $(obj).parents("tr").children(":first").text().trim();
	var relativepath = $("#ctxValue").attr("value");
	console.log(relativepath);
	// console.log($(obj).parents("tr").children(":first").text().trim());
	$.post(relativepath + "changeteam.do", {
		distTeamname : teamname
	}, function(data, status) {
		if (data.status == "success") {
			$("span#currentteam").text("当前团队是："+data.currentteam);
			$("#disappare").show().fadeOut(2000);
		}
	});
}