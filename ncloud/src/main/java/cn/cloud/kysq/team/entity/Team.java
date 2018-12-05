package cn.cloud.kysq.team.entity;

/**
 * 科研团队实体
 * @author zhb
 *
 */
import java.util.Date;

public class Team {
	private Integer teamID; // 自增ID
	private String teamName; // 团队名
	private String teamCreatorName; // 创建人用户名
	private Date teamCreatorTime; // 团队创建时间
	private String teamCategory; // 团队类别
	private String teamDescription; // 团队描述
	private String teamCompany; // 团队单位
	private String teamLogoURL; // 团队LOGO的URL
	private Integer teamDeleteflag; // 团队删除标记 0:团队有效 1:团队被删除 default:0

	public Team() {
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

	public Date getTeamCreatorTime() {
		return teamCreatorTime;
	}

	public void setTeamCreatorTime(Date teamCreatorTime) {
		this.teamCreatorTime = teamCreatorTime;
	}

	public String getTeamCategory() {
		return teamCategory;
	}

	public void setTeamCategory(String teamCategory) {
		this.teamCategory = teamCategory;
	}

	public String getTeamDescription() {
		return teamDescription;
	}

	public void setTeamDescription(String teamDescription) {
		this.teamDescription = teamDescription;
	}

	public String getTeamCompany() {
		return teamCompany;
	}

	public void setTeamCompany(String teamCompany) {
		this.teamCompany = teamCompany;
	}

	public String getTeamLogoURL() {
		return teamLogoURL;
	}

	public void setTeamLogoURL(String teamLogoURL) {
		this.teamLogoURL = teamLogoURL;
	}

	public Integer getTeamDeleteflag() {
		return teamDeleteflag;
	}

	public void setTeamDeleteflag(Integer teamDeleteflag) {
		this.teamDeleteflag = teamDeleteflag;
	}

	public String getTeamCreatorName() {
		return teamCreatorName;
	}

	public void setTeamCreatorName(String teamCreatorName) {
		this.teamCreatorName = teamCreatorName;
	}
}
