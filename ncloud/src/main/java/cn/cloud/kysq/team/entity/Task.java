package cn.cloud.kysq.team.entity;

import java.util.ArrayList;
import java.util.Date;

public class Task {

	private Integer taskID; // 任务ID
	private String taskDescription; // 任务描述
	private String taskUserName; // 任务被分给的用户名
	private Integer stageID;// 任务所属阶段ID
	private Integer projectID; // 任务所属项目ID
	private Integer taskPriority;// 任务优先级
	private Date taskDeadLine; // 任务截止日期
	private Integer isFinished; // 是否完成
	// 待添加任务执行的人，一个任务对应一个人就好。

}
