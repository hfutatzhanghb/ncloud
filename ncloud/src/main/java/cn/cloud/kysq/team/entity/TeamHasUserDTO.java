package cn.cloud.kysq.team.entity;

import java.util.List;

import cn.cloud.kysq.login.entity.User;

/**
 * 包装对象 :包含Team和此队伍下的所有User
 * 
 * @author zhb
 *
 */
public class TeamHasUserDTO {

	private Team team;
	private List<User> userlist;

	public TeamHasUserDTO() {
	}

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	public List<User> getUserlist() {
		return userlist;
	}

	public void setUserlist(List<User> userlist) {
		this.userlist = userlist;
	}

}
