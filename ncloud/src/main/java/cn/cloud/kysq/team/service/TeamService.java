package cn.cloud.kysq.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.team.dao.TeamDao;
import cn.cloud.kysq.team.entity.Team;

/**
 * 团队管理相关的业务类
 * 
 * @author zhb
 *
 */

@Service
public class TeamService {

	@Autowired
	private TeamDao teamDao;

	/*
	 * 创建团队： 需要同时向 团队实体表(`team`) 和 团队成员表(`user_team_relationship`)插入记录
	 */
	@Transactional
	public boolean createTeam(User creator, Team team) {

		boolean insertTeam = teamDao.insertTeam(creator, team);
		String teamName = team.getTeamName();
		boolean insertUserToTeam = teamDao.insertUserToTeam(creator, teamName);
		return insertTeam && insertUserToTeam;
	}

	/**
	 * 得到一个用户加入或创建的团队
	 */
	public List<Team> getAllTeamsByUser(User user) {
		List<Team> teamlist = teamDao.selectALLTeamsByUser(user);
		return teamlist;
	}

	public List<Team> searchTeamByName() {
		// TODO Auto-generated method stub
		return null;
	}

	public int joinTeam(Team team) {
		// TODO Auto-generated method stub
		return 0;
	}

}
