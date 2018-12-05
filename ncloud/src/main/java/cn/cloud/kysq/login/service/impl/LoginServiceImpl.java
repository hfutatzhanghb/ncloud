package cn.cloud.kysq.login.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.cloud.kysq.login.dao.ILoginDao;
import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.login.service.ILoginService;
import cn.cloud.kysq.team.entity.Team;
import cn.cloud.kysq.team.entity.TeamUserDTO;

@Service
public class LoginServiceImpl implements ILoginService {

	@Autowired
	private ILoginDao loginDao;

	public TeamUserDTO login(String email, String password) {
		TeamUserDTO teamUserDTO = null;
		User user = loginDao.findUser(email, password);
		if (user != null) {
			teamUserDTO = new TeamUserDTO();
			teamUserDTO.setUser(user);
			List<Team> teamsOfUsername = loginDao.findTeamsByUsername(user.getUsername());
			if (teamsOfUsername.size() != 0) {
				teamUserDTO.setTeam(teamsOfUsername);
			}

		}
		return teamUserDTO;
	}

	public int signup(User user) {
		int insertRows = loginDao.insertUser(user);
		return insertRows;
	}
}
