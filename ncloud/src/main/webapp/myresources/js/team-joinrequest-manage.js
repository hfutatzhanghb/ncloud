/**
 * 团队管理JS文件
 */

$(function() {
	// 不小心点击别的地方再进去，也把表单清掉。
	$("#btn_jointeam").click(function() {
		$("#searchteam_table").html("");
	});

	// 点击了加入团队对话框中的搜索按钮
	$("#btn_searchteam")
			.click(
					function() {
						var relativepath = $("#ctxValue").attr("value");

						$
								.post(
										relativepath
												+ "searchTeambyTeamName.do",
										{
											teamname : $(
													"input[name='teamname']")
													.val()
										},
										function(data, status) {
											if (data.code == "success") {
												var html = '<tr>\
                    <th>团队名</th>\
                    <th>创建者</th>\
                    <th>操作</th>\
                  </tr>';
												// $("#searchteam_table").append('<tr><td>'+data.team.teamName+'</td><td>'+data.team.teamCreatorName+'</td><td><button
												// type="button" class="btn
												// btn-primary">加入</button></td></tr>');
												html = html
														+ '<tr><td value="td_teamName">'
														+ data.team.teamName
														+ '</td><td value="td_teamCreatorEmail">'
														+ data.team.teamCreatorName
														+ '</td><td><button type="button" class="btn btn-primary" id="btn_shenqingjiaru">申请加入</button></td></tr>';
												$("#searchteam_table").html(
														html);
												$("input[name='teamname']")
														.val("");
											} else if (data.code == "null") {
												$("input[name='teamname']")
														.val("");
												alert("没有此团队，请重新输入");
											}

										});
					});

	// 为加入团队对话框生成的团队搜索结果中的 申请加入按钮添加点击事件
	$(document).on("click", "#btn_shenqingjiaru", function() {
		var relativepath = $("#ctxValue").attr("value");
		$.post(relativepath + 'applyJoinTeam.do', {
			touseremail : $("td[value='td_teamCreatorEmail']").text(),
			msgcontent : "申请加入",
			teamname : $("td[value='td_teamName']").text()
		}, function(data, status) {
			if (data.code == "success") {
				$.amaran({
					content : {
						title : '通知',
						message : '申请成功',
						info : '',
						icon : 'fa fa-check-square'
					},
					theme : 'awesome ok'
				});
			} else if (data.code = "failed") {
				$.amaran({
					content : {
						title : '通知',
						// message:'申请成功',
						message : data.msg,
						info : '',
						icon : 'fa fa-warning'
					},
					theme : 'awesome error'
				});
			}
		});

	});

	$("#btn_cleardialog").click(function() {
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
			$("span#teamname").text(data.currentteam);
			$("#disappare").show().fadeOut(2000);
		}
	});
}

function passRequest(obj) {
	console.log(obj);
	var agree = "true";
	var relativepath = $("#ctxValue").attr("value");
	$.post(relativepath + "handleJoinTeamRequest.do", {
		agree : agree,
		fromusername : $("td[value='td_applierUserName']").text(),
		teamname : $("#id_forteam_name").attr("value")
	}, function(data, status) {
		if (data.code == "success") {
			$.amaran({
				content : {
					title : '通知',
					message : data.msg,
					info : '',
					icon : 'fa fa-check-square'
				},
				theme : 'awesome ok'
			});
			$(obj).parent().parent().remove();
		}
	});
}

function refuseRequest(obj) {
	var agree = "false";
	var relativepath = $("#ctxValue").attr("value");
}