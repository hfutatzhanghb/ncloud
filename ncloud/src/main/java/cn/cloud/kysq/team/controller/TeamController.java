package cn.cloud.kysq.team.controller;

import static org.hamcrest.CoreMatchers.nullValue;

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

import com.alibaba.fastjson.JSONArray;

import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.team.entity.JoinTeamMsg;
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
		Team team = teamService.getTeamByTeamName1(distTeamname);
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

	// 对应模糊搜索团队的请求
	@ResponseBody
	@RequestMapping(value = "/searchTeambyBlurTeamName.do", method = RequestMethod.POST)
	public Map<String, Object> searchTeamByBluerTeamName(@RequestParam(value = "teamname") String teamname) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("teamname:  " + teamname);
		// Team team = teamService.getTeamByTeamName(teamname);
		List<String> team = teamService.getTeamByBlurSearch(teamname);

		if (team != null) {
			map.put("code", "success");
			map.put("name", team);
			return map;
		} else {
			map.put("code", "failed");
			map.put("name", "");
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

	// 对应用户申请加入团队的请求
	@ResponseBody
	@RequestMapping(value = "/applyJoinTeamRequest.do", method = RequestMethod.POST)
	public Map<String, Object> applyJoinTeamRequest(HttpServletRequest request,
			@RequestParam("tousername") String tousername, JoinTeamMsg joinTeamMsg) {
		Map<String, Object> map = new HashMap<String, Object>();
		String fromusername = ((User) request.getSession().getAttribute("user")).getUsername();
		String touserEmail = teamService.getUserEmailByUserName(tousername);
		joinTeamMsg.setTouseremail(touserEmail);
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

	// 分页获得已经存在的科研团队
	@ResponseBody
	@RequestMapping(value = "/getexistedTeamListPagination.do",method = RequestMethod.GET)
	public Object getexistedTeamListPagination(String currentpage, String pagesize) {
		Integer pageNumber = currentpage == null ? -1 : Integer.parseInt(currentpage);
		Integer pageSize = pagesize == null ? -1 : Integer.parseInt(pagesize);
		Object teamListJson = teamService.getTeamListByPagination(pageNumber, pageSize);
		System.out.println(teamListJson);
		return teamListJson;
	}
	
	
	// 对应搜索团队的请求
	@ResponseBody
	@RequestMapping(value = "/searchTeambyTeamName.do", method = RequestMethod.POST)
	public Object searchTeamByTeamName(@RequestParam(value = "teamname") String teamname) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("teamname:  " + teamname);
		// Team team = teamService.getTeamByTeamName(teamname);
		Object teamlistJSON = teamService.getTeamByTeamName(teamname);
		System.out.println(teamlistJSON);
		if (teamlistJSON != null) {
			map.put("code", "success");
			map.put("data", teamlistJSON);
			return map;
		} else {
			map.put("code", "null");
			map.put("data", null);
			return map;
		}

	}
	// 对应获得申请加入团队的请求列表
	@RequestMapping(value = "/getallJoinRequest.do")
	public String getallJoinRequest(HttpServletRequest request) {
		User currentUser = (User) request.getSession().getAttribute("user");
		Team currentTeam = (Team) request.getSession().getAttribute("loginteam");
		Map<String, Object> map = new HashMap<String, Object>();
		boolean userIsTeamCreator = teamService.isUserATeamCreator(currentTeam, currentUser);
		if (userIsTeamCreator) {
			List<User> applierName = teamService.getAllJoinRequestByUserAndTeam(currentUser, currentTeam);
			request.getSession().setAttribute("isCreator", true);
			request.getSession().setAttribute("requestUserNames", applierName);
			// map.put("code", "success");
			// map.put("msg", JSONArray.toJSON(applierName));
			System.out.println(JSONArray.toJSON(applierName));
		} else {
			// 不是团队创建者
			request.getSession().setAttribute("isCreator", false);
			// map.put("code", "failed");
			// map.put("msg", "您没有权限处理此请求");
		}
		return "team/team-joinrequest-manage";
	}

	// 对应处理 用户申请加入团队的请求
	@ResponseBody
	@RequestMapping(value = "/handleJoinTeamRequest.do", method = RequestMethod.POST)
	public Map<String, Object> handleJoinTeamRequest(HttpServletRequest request, String agree,
			JoinTeamMsg joinTeamMsg) {

		Map<String, Object> map = new HashMap<String, Object>();
		Boolean agree1 = Boolean.valueOf(agree);
		String teamCreatorEmail = ((User) request.getSession().getAttribute("user")).getEmail();
		System.out.println(joinTeamMsg);
		String teamID = String.valueOf(((Team) (request.getSession().getAttribute("loginteam"))).getTeamID());
		System.out.println("fromusername:" + joinTeamMsg.getFromusername() + " teamname:" + joinTeamMsg.getTeamname()
				+ " teamCreatorEmail:" + teamCreatorEmail);
		boolean issuccess = teamService.handleJoinTeamRequest(teamCreatorEmail, joinTeamMsg.getFromusername(),
				joinTeamMsg.getTeamname(), agree1, teamID);
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
