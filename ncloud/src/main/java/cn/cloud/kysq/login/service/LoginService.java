package cn.cloud.kysq.login.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.cloud.kysq.login.dao.LoginDao;
import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.team.entity.Team;
import cn.cloud.kysq.team.entity.TeamHasUserDTO;
import cn.cloud.kysq.team.entity.UserJoinTeamDTO;

@Service
public class LoginService {

	@Autowired
	private LoginDao loginDao;

	/**
	 * 登录方法
	 * 
	 * @param email
	 * @param password
	 * @return 返回包含user和该user加入的一个team
	 */
	public UserJoinTeamDTO login(String email, String password) {
		UserJoinTeamDTO teamUserDTO = null;
		User user = loginDao.findUser(email, password);
		if (user != null) {
			teamUserDTO = new UserJoinTeamDTO();
			teamUserDTO.setUser(user);
			List<Team> teamsOfUsername = loginDao.findTeamsByUsername(user.getUsername());
			if (teamsOfUsername.size() != 0) {
				teamUserDTO.setTeam(teamsOfUsername);
			}

		}
		return teamUserDTO;
	}

	/**
	 * 注册方法
	 * 
	 * @param user
	 * @return
	 */
	public int signup(User user) {
		int insertRows = loginDao.insertUser(user);
		return insertRows;
	}
}
