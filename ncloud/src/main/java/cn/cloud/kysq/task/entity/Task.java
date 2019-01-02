package cn.cloud.kysq.task.entity;

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
	
	public Task() {
		// TODO Auto-generated constructor stub
	}
	
	public Integer getTaskID() {
		return taskID;
	}
	public void setTaskID(Integer taskID) {
		this.taskID = taskID;
	}
	public String getTaskDescription() {
		return taskDescription;
	}
	public void setTaskDescription(String taskDescription) {
		this.taskDescription = taskDescription;
	}
	public String getTaskUserName() {
		return taskUserName;
	}
	public void setTaskUserName(String taskUserName) {
		this.taskUserName = taskUserName;
	}
	public Integer getStageID() {
		return stageID;
	}
	public void setStageID(Integer stageID) {
		this.stageID = stageID;
	}
	public Integer getProjectID() {
		return projectID;
	}
	public void setProjectID(Integer projectID) {
		this.projectID = projectID;
	}
	public Integer getTaskPriority() {
		return taskPriority;
	}
	public void setTaskPriority(Integer taskPriority) {
		this.taskPriority = taskPriority;
	}
	public Date getTaskDeadLine() {
		return taskDeadLine;
	}
	public void setTaskDeadLine(Date taskDeadLine) {
		this.taskDeadLine = taskDeadLine;
	}
	public Integer getIsFinished() {
		return isFinished;
	}
	public void setIsFinished(Integer isFinished) {
		this.isFinished = isFinished;
	}

}
