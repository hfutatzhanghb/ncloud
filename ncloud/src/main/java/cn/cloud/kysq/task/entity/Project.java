package cn.cloud.kysq.task.entity;

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
	private String projectName; // 项目名
	private String projectCreatorEmail; // 项目创建人用户名
	private String projectCreatorName; // 项目创建人用户名
	private Date projectCreatorTime; // 项目创建时间
	private Integer teamID; // 项目所属团队ID
	private String teamName; // 项目所属团队名称
	private Integer isDelete; // 项目删除标记，0：有效，1：删除
	private Integer isFinished; // 项目中的所有任务是否完成。

	public Project() {
	}

	public Integer getProjectID() {
		return projectID;
	}

	public void setProjectID(Integer projectID) {
		this.projectID = projectID;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getProjectCreatorEmail() {
		return projectCreatorEmail;
	}

	public void setProjectCreatorEmail(String projectCreatorEmail) {
		this.projectCreatorEmail = projectCreatorEmail;
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

	public Integer getTeamID() {
		return teamID;
	}

	public void setTeamID(Integer teamID) {
		this.teamID = teamID;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public Integer getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

	public Integer getIsFinished() {
		return isFinished;
	}

	public void setIsFinished(Integer isFinished) {
		this.isFinished = isFinished;
	}

}
