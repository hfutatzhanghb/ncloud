package cn.cloud.kysq.team.service;

import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.cloud.kysq.login.dao.LoginDao;
import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.team.dao.TeamDao;
import cn.cloud.kysq.team.dao.UserDao;
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
	@Autowired
	private UserDao userDao;

	/*
	 * 创建团队： 需要同时向 团队实体表(`team`) 和 团队成员表(`user_team_relationship`)插入记录
	 */
	@Transactional
	public boolean createTeam(User creator, Team team) {

		boolean insertTeam = teamDao.insertTeam(creator, team);
		Integer teamID = teamDao.selectTeamByTeamName(team.getTeamName()).getTeamID();
		String teamName = team.getTeamName();
		boolean insertUserToTeam = teamDao.insertUserToTeam(creator, teamName, String.valueOf(teamID));
		return insertTeam && insertUserToTeam;
	}

	/**
	 * 得到一个用户加入或创建的团队
	 */
	public List<Team> getAllTeamsByUser(User user) {
		List<Team> teamlist = teamDao.selectALLTeamsByUser(user);
		return teamlist;
	}

	/**
	 * 团队创建者处理相应的申请加入请求（同意，拒绝）
	 * 
	 * @return true：同意且操作成功 false：拒绝申请 或者 操作失败
	 */
	@Transactional
	public boolean handleJoinTeamRequest(String teamCreatorEmail, String fromUsername, String teamName, Boolean agree,
			String teamID) {
		if (agree) {
			// 1.将消息状态变为已处理
			boolean updateTeamJoinMsgStatus = teamDao.UpdateTeamJoinMsg(teamCreatorEmail, fromUsername, teamName);
			// 2.向user_team_relationship里插入一条记录
			User wantToUser = userDao.selectUserByUserName(fromUsername);
			boolean insertUserToTeamstatus = teamDao.insertUserToTeam(wantToUser, teamName, teamID);
			if (updateTeamJoinMsgStatus && insertUserToTeamstatus) {
				return true;
			} else {
				return false;
			}
		} else {
			boolean updateTeamJoinMsgStatus = teamDao.UpdateTeamJoinMsg(teamCreatorEmail, fromUsername, teamName);
			return false;
		}

	}

	/*
	 * 用户申请加入Team
	 */
	public boolean applyjoinTeam(String fromusername, String tousername, String msgcontent, String teamname) {

		System.out.printf("%s,%s,%s,%s", fromusername, tousername, msgcontent, teamname);
		boolean issuccess = teamDao.insertTeamJoinMsg(fromusername, tousername, msgcontent, teamname);
		return issuccess;
	}

	/*
	 * 通过团队名得到团队实体
	 */
	public Team getTeamByTeamName(String distTeamname) {
		Team team = teamDao.selectTeamByTeamName(distTeamname);
		return team;
	}

	/**
	 * 用户是否是团队创建者
	 * 
	 * @return
	 */
	public boolean isUserATeamCreator(Team currentTeam, User currentUser) {
		Team selectOneTeamCreatedByUser = teamDao.selectOneTeamCreatedByUser(currentUser, currentTeam);
		if (selectOneTeamCreatedByUser != null) {
			return true;
		} else {
			return false;
		}

	}

	public List<User> getAllJoinRequestByUserAndTeam(User currentUser, Team currentTeam) {
		List<User> applierNames = teamDao.selectAllWantToJoinTeamUserName(currentUser.getEmail(),
				currentTeam.getTeamName());
		return applierNames;
	}

	/**
	 * 解散团队
	 */
	@Transactional
	public boolean dissolveTeam(User currentUser, Team dissolveTeam) {

		boolean isCreator = isUserATeamCreator(dissolveTeam, currentUser);
		if (isCreator) {
			try {
				teamDao.deleteTeamByTeamID(String.valueOf(dissolveTeam.getTeamID()));
				teamDao.deleteUserandTeamRelationshipByTeamID(String.valueOf(dissolveTeam.getTeamID()));
				return true;
			} catch (Exception e) {
				return false;
			}

		} else {
			System.out.println("此用户没有权限解散团队");
			return false;
		}
	}

}
