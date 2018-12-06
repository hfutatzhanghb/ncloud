package cn.cloud.kysq.team.entity;

import java.util.List;

import cn.cloud.kysq.login.entity.User;

/**
 * 包装对象
 * 包含User和他加入的一个Team
 * 
 * @author zhb
 *
 */
public class UserJoinTeamDTO {
	private User user;
	private List<Team> team;

	public UserJoinTeamDTO() {
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Team> getTeam() {
		return team;
	}

	public void setTeam(List<Team> team) {
		this.team = team;
	}


}
