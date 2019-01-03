package cn.cloud.kysq.task.entity;

import java.util.ArrayList;

/**
 * 项目的一个阶段 一个阶段包含多个任务
 * 
 * @author Administrator
 *
 */
public class Stage {

	private Integer stageID; // 阶段ID
	private String stageName; // 阶段名
	private Integer belongtoprojectid; // 所属项目ID
	private String projectName; //所属项目名字
	private String stageLeaderName; // 阶段负责人名字
	private ArrayList<Task> taskList; // 阶段里包含的任务

	public Stage() {
	}

	public Integer getStageID() {
		return stageID;
	}

	public void setStageID(Integer stageID) {
		this.stageID = stageID;
	}

	public String getStageName() {
		return stageName;
	}

	public void setStageName(String stageName) {
		this.stageName = stageName;
	}


	public Integer getBelongtoprojectid() {
		return belongtoprojectid;
	}

	public void setBelongtoprojectid(Integer belongtoprojectid) {
		this.belongtoprojectid = belongtoprojectid;
	}

	public String getStageLeaderName() {
		return stageLeaderName;
	}

	public void setStageLeaderName(String stageLeaderName) {
		this.stageLeaderName = stageLeaderName;
	}

	public ArrayList<Task> getTaskList() {
		return taskList;
	}

	public void setTaskList(ArrayList<Task> taskList) {
		this.taskList = taskList;
	}

}
