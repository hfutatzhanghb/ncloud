package cn.cloud.kysq.team.dao;

import java.util.List;

import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.team.entity.Team;

/**
 * 用于实现创建团队，加入团队的Dao
 * 
 * @author zhb
 *
 */
public interface ITeamDao {

	public int insertTeam(User creator, Team team);

	/**
	 * 查询User的所有Team
	 */
	public List<Team> selectALLTeamsByUser(User user);

	public int insertUserToTeam();
}
