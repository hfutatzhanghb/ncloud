package cn.cloud.kysq.team.service;

import java.util.List;

import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.team.entity.Team;

/**
 * 创建团队相关的业务类
 * 
 * @author zhb
 *
 */
public interface ITeamService {

	public int createTeam(User creator, Team team);

	/**
	 * 得到一个用户加入或创建的团队
	 * 
	 * @return
	 */
	public List<Team> getAllTeamsByUser(User user);

	public List<Team> searchTeamByName();

	public int joinTeam(Team team);
}
