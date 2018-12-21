/**
 * research-group的JS文件
 */
function AddFuntionAlty(value, row, index) {
	return '<button id="TableEditor" type="button" class="btn btn-primary">申请加入</button> &nbsp;&nbsp;'
}

window.operateEvents1 = {
	'click #TableEditor' : function(e, value, row, index) {
		var relativepath = $("#ctxValue").attr("value");
		$.post(relativepath + 'applyJoinTeamRequest.do', {
			tousername : row.team_creatorName,
			msgcontent : "申请加入",
			teamname : row.team_name
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

	}
};

$(function() {
	var relativepath = $("#ctxValue").attr("value");
	$('#teamlisttable').bootstrapTable({
		url : relativepath + 'getexistedTeamListPagination.do',
		dataType : "json",
		pagination : true,
		sidePagination : "server", // 服务端处理分页
		pageList : [ 10 ],// 可供选择的每页的行数（*）
		pageSize : 10, // 每页的记录行数（*）
		pageNumber : 1,// 初始化table时显示的页码
		showColumns : false,// 是否显示 内容列下拉框
		queryParamsType : "", //默认值为 'limit' ,在默认情况下 传给服务端的参数为：offset,limit,sort
		// 设置为 ''  在这种情况下传给服务器的参数为：pageSize,pageNumber
		queryParams : function queryParams(params) { //设置查询参数  
			var param = {// 这里的params是table提供的
				currentpage : params.pageNumber,// 从数据库第几条记录开始
				pagesize : params.pageSize, // 找多少条
			};
			return param;
		},

		toolbar : "#search-toolbar",
		columns : [ {
			field : 'team_name',
			title : '团队名称',
		}, {
			field : 'team_creatorName',
			title : '团队创建人'
		}, {
			field : 'team_creatorTime',
			title : '团队创建时间',
			formatter : function(value, row, index) {
				return new Date(value).toLocaleString().substring(0, 9);
			}
		}, {
			field : 'team_category',
			title : '团队所属领域'
		}, {
			field : 'team_description',
			title : '团队简介'
		}, {
			field : 'Button',
			title : '操作',
			formatter : AddFuntionAlty,
			events : operateEvents1
		} ]
	});

	// 用来实现自动提示
	var relativepath = $("#ctxValue").attr("value");
	$(".typeahead").typeahead({
		source : function(query, process) {

			return $.ajax({
				url : relativepath + 'searchTeambyBlurTeamName.do',
				type : 'post',
				data : {
					teamname : query
				},
				success : function(result) {
					return process(result.name);
				},
			});
		}
	});

	//点击了加入团队对话框中的搜索按钮
	$("#btn_searchteam").click(function() {
		var relativepath = $("#ctxValue").attr("value");
		$.post(relativepath + "searchTeambyTeamName.do", {
			teamname : $("input[name='teamname1']").val()
		}, function(datas, status) {
			if (datas.code == "success") {
				$('#teamlisttable').bootstrapTable('load', datas.data);
			} else if (datas.code == "null") {
				$.amaran({
					content : {
						title : '通知',
						//message:'申请成功',
						message : "没有此团队信息",
						info : '',
						icon : 'fa fa-warning'
					},
					theme : 'awesome error'
				});
			}

		});
	});

});
