/**
 * 文档管理JS
 */
$(function() {

	// 修改文件夹的链接地址
	var pathStr = $("#forbreadcrumbpath").attr("value");
	var idStr = $("#forbreadcrumbid").attr("value");
	var team_id = $("#forteam-id").attr("value");
	$("a.filelist").each(
			function(key, value) {
				$(this).attr(
						"href",
						$(this).attr("href") + "&pathStr=" + pathStr
								+ "&idStr=" + idStr);
			})

	var paths = pathStr.split(",");
	var ids = idStr.split(",");
	// 修改面包屑的链接地址
	$("a.breadlist")
			.each(
					function(key, value) {
						// alert($(this).attr("href"));
						var pathStr_temp = "";
						var idStr_temp = "";
						for (var i = 0; i < key + 1; i++) {
							pathStr_temp = pathStr_temp + paths[i] + ",";
							idStr_temp = idStr_temp + ids[i] + ",";
						}
						if (pathStr_temp.charAt(pathStr_temp.length - 1) == ",") {
							pathStr_temp = pathStr_temp.substring(0,
									pathStr_temp.length - 1);
							idStr_temp = idStr_temp.substring(0,
									idStr_temp.length - 1);
						}
						$(this).attr(
								"href",
								$(this).attr("href") + "fileID=" + ids[key + 1]
										+ "&curPath=" + paths[key + 1]
										+ "&pathStr=" + pathStr_temp
										+ "&idStr=" + idStr_temp);
						// alert(paths[key+1]+":"+ids[key+1]);
					})
	// 修改上传文件表单的action的链接
	$("#uploadfileform").attr(
			"action",
			$("#uploadfileform").attr("action") + "parentID="
					+ ids[ids.length - 1] + "&team_id=" + team_id);
	// alert("1");
	// location.reload();
});

function Open_UploadFiledialog() {
	$("#upload-dialog").modal("toggle");
}

function closeUploadFileDialog() {
	location.reload();
}
	
function downloadfile(obj) {
	// alert($(this).parents("tr").children(":first").html());
	console.log($(obj).parents("tr").children(":first").text().trim());
	var team_id = $("#forteam-id").attr("value");
	var form = $("<form>");// 定义一个form表单
	form.attr("style", "display:none");
	form.attr("target", "");
	form.attr("method", "post");
	form.attr("action", "downloadfile.do");
	var input1 = $("<input>");
	input1.attr("type", "hidden");
	input1.attr("name", "team_id");
	input1.attr("value", team_id);

	var input2 = $("<input>");
	input2.attr("type", "hidden");
	input2.attr("name", "filename");
	input2.attr("value", $(obj).parents("tr").children(":first").text().trim());

	$("body").append(form);//将表单放置在web中
	form.append(input1);
	form.append(input2);
	form.submit();//表单提交 

}