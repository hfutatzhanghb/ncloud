package cn.cloud.kysq.team.entity;

import java.util.ArrayList;
import java.util.Date;

/**
 * 项目实体
 * 
 * @author Administrator
 *
 */
public class Project {

	private Integer projectID; // 自增ID
	private Integer teamID; // 项目所属团队ID
	private String projectCreatorName; // 项目创建人用户名
	private Date projectCreatorTime; // 项目创建时间
	private Integer projectDeleteFlag; // 项目删除标记，0：有效，1：删除
	private ArrayList<Stage> stageList; // 项目的阶段列表

	public Project() {
		super();
	}

	public Integer getProjectID() {
		return projectID;
	}

	public void setProjectID(Integer projectID) {
		this.projectID = projectID;
	}

	public Integer getTeamID() {
		return teamID;
	}

	public void setTeamID(Integer teamID) {
		this.teamID = teamID;
	}

	public String getProjectCreatorName() {
		return projectCreatorName;
	}

	public void setProjectCreatorName(String projectCreatorName) {
		this.projectCreatorName = projectCreatorName;
	}

	public Date getProjectCreatorTime() {
		return projectCreatorTime;
	}

	public void setProjectCreatorTime(Date projectCreatorTime) {
		this.projectCreatorTime = projectCreatorTime;
	}

	public Integer getProjectDeleteFlag() {
		return projectDeleteFlag;
	}

	public void setProjectDeleteFlag(Integer projectDeleteFlag) {
		this.projectDeleteFlag = projectDeleteFlag;
	}

	public ArrayList<Stage> getStageList() {
		return stageList;
	}

	public void setStageList(ArrayList<Stage> stageList) {
		this.stageList = stageList;
	}
}
