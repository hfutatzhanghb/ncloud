package cn.cloud.kysq.task.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.team.entity.JoinTeamMsg;
import cn.cloud.kysq.team.entity.Team;
import cn.cloud.kysq.team.service.TeamService;

/**
 * 处理任务协作部分的controller
 * @author zhb
 *
 */
@Controller
@RequestMapping(value = "/task")
public class TaskController {

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
		if (userjoinedTeams == null) {
			System.out.println("加入的team空空如也");
		}
		for (Team team : userjoinedTeams) {
			System.out.println(team);
		}
		request.getSession().setAttribute("teams", userjoinedTeams);
		return "team-manager";
	}

	// 对应切换团队的请求
	@ResponseBody
	@RequestMapping(value = "/changeteam.do", method = RequestMethod.POST)
	public Map<String, String> changeteam(HttpServletRequest request, String distTeamname) {
		// long starttime = System.currentTimeMillis();
		Team team = teamService.getTeamByTeamName(distTeamname);
		Map<String, String> map = new HashMap<String, String>();
		if (team != null) {
			map.put("status", "success");
			map.put("currentteam", team.getTeamName());
			request.getSession().setAttribute("loginteam", team);
			System.out.println((Team) request.getSession().getAttribute("loginteam"));
		} else {
			map.put("status", "empty");
		}
		// System.out.println(System.currentTimeMillis()-starttime);
		return map;
	}

	// 对应搜索团队的请求
	@ResponseBody
	@RequestMapping(value = "/searchTeambyTeamName.do", method = RequestMethod.POST)
	public Map<String, Object> searchTeamByTeamName(@RequestParam(value = "teamname") String teamname) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("teamname:  " + teamname);
		Team team = teamService.getTeamByTeamName(teamname);
		if (team != null) {
			map.put("code", "success");
			map.put("team", team);
			return map;
		} else {
			map.put("code", "null");
			map.put("team", null);
			return map;
		}

	}

	// 对应用户申请加入团队的请求
	@ResponseBody
	@RequestMapping(value = "/applyJoinTeam.do", method = RequestMethod.POST)
	public Map<String, Object> applyJoinTeam(HttpServletRequest request, JoinTeamMsg joinTeamMsg) {
		Map<String, Object> map = new HashMap<String, Object>();
		String fromusername = ((User) request.getSession().getAttribute("user")).getUsername();
		boolean issuccess = teamService.applyjoinTeam(fromusername, joinTeamMsg.getTouseremail(),
				joinTeamMsg.getMsgcontent(), joinTeamMsg.getTeamname());
		if (issuccess) {
			map.put("code", "success");
			map.put("msg", "申请加入成功");
		} else {
			map.put("code", "failed");
			map.put("msg", "申请加入失败,网络错误或不能重复申请");
		}
		return map;
	}

	// 对应处理 用户申请加入团队的请求
	@ResponseBody
	@RequestMapping(value = "/handleJoinTeamRequest.do", method = RequestMethod.POST)
	public Map<String, Object> handleJoinTeamRequest(HttpServletRequest request, String agree,
			JoinTeamMsg joinTeamMsg) {
		Map<String, Object> map = new HashMap<String, Object>();
		Boolean agree1 = Boolean.valueOf(agree);
		String teamCreatorEmail = ((User) request.getSession().getAttribute("user")).getEmail();
		boolean issuccess = teamService.handleJoinTeamRequest(teamCreatorEmail, joinTeamMsg.getFromusername(),
				joinTeamMsg.getTeamname(), agree1);
		if (issuccess) {
			map.put("code", "success");
			map.put("msg", "已同意");
		} else {
			map.put("code", "failed");
			map.put("msg", "已拒绝");

		}
		return map;
	}

}
