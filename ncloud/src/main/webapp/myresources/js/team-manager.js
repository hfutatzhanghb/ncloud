/**
 * 团队管理JS文件
 */

$(function() {
	
	$("#btn_searchteam").click(function() {
		var relativepath = $("#ctxValue").attr("value");
//		console.log($("input[name='teamname']").val());
		$.post(relativepath + "searchTeambyTeamName.do", {
			teamname : $("input[name='teamname']").val()
		},
		function(data, status) {
			if (data.code == "success") {
				console.log("####");
				console.log(data.team.teamName);
			}else if (data.code=="null") {
				$("input[name='teamname']").val("");
				alert("没有此团队，请重新输入");
			}

		}
		); 
	});
});

function confirmCreateTeam() {
	$("#createteamform").submit();
}

function changeTeam(obj) {
	var teamname = $(obj).parents("tr").children(":first").text().trim();
	var relativepath = $("#ctxValue").attr("value");
	// console.log(relativepath);
	// console.log($(obj).parents("tr").children(":first").text().trim());
	$.post(relativepath + "changeteam.do", {
		distTeamname : teamname
	}, function(data, status) {
		if (data.status == "success") {
			$("span#currentteam").text("当前团队是：" + data.currentteam);
			$("#disappare").show().fadeOut(2000);
		}
	});
}