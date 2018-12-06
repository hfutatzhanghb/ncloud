/**
 * 团队管理JS文件
 */

$(function() {
	
	//点击了加入团队对话框中的搜索按钮
	$("#btn_searchteam").click(function() {
		var relativepath = $("#ctxValue").attr("value");
		
		$.post(relativepath + "searchTeambyTeamName.do", {
			teamname : $("input[name='teamname']").val()
		},
		function(data, status) {
			if (data.code == "success") {
				var html = '<tr>\
                    <th>团队名</th>\
                    <th>创建者</th>\
                    <th>操作</th>\
                  </tr>';
				//$("#searchteam_table").append('<tr><td>'+data.team.teamName+'</td><td>'+data.team.teamCreatorName+'</td><td><button type="button" class="btn btn-primary">加入</button></td></tr>');
				html=html+'<tr><td>'+data.team.teamName+'</td><td>'+data.team.teamCreatorName+'</td><td><button type="button" class="btn btn-primary" id="btn_shenqingjiaru">申请加入</button></td></tr>';
				$("#searchteam_table").html(html);
				$("input[name='teamname']").val("");
			}else if (data.code=="null") {
				$("input[name='teamname']").val("");
				alert("没有此团队，请重新输入");
			}

		}
		); 
	});
	
	//为加入团队对话框生成的团队搜索结果中的 申请加入按钮添加点击事件
	$(document).on("click","#btn_shenqingjiaru",function(){
		
	});
	
	$("#btn_cleardialog").click(function(){
		$("#searchteam_table").html("");
	})
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