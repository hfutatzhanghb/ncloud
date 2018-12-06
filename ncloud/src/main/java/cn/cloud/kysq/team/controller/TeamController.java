package cn.cloud.kysq.team.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.team.entity.Team;
import cn.cloud.kysq.team.service.TeamService;

@Controller
@RequestMapping(value = "/team")
public class TeamController {

	@Autowired
	private TeamService teamService;

	// 对应创建团队的请求
	@RequestMapping(value = "/createteam.do")
	public String createteam(HttpServletRequest request, Team team) {
		User currentuser = (User) request.getSession().getAttribute("user");
		System.out.println(team.getTeamName());
		teamService.createTeam(currentuser, team);
		List<Team> teamlist = teamService.getAllTeamsByUser(currentuser);
		request.getSession().setAttribute("teams", teamlist);
		return "team-manager";
	}

	// 对应团队管理链接的请求
	@RequestMapping(value = "/getuserjoinedteams.do")
	public String getuserTeams(HttpServletRequest request) {
		User currentUser = (User) request.getSession().getAttribute("user");
		List<Team> userjoinedTeams = teamService.getAllTeamsByUser(currentUser);
		if (userjoinedTeams==null) {
			System.out.println("空空如也");
		}
		for (Team team : userjoinedTeams) {
			System.out.println(team);
		}
		request.getSession().setAttribute("teams", userjoinedTeams);
		return "team-manager";
	}

}
