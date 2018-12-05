package cn.cloud.kysq.team.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.team.entity.Team;
import cn.cloud.kysq.team.service.ITeamService;

@Controller
@RequestMapping(value = "/team")
public class TeamController {

	@Autowired
	private ITeamService teamService;

	// 此controller对应根root级的目录和文件请求
	@RequestMapping(value = "/createteam.do")
	public String getFirstLevelFile(HttpServletRequest request, Team team) {
		User currentuser = (User) request.getSession().getAttribute("user");
		System.out.println(team.getTeamName());
		teamService.createTeam(currentuser, team);
		List<Team> teamlist = teamService.getAllTeamsByUser(currentuser);
		request.getSession().setAttribute("teams", teamlist);
		return "team-manager";
	}

}
