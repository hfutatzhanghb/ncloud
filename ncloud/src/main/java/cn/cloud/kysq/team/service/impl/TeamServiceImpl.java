package cn.cloud.kysq.team.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.team.dao.ITeamDao;
import cn.cloud.kysq.team.entity.Team;
import cn.cloud.kysq.team.service.ITeamService;

@Service
public class TeamServiceImpl implements ITeamService {

	@Autowired
	private ITeamDao teamDao;

	@Override
	public int createTeam(User creator, Team team) {

		int insertTeam = teamDao.insertTeam(creator, team);
		return insertTeam;
	}

	@Override
	public List<Team> searchTeamByName() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int joinTeam(Team team) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Team> getAllTeamsByUser(User user) {
		List<Team> teamlist = teamDao.selectALLTeamsByUser(user);
		return teamlist;
	}

}
